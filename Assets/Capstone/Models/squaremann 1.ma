//Maya ASCII 2017 scene
//Name: squaremann 1.ma
//Last modified: Sat, Feb 10, 2018 07:05:50 PM
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
	rename -uid "5ACA7EC3-4515-FB08-76C6-01A2B705BEBA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0867641914217763 3.9591879776865673 18.787149798319867 ;
	setAttr ".r" -type "double3" -4.5383527289863874 -9.7999999999988567 -5.0432076883438836e-017 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-016 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".rpt" -type "double3" 4.1715808741888065e-016 -2.9168210508847731e-016 
		4.4446061747327893e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5732CC97-4F12-1688-42FB-989802EE750C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 17.157302428441721;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.063625379002665433 3.7596814865210897 -2.7755575615628914e-017 ;
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
	setAttr ".t" -type "double3" 0.031371558117732068 0.7372316157666946 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B6E82A55-488F-3A3F-61BE-1AA980ED3A42";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 16.599114545766504;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
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
createNode transform -n "polySurface40";
	rename -uid "86B2D823-4DDC-7D23-C8D1-C8BD0C5455A3";
	setAttr ".rp" -type "double3" 0.019970417022705078 2.5964825749397278 0.074936419725418091 ;
	setAttr ".sp" -type "double3" 0.019970417022705078 2.5964825749397278 0.074936419725418091 ;
createNode transform -n "polySurface41" -p "polySurface40";
	rename -uid "347AA865-4358-2F8B-3F2B-88B1E3C0F470";
createNode transform -n "transform38" -p "polySurface41";
	rename -uid "E12C2A7D-4F41-5CCB-9E5A-6F8AA99A9C21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform38";
	rename -uid "DAFEB306-4E4B-A90A-7088-2EAF11450654";
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
createNode transform -n "polySurface42" -p "polySurface40";
	rename -uid "426071C9-4B18-28F8-E361-C5BA9FE61315";
createNode transform -n "transform39" -p "polySurface42";
	rename -uid "3D8C982C-4E60-9267-08BC-C08ACECC39DC";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform39";
	rename -uid "B86171D4-4259-FD85-9480-8D8CFF42AD38";
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
createNode transform -n "polySurface43" -p "polySurface40";
	rename -uid "DF66BE99-4AA6-3711-D241-05A3F66D36E7";
createNode transform -n "transform43" -p "|polySurface40|polySurface43";
	rename -uid "95D5CC80-4053-CCCF-DE1B-6D842A4086D1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform43";
	rename -uid "62FDC20C-42FE-30F0-00A3-958B7B63118F";
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
createNode transform -n "polySurface44" -p "polySurface40";
	rename -uid "F67EA467-4315-C4C8-46D1-4388AE7ABF0D";
createNode transform -n "transform40" -p "polySurface44";
	rename -uid "B42D5FDA-4FB9-BB84-2292-44831479CFBC";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform40";
	rename -uid "2149606E-426E-671F-FC97-4BA4854535D5";
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
createNode transform -n "polySurface45" -p "polySurface40";
	rename -uid "9A6305F7-4F36-7E06-C703-048B306C26F8";
createNode transform -n "transform42" -p "polySurface45";
	rename -uid "CD4E716D-49B0-3D8E-E529-019E717DDA55";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform42";
	rename -uid "8450602C-45A7-E6EF-2A67-2686042B098A";
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
createNode transform -n "polySurface46" -p "polySurface40";
	rename -uid "536DF4AF-487F-BA6F-2F5E-C1A1D63228E5";
createNode transform -n "transform41" -p "polySurface46";
	rename -uid "D9835A10-4EF6-410F-8F60-B8880ACA042C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform41";
	rename -uid "2BD37401-4C23-AAE5-1D90-DEB558EA60E5";
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
createNode transform -n "polySurface47" -p "polySurface40";
	rename -uid "6687FAD6-4A72-4F63-8A47-5D8780F2E3FA";
createNode transform -n "transform24" -p "polySurface47";
	rename -uid "474DE2A7-4870-0688-B32F-4290729B3389";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform24";
	rename -uid "EEBE0CA7-4ED2-88ED-80A1-5B815B05D9C1";
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
createNode transform -n "polySurface48" -p "polySurface40";
	rename -uid "74DFC22E-4393-55B5-A091-0FBE6FF2B17F";
createNode transform -n "transform25" -p "polySurface48";
	rename -uid "4E7E9351-417D-E02C-88A2-B3B77A3BE93B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform25";
	rename -uid "58292B5E-4444-C604-5AFD-01A4F99DED23";
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
createNode transform -n "polySurface49" -p "polySurface40";
	rename -uid "A301AF58-4D8A-B5DB-CA90-E6B9D4C6290A";
createNode transform -n "transform26" -p "polySurface49";
	rename -uid "2FDACD05-4E9E-8800-7F20-0F9CABAD43A2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform26";
	rename -uid "DCEC5F3B-4E6A-E054-E7D6-1FBB3183FA75";
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
createNode transform -n "polySurface50" -p "polySurface40";
	rename -uid "3B2A799A-4BCB-94B6-95DE-7A89469708B5";
createNode transform -n "transform21" -p "polySurface50";
	rename -uid "F2A80C4E-4CBE-B93D-5F46-028F7131C637";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform21";
	rename -uid "68F1E4F4-4A30-C79C-9307-8193FBA66B17";
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
createNode transform -n "polySurface51" -p "polySurface40";
	rename -uid "147408E1-4582-2637-250F-B288AA87D8A7";
createNode transform -n "transform22" -p "polySurface51";
	rename -uid "D8FC798C-40EE-3C57-2D29-1388C486BF98";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform22";
	rename -uid "3AC28BB4-42CD-6ECE-9EAB-E2ABD5EAD2D2";
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
createNode transform -n "polySurface52" -p "polySurface40";
	rename -uid "381440C7-4572-84CB-5DDE-C29361FC74AD";
createNode transform -n "transform23" -p "polySurface52";
	rename -uid "096BCFD8-483B-2871-6896-EE9E48DA0C6E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform23";
	rename -uid "F0394C39-4D7E-6FEE-DDAB-BCBFB7955F0D";
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
createNode transform -n "polySurface53" -p "polySurface40";
	rename -uid "47F363D6-47FC-2646-CAAA-1AAC762039CE";
createNode transform -n "transform35" -p "polySurface53";
	rename -uid "ACC195C3-4221-7BCA-8D6B-738E717870B6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform35";
	rename -uid "AA817F3C-45A1-6909-F1C8-CA9B3CA78D0D";
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
createNode transform -n "polySurface54" -p "polySurface40";
	rename -uid "45FF93F3-4213-C5BE-8234-C788F0EF7DA6";
createNode transform -n "transform36" -p "polySurface54";
	rename -uid "A83AC62F-4610-02FE-C845-3998EA76841B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform36";
	rename -uid "41DA6381-44DE-6CB5-F073-D1B9E707AF8A";
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
createNode transform -n "polySurface55" -p "polySurface40";
	rename -uid "376274CD-47E5-184D-A7C8-4893A87DC8C8";
createNode transform -n "transform37" -p "polySurface55";
	rename -uid "2B5F679C-4F99-E6DA-EEA9-5B852AE79B9D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform37";
	rename -uid "F7CAF774-4E3E-5A58-0D2E-D69A8D50FD7E";
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
createNode transform -n "polySurface56" -p "polySurface40";
	rename -uid "048BECCD-41F5-075E-924B-C8BDFDAE5BA9";
createNode transform -n "transform2" -p "polySurface56";
	rename -uid "E7688F91-4DAD-0221-D33B-5A896712FEC8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform2";
	rename -uid "709F0C59-46FE-C54B-F355-4288AC5816E0";
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
createNode transform -n "polySurface57" -p "polySurface40";
	rename -uid "9271E6AB-4A61-27C0-AAD5-3C98519FA19D";
createNode transform -n "transform3" -p "polySurface57";
	rename -uid "446C0EF0-47DB-74BF-0889-57A064AD1C94";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform3";
	rename -uid "2DA7A3F8-4751-42B4-03A9-5A887541AE70";
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
createNode transform -n "polySurface58" -p "polySurface40";
	rename -uid "88F3E318-48C7-923F-E7C6-70B3A4A79D2D";
createNode transform -n "transform4" -p "polySurface58";
	rename -uid "22E7B4DC-451D-55CA-A106-EA9EA95FD9AE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform4";
	rename -uid "71C1AD09-4976-1622-B35B-FEAF40DF44C1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 0 -1.8626451e-008 1.4901161e-008 
		0 -1.8626451e-008 0 0 1.8626451e-008 1.4901161e-008 0 1.8626451e-008;
createNode transform -n "polySurface59" -p "polySurface40";
	rename -uid "EB586B70-4393-DFB8-2982-2C8ACC48A4F6";
createNode transform -n "transform32" -p "polySurface59";
	rename -uid "56FCC639-4B91-DFD2-5D51-E68DF6FB5FA0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform32";
	rename -uid "51FBAB4E-497C-81DA-E930-88B6BA8B4ED4";
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
createNode transform -n "polySurface60" -p "polySurface40";
	rename -uid "304C747B-446E-1915-6FE1-A89975DCAD1B";
createNode transform -n "transform33" -p "polySurface60";
	rename -uid "1F923048-41A4-E42D-062E-F6886A529810";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform33";
	rename -uid "D020F547-46C4-970B-8AA3-A686DEB33620";
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
createNode transform -n "polySurface61" -p "polySurface40";
	rename -uid "8A07A47F-4D2A-C4F0-3E23-7C9F192F26DC";
createNode transform -n "transform34" -p "polySurface61";
	rename -uid "B8D49DD5-4B32-FF8D-C2B5-A8ABA7A2B01F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform34";
	rename -uid "7A565EF9-4BDF-2A0C-0237-BFB2B1669051";
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
createNode transform -n "polySurface62" -p "polySurface40";
	rename -uid "7338FA56-4FBA-0AE0-0E55-47827D38D51B";
createNode transform -n "transform29" -p "polySurface62";
	rename -uid "7AC9DC62-44DC-4666-813D-5EBCDC77CAC5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform29";
	rename -uid "509F7120-419A-7A3E-437E-F08F8980DC62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  3.7252903e-009 0 -1.1175871e-008 
		1.8626451e-008 0 -1.1175871e-008 3.7252903e-009 0 1.1175871e-008 1.8626451e-008 0 
		1.1175871e-008;
createNode transform -n "polySurface63" -p "polySurface40";
	rename -uid "B7495DB6-4147-08E1-DB85-C3BB7F3BEBD3";
createNode transform -n "transform30" -p "polySurface63";
	rename -uid "8121872C-4E31-5613-2D20-7D9C04713AAA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform30";
	rename -uid "7CC64632-4B5A-DF45-BA7B-F0915057A023";
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
createNode transform -n "polySurface64" -p "polySurface40";
	rename -uid "F93E8248-4CCE-11A4-50E4-0B8E80B2777C";
createNode transform -n "transform31" -p "polySurface64";
	rename -uid "3384B15F-45FE-697E-0A00-FFAB7014B466";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform31";
	rename -uid "93E4B18D-4007-496B-695A-0CA60DA1B9ED";
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
createNode transform -n "polySurface65" -p "polySurface40";
	rename -uid "1558C805-418C-E390-1C9B-0B9CAF0D824C";
createNode transform -n "transform5" -p "polySurface65";
	rename -uid "3C0CE63D-4C75-5FE6-0790-9A841CD97B49";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform5";
	rename -uid "374C069C-49A7-BB87-3D98-8FBDCD6170F6";
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
createNode transform -n "polySurface66" -p "polySurface40";
	rename -uid "3B874753-4458-C508-1A9F-4CBD28864894";
createNode transform -n "transform6" -p "polySurface66";
	rename -uid "64BBEA94-42EB-787A-245D-749F1C7231D0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform6";
	rename -uid "32D2232B-49C2-CFE6-8A2B-F99E983A53E6";
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
createNode transform -n "polySurface67" -p "polySurface40";
	rename -uid "D1F61D5C-485D-46FC-F9E1-38B63100E0C6";
createNode transform -n "transform7" -p "polySurface67";
	rename -uid "8C164D36-485A-318E-4CB0-7A8C43034699";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform7";
	rename -uid "EE48E96E-4E1B-9A7C-1E32-43893C9EB5A1";
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
createNode transform -n "polySurface68" -p "polySurface40";
	rename -uid "5FE829D9-48DC-95AC-36EA-78BBC8CB7DC4";
createNode transform -n "transform11" -p "polySurface68";
	rename -uid "85816916-4957-3D7F-5A67-54B975B6E3C5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform11";
	rename -uid "74C82ED1-45D4-FBF7-3C37-92B6E9A74770";
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
createNode transform -n "polySurface69" -p "polySurface40";
	rename -uid "7052216F-48B9-A8CE-56F2-A79E66D35EDF";
createNode transform -n "transform12" -p "polySurface69";
	rename -uid "B2434463-4FB2-3D61-25C8-A4BA65778918";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform12";
	rename -uid "1D53EE10-415A-3D53-F386-03B9FF546829";
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
createNode transform -n "polySurface70" -p "polySurface40";
	rename -uid "0E9E815E-47F8-1DFE-5A61-DFBDE031831A";
createNode transform -n "transform13" -p "polySurface70";
	rename -uid "26E25F20-4C29-F6AB-48B1-89A59AF15911";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform13";
	rename -uid "3002ADA4-46D1-8E69-70AF-858F06D0B833";
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
createNode transform -n "polySurface71" -p "polySurface40";
	rename -uid "964B7F9A-4824-F6DF-C857-19BCE7E7E39C";
createNode transform -n "transform14" -p "polySurface71";
	rename -uid "42A28C7A-4F6D-DA85-E5A8-098F38222F32";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform14";
	rename -uid "BD7B520A-4808-5295-D56B-B28D758BECC6";
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
createNode transform -n "polySurface72" -p "polySurface40";
	rename -uid "50042C02-4675-26DB-4B30-309F9DD100CB";
createNode transform -n "transform8" -p "polySurface72";
	rename -uid "268D8EC5-4721-C2EE-BD28-14BEE8375209";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform8";
	rename -uid "D80901C8-4845-CF5D-6115-1CA148DC4A63";
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
createNode transform -n "polySurface73" -p "polySurface40";
	rename -uid "5A4ADC6D-4A6E-E4D1-3136-CDA305DEDCCF";
createNode transform -n "transform9" -p "polySurface73";
	rename -uid "05E97644-4B9A-18AD-D593-FEA48A993732";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform9";
	rename -uid "5AC1A3D6-46A8-F833-F90E-298F1B86DA90";
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
createNode transform -n "polySurface74" -p "polySurface40";
	rename -uid "2E94D023-4A11-4779-3DCD-A18D6856170F";
createNode transform -n "transform10" -p "polySurface74";
	rename -uid "DD760018-4B72-EF79-BE6F-25BFEB56205D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform10";
	rename -uid "B4513F67-4F60-8880-EEEF-3F9DE360614D";
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
createNode transform -n "polySurface75" -p "polySurface40";
	rename -uid "1276478B-4F8A-D34D-2D74-BC9F688ECBB2";
createNode transform -n "transform15" -p "polySurface75";
	rename -uid "C71A8A8E-4E82-8792-0B42-7B93CFA3534E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform15";
	rename -uid "08BF9E08-4A8A-52DC-6D40-EE9A3399E75E";
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
createNode transform -n "polySurface76" -p "polySurface40";
	rename -uid "5954ED76-4DE6-C10D-AF4D-8195D7602B64";
createNode transform -n "transform16" -p "polySurface76";
	rename -uid "57FFBA78-4528-DC15-A744-5BABF2AF2ABB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform16";
	rename -uid "33D85BCB-41C4-6D5F-E316-EC8CB6D6921C";
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
createNode transform -n "polySurface77" -p "polySurface40";
	rename -uid "3FE9727B-4614-4E68-0C4B-11BFF7FBD4E3";
createNode transform -n "transform17" -p "polySurface77";
	rename -uid "C989A50D-46E0-0BB4-D154-F2AC0EDE11AA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform17";
	rename -uid "4A18DC7F-4D9A-3E65-C9BB-7F86D28F782B";
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
createNode transform -n "polySurface78" -p "polySurface40";
	rename -uid "A83ACCBF-4494-3D53-9225-51BD5673010E";
createNode transform -n "transform18" -p "polySurface78";
	rename -uid "D00CFD38-43F1-F0A4-E4D6-D8B5B962AA9B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform18";
	rename -uid "7A3E3AFE-4CAB-6DBB-B7AD-E28638A45DD3";
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
createNode transform -n "polySurface79" -p "polySurface40";
	rename -uid "F3DC1B85-4106-18D9-B1E6-D0BC2D06B25C";
createNode transform -n "transform19" -p "polySurface79";
	rename -uid "246D8BBA-415B-9904-8513-608782AB619B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform19";
	rename -uid "4140316A-447D-2294-F4EB-119A15D706E1";
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
createNode transform -n "polySurface80" -p "polySurface40";
	rename -uid "87A33DD5-48F9-059E-675B-168BFDCCC854";
createNode transform -n "transform20" -p "polySurface80";
	rename -uid "4AAAE221-4341-0B13-BE57-E490935BBC79";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape40" -p "transform20";
	rename -uid "4AF6C826-46A8-CB88-DBC9-43A43B3DF343";
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
createNode transform -n "polySurface81" -p "polySurface40";
	rename -uid "07992D96-4226-329A-D2BA-92A981DE143F";
createNode transform -n "transform27" -p "polySurface81";
	rename -uid "E834B294-4B02-3A7E-99E1-62A4B9010765";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform27";
	rename -uid "1AFCD904-4951-DA48-1563-629E89571BDA";
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
createNode transform -n "polySurface82" -p "polySurface40";
	rename -uid "359741AB-4D0E-53C0-1F3B-7489432D39C2";
createNode transform -n "transform28" -p "polySurface82";
	rename -uid "44DDD84D-4046-2155-75F6-52B806683958";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform28";
	rename -uid "6D372799-42B1-14F9-3DA3-FE91601CC339";
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
createNode transform -n "transform1" -p "polySurface40";
	rename -uid "55524ACB-41C8-65F6-CEA0-4EA0547DB8B5";
	setAttr ".v" no;
createNode mesh -n "polySurface40Shape" -p "transform1";
	rename -uid "98A5BBF2-4CE0-91FC-A822-E180FEB02A0C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:251]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 588 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75
		 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875 0 0.125 0 0.125 0.25 0.375 0 0.375 0.25
		 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875
		 0.25 0.875 0 0.125 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25 0.625 0 0.375 0.5 0.625
		 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875 0 0.125 0 0.125 0.25 0.375
		 0 0.375 0.25 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1
		 0.625 1 0.875 0.25 0.875 0 0.125 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25 0.625
		 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875 0 0.125
		 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75
		 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875 0 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
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
		 0.375 1 0.875 0 0.875 0.25;
	setAttr ".uvst[0].uvsp[250:499]" 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
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
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
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
		 0.375 1;
	setAttr ".uvst[0].uvsp[500:587]" 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 336 ".vt";
	setAttr ".vt[0:165]"  -3.10200667 3.94977236 0.1037038 -3.10200667 3.73952913 0.1037038
		 -2.17679811 4.016327858 0.16936168 -2.17679811 3.67297363 0.16936168 -2.17679811 4.016327858 -0.16936168
		 -2.17679811 3.67297363 -0.16936168 -3.10200667 3.94977236 -0.1037038 -3.10200667 3.73952913 -0.1037038
		 -2.20324945 4.022089005 0.17504476 -2.20324945 3.66721249 0.17504476 -0.64156199 4.13442993 0.28587064
		 -0.64156199 3.55487156 0.28587064 -0.64156199 4.13442993 -0.28587064 -0.64156199 3.55487156 -0.28587064
		 -2.20324945 4.022089005 -0.17504476 -2.20324945 3.66721249 -0.17504476 2.24319005 3.62452292 0.17504476
		 2.24319005 3.97939897 0.17504476 0.68150258 3.51218176 0.28587064 0.68150258 4.091740131 0.28587064
		 0.68150258 3.51218176 -0.28587064 0.68150258 4.091740131 -0.28587064 2.24319005 3.62452292 -0.17504476
		 2.24319005 3.97939897 -0.17504476 3.14194751 3.69683933 0.1037038 3.14194751 3.90708256 0.1037038
		 2.21673894 3.63028359 0.16936168 2.21673894 3.9736383 0.16936168 2.21673894 3.63028359 -0.16936168
		 2.21673894 3.9736383 -0.16936168 3.14194751 3.69683933 -0.1037038 3.14194751 3.90708256 -0.1037038
		 0.27623144 -0.39461571 0.40537798 0.19794203 -0.39461571 0.40537798 0.27623144 -0.4729051 0.40537798
		 0.19794203 -0.4729051 0.40537798 0.27623144 -0.4729051 0.557235 0.19794203 -0.4729051 0.557235
		 0.27623144 -0.39461571 0.557235 0.19794203 -0.39461571 0.557235 0.18013448 -0.3900494 0.39652079
		 0.092712492 -0.3900494 0.39652079 0.18013448 -0.47747141 0.39652079 0.092712492 -0.47747141 0.39652079
		 0.18013448 -0.47747141 0.56609219 0.092712492 -0.47747141 0.56609219 0.18013448 -0.3900494 0.56609219
		 0.092712492 -0.3900494 0.56609219 0.36756831 -0.400951 0.41766649 0.3019495 -0.400951 0.41766649
		 0.36756831 -0.46656981 0.41766649 0.3019495 -0.46656981 0.41766649 0.36756831 -0.46656981 0.54494649
		 0.3019495 -0.46656981 0.54494649 0.36756831 -0.400951 0.54494649 0.3019495 -0.400951 0.54494649
		 -0.31911555 -0.400951 0.41766649 -0.38473436 -0.400951 0.41766649 -0.31911555 -0.46656981 0.41766649
		 -0.38473436 -0.46656981 0.41766649 -0.31911555 -0.46656981 0.54494649 -0.38473436 -0.46656981 0.54494649
		 -0.31911555 -0.400951 0.54494649 -0.38473436 -0.400951 0.54494649 -0.21845043 -0.39461571 0.40537798
		 -0.29673982 -0.39461571 0.40537798 -0.21845043 -0.4729051 0.40537798 -0.29673982 -0.4729051 0.40537798
		 -0.21845043 -0.4729051 0.557235 -0.29673982 -0.4729051 0.557235 -0.21845043 -0.39461571 0.557235
		 -0.29673982 -0.39461571 0.557235 -0.10613292 -0.3900494 0.39652079 -0.19355491 -0.3900494 0.39652079
		 -0.10613292 -0.47747141 0.39652079 -0.19355491 -0.47747141 0.39652079 -0.10613292 -0.47747141 0.56609219
		 -0.19355491 -0.47747141 0.56609219 -0.10613292 -0.3900494 0.56609219 -0.19355491 -0.3900494 0.56609219
		 4.13671923 3.77358985 0.028222181 4.13671923 3.83080602 0.028222181 3.88493109 3.75547719 0.046090458
		 3.88493109 3.84891868 0.046090458 3.88493109 3.75547719 -0.046090458 3.88493109 3.84891868 -0.046090458
		 4.13671923 3.77358985 -0.028222181 4.13671923 3.83080602 -0.028222181 -0.30032501 -0.41587377 0.051975053
		 -0.19495362 -0.41587377 0.051975053 -0.33368185 0.0478293 0.084881961 -0.16159678 0.0478293 0.084881961
		 -0.33368185 0.0478293 -0.084881961 -0.16159678 0.0478293 -0.084881961 -0.30032501 -0.41587377 -0.051975053
		 -0.19495362 -0.41587377 -0.051975053 4.13671923 3.67914724 0.028222181 4.13671923 3.73636341 0.028222181
		 3.88493109 3.66103458 0.046090458 3.88493109 3.75447607 0.046090458 3.88493109 3.66103458 -0.046090458
		 3.88493109 3.75447607 -0.046090458 4.13671923 3.67914724 -0.028222181 4.13671923 3.73636341 -0.028222181
		 -0.13669454 4.25343275 0.13669454 0.13669454 4.25343275 0.13669454 -0.13669454 4.66300344 0.13669454
		 0.13669454 4.66300344 0.13669454 -0.13669454 4.66300344 -0.13669454 0.13669454 4.66300344 -0.13669454
		 -0.13669454 4.25343275 -0.13669454 0.13669454 4.25343275 -0.13669454 -0.55041617 4.60866165 0.55041617
		 0.55041617 4.60866165 0.55041617 -0.55041617 5.70949364 0.55041617 0.55041617 5.70949364 0.55041617
		 -0.55041617 5.70949364 -0.55041617 0.55041617 5.70949364 -0.55041617 -0.55041617 4.60866165 -0.55041617
		 0.55041617 4.60866165 -0.55041617 -0.48680019 1.96159351 0.50382304 0.48680019 1.96159351 0.50382304
		 -0.79840875 3.97509527 0.82632822 0.79840875 3.97509527 0.82632822 -0.79840875 3.97509527 -0.82632822
		 0.79840875 3.97509527 -0.82632822 -0.48680019 1.96159351 -0.50382304 0.48680019 1.96159351 -0.50382304
		 -0.33428931 0.040148258 0.081358291 -0.16899624 0.038278699 0.081132725 -0.3783173 0.76809573 0.13363597
		 -0.10837243 0.76504254 0.1332676 -0.37867826 0.76831329 -0.13268471 -0.1087334 0.7652601 -0.13305308
		 -0.33451033 0.040281415 -0.081715606 -0.16921729 0.038411856 -0.081941172 -0.3791059 0.76966345 0.1296933
		 -0.11617273 0.76966345 0.1296933 -0.46234119 1.92674124 0.21180587 -0.032937452 1.92674124 0.21180587
		 -0.46234119 1.92674124 -0.21180587 -0.032937452 1.92674124 -0.21180587 -0.3791059 0.76966345 -0.1296933
		 -0.11617273 0.76966345 -0.1296933 0.17876494 -0.41587377 0.051975053 0.28413633 -0.41587377 0.051975053
		 0.14540809 0.0478293 0.084881961 0.31749317 0.0478293 0.084881961 0.14540809 0.0478293 -0.084881961
		 0.31749317 0.0478293 -0.084881961 0.17876494 -0.41587377 -0.051975053 0.28413633 -0.41587377 -0.051975053
		 -0.40375882 -0.51652849 0.45463395 -0.085928544 -0.51652849 0.45463395 -0.40375882 -0.35595381 0.45463395
		 -0.085928544 -0.35595381 0.45463395 -0.40375882 -0.35595381 -0.15699075 -0.085928544 -0.35595381 -0.15699075
		 -0.40375882 -0.51652849 -0.15699075 -0.085928544 -0.51652849 -0.15699075 0.14480063 0.040148258 0.081358291
		 0.3100937 0.038278699 0.081132725 0.10077266 0.76809573 0.13363597 0.37071753 0.76504254 0.1332676
		 0.1004117 0.76831329 -0.13268471 0.37035656 0.7652601 -0.13305308;
	setAttr ".vt[166:331]" 0.14457962 0.040281415 -0.081715606 0.30987266 0.038411856 -0.081941172
		 0.09998405 0.76966345 0.1296933 0.36291721 0.76966345 0.1296933 0.016748771 1.92674124 0.21180587
		 0.44615251 1.92674124 0.21180587 0.016748771 1.92674124 -0.21180587 0.44615251 1.92674124 -0.21180587
		 0.09998405 0.76966345 -0.1296933 0.36291721 0.76966345 -0.1296933 0.30130869 1.71825528 -0.31184512
		 -0.30130869 1.71825528 -0.31184512 0.49418119 1.97072434 -0.51146215 -0.49418119 1.97072434 -0.51146215
		 0.49418119 1.97072434 0.51146215 -0.49418119 1.97072434 0.51146215 0.30130869 1.71825528 0.31184512
		 -0.30130869 1.71825528 0.31184512 4.28014994 3.69084787 0.016679335 4.28014994 3.72466278 0.016679335
		 4.13134241 3.68014336 0.027239503 4.13134241 3.7353673 0.027239503 4.13134241 3.68014336 -0.027239503
		 4.13134241 3.7353673 -0.027239503 4.28014994 3.69084787 -0.016679335 4.28014994 3.72466278 -0.016679335
		 3.93906331 4.08082819 0.028222181 3.89886236 4.12154102 0.028222181 3.77262497 3.89102888 0.046090458
		 3.70697165 3.95751858 0.046090458 3.77262497 3.89102888 -0.046090458 3.70697165 3.95751858 -0.046090458
		 3.93906331 4.08082819 -0.028222181 3.89886236 4.12154102 -0.028222181 4.28014994 3.88118148 0.016679335
		 4.28014994 3.91499639 0.016679335 4.13134241 3.87047696 0.027239503 4.13134241 3.9257009 0.027239503
		 4.13134241 3.87047696 -0.027239503 4.13134241 3.9257009 -0.027239503 4.28014994 3.88118148 -0.016679335
		 4.28014994 3.91499639 -0.016679335 -4.09677887 3.96746397 0.028222181 -4.09677887 3.91024828 0.028222181
		 -3.84499025 3.98557663 0.046090458 -3.84499025 3.89213562 0.046090458 -3.84499025 3.98557663 -0.046090458
		 -3.84499025 3.89213562 -0.046090458 -4.09677887 3.96746397 -0.028222181 -4.09677887 3.91024828 -0.028222181
		 -4.2402091 3.76542997 0.016679335 -4.2402091 3.73161554 0.016679335 -4.091402054 3.77613449 0.027239503
		 -4.091402054 3.72091103 0.027239503 -4.091402054 3.77613449 -0.027239503 -4.091402054 3.72091103 -0.027239503
		 -4.2402091 3.76542997 -0.016679335 -4.2402091 3.73161554 -0.016679335 -4.2402091 3.86132097 0.016679335
		 -4.2402091 3.82750654 0.016679335 -4.091402054 3.87202549 0.027239503 -4.091402054 3.81680202 0.027239503
		 -4.091402054 3.87202549 -0.027239503 -4.091402054 3.81680202 -0.027239503 -4.2402091 3.86132097 -0.016679335
		 -4.2402091 3.82750654 -0.016679335 -4.2402091 3.95576334 0.016679335 -4.2402091 3.92194891 0.016679335
		 -4.091402054 3.96646786 0.027239503 -4.091402054 3.91124439 0.027239503 -4.091402054 3.96646786 -0.027239503
		 -4.091402054 3.91124439 -0.027239503 -4.2402091 3.95576334 -0.016679335 -4.2402091 3.92194891 -0.016679335
		 -4.09677887 3.8730216 0.028222181 -4.09677887 3.81580591 0.028222181 -3.84499025 3.89113426 0.046090458
		 -3.84499025 3.79769325 0.046090458 -3.84499025 3.89113426 -0.046090458 -3.84499025 3.79769325 -0.046090458
		 -4.09677887 3.8730216 -0.028222181 -4.09677887 3.81580591 -0.028222181 -3.79876804 4.14653969 0.028222181
		 -3.84303665 4.110291 0.028222181 -3.62523699 3.96320248 0.046090458 -3.69753361 3.9040041 0.046090458
		 -3.62523699 3.96320248 -0.046090458 -3.69753361 3.9040041 -0.046090458 -3.79876804 4.14653969 -0.028222181
		 -3.84303665 4.110291 -0.028222181 4.28014994 3.78529048 0.016679335 4.28014994 3.81910539 0.016679335
		 4.13134241 3.77458596 0.027239503 4.13134241 3.8298099 0.027239503 4.13134241 3.77458596 -0.027239503
		 4.13134241 3.8298099 -0.027239503 4.28014994 3.78529048 -0.016679335 4.28014994 3.81910539 -0.016679335
		 4.13671923 3.86948085 0.028222181 4.13671923 3.92669702 0.028222181 3.88493109 3.85136819 0.046090458
		 3.88493109 3.94480968 0.046090458 3.88493109 3.85136819 -0.046090458 3.88493109 3.94480968 -0.046090458
		 4.13671923 3.86948085 -0.028222181 4.13671923 3.92669702 -0.028222181 3.63304949 3.74601555 0.055190872
		 3.63304949 3.85790634 0.055190872 3.14065599 3.71059465 0.090133809 3.14065599 3.89332724 0.090133809
		 3.14065599 3.71059465 -0.090133809 3.14065599 3.89332724 -0.090133809 3.63304949 3.74601555 -0.055190872
		 3.63304949 3.85790634 -0.055190872 3.59877753 3.64629006 0.066890009 3.91820741 3.64629006 0.066890009
		 3.59877753 3.96571994 0.066890009 3.91820741 3.96571994 0.066890009 3.59877753 3.96571994 -0.066890009
		 3.91820741 3.96571994 -0.066890009 3.59877753 3.64629006 -0.066890009 3.91820741 3.64629006 -0.066890009
		 -0.060530767 5.15608025 0.97620106 0.060530767 5.15608025 0.97620106 -0.060530767 5.27714157 0.97620106
		 0.060530767 5.27714157 0.97620106 -0.060530767 5.27714157 0.51397049 0.060530767 5.27714157 0.51397049
		 -0.060530767 5.15608025 0.51397049 0.060530767 5.15608025 0.51397049 0.075331092 -0.51652849 0.45463395
		 0.39316139 -0.51652849 0.45463395 0.075331092 -0.35595381 0.45463395 0.39316139 -0.35595381 0.45463395
		 0.075331092 -0.35595381 -0.15699075 0.39316139 -0.35595381 -0.15699075 0.075331092 -0.51652849 -0.15699075
		 0.39316139 -0.51652849 -0.15699075 -0.48680019 4.37924814 -0.50382304 0.48680019 4.37924814 -0.50382304
		 -0.79840875 3.97135401 -0.82632822 0.79840875 3.97135401 -0.82632822 -0.79840875 3.97135401 0.82632822
		 0.79840875 3.97135401 0.82632822 -0.48680019 4.37924814 0.50382304 0.48680019 4.37924814 0.50382304
		 -3.55883694 4.00032186508 0.066890009 -3.87826681 4.00032186508 0.066890009 -3.55883694 3.68089151 0.066890009
		 -3.87826681 3.68089151 0.066890009 -3.55883694 3.68089151 -0.066890009 -3.87826681 3.68089151 -0.066890009
		 -3.55883694 4.00032186508 -0.066890009 -3.87826681 4.00032186508 -0.066890009 -3.59310865 3.90059614 0.055190872
		 -3.59310865 3.78870535 0.055190872 -3.1007154 3.93601704 0.090133809 -3.1007154 3.75328445 0.090133809
		 -3.1007154 3.93601704 -0.090133809 -3.1007154 3.75328445 -0.090133809 -3.59310865 3.90059614 -0.055190872
		 -3.59310865 3.78870535 -0.055190872 -4.09677887 3.7771306 0.028222181 -4.09677887 3.71991491 0.028222181
		 -3.84499025 3.79524326 0.046090458 -3.84499025 3.70180225 0.046090458;
	setAttr ".vt[332:335]" -3.84499025 3.79524326 -0.046090458 -3.84499025 3.70180225 -0.046090458
		 -4.09677887 3.7771306 -0.028222181 -4.09677887 3.71991491 -0.028222181;
	setAttr -s 504 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:331]" 110 104 0 111 105 0 112 113 0 114 115 0 116 117 0 118 119 0
		 112 114 0 113 115 0 114 116 0 115 117 0 116 118 0 117 119 0 118 112 0 119 113 0 120 121 0
		 122 123 0 124 125 0 126 127 0 120 122 0 121 123 0 122 124 0 123 125 0 124 126 0 125 127 0
		 126 120 0 127 121 0 128 129 0 130 131 0 132 133 0 134 135 0 128 130 0 129 131 0 130 132 0
		 131 133 0 132 134 0 133 135 0 134 128 0 135 129 0 136 137 0 138 139 0 140 141 0 142 143 0
		 136 138 0 137 139 0 138 140 0 139 141 0 140 142 0 141 143 0 142 136 0 143 137 0 144 145 0
		 146 147 0 148 149 0 150 151 0 144 146 0 145 147 0 146 148 0 147 149 0 148 150 0 149 151 0
		 150 144 0 151 145 0 152 153 0 154 155 0 156 157 0 158 159 0 152 154 0 153 155 0 154 156 0
		 155 157 0 156 158 0 157 159 0 158 152 0 159 153 0 160 161 0 162 163 0 164 165 0 166 167 0
		 160 162 0 161 163 0 162 164 0 163 165 0 164 166 0 165 167 0 166 160 0 167 161 0 168 169 0
		 170 171 0 172 173 0 174 175 0 168 170 0 169 171 0 170 172 0 171 173 0 172 174 0 173 175 0
		 174 168 0 175 169 0 176 177 0 178 179 0 180 181 0 182 183 0 176 178 0 177 179 0 178 180 0
		 179 181 0 180 182 0 181 183 0 182 176 0 183 177 0 184 185 0 186 187 0 188 189 0 190 191 0
		 184 186 0 185 187 0 186 188 0 187 189 0 188 190 0 189 191 0 190 184 0 191 185 0 192 193 0
		 194 195 0 196 197 0 198 199 0 192 194 0 193 195 0 194 196 0 195 197 0 196 198 0 197 199 0
		 198 192 0 199 193 0 200 201 0 202 203 0 204 205 0 206 207 0 200 202 0 201 203 0 202 204 0
		 203 205 0 204 206 0 205 207 0 206 200 0 207 201 0 208 209 0 210 211 0 212 213 0 214 215 0
		 208 210 0 209 211 0 210 212 0 211 213 0 212 214 0 213 215 0 214 208 0 215 209 0 216 217 0
		 218 219 0 220 221 0 222 223 0 216 218 0 217 219 0 218 220 0 219 221 0;
	setAttr ".ed[332:497]" 220 222 0 221 223 0 222 216 0 223 217 0 224 225 0 226 227 0
		 228 229 0 230 231 0 224 226 0 225 227 0 226 228 0 227 229 0 228 230 0 229 231 0 230 224 0
		 231 225 0 232 233 0 234 235 0 236 237 0 238 239 0 232 234 0 233 235 0 234 236 0 235 237 0
		 236 238 0 237 239 0 238 232 0 239 233 0 240 241 0 242 243 0 244 245 0 246 247 0 240 242 0
		 241 243 0 242 244 0 243 245 0 244 246 0 245 247 0 246 240 0 247 241 0 248 249 0 250 251 0
		 252 253 0 254 255 0 248 250 0 249 251 0 250 252 0 251 253 0 252 254 0 253 255 0 254 248 0
		 255 249 0 256 257 0 258 259 0 260 261 0 262 263 0 256 258 0 257 259 0 258 260 0 259 261 0
		 260 262 0 261 263 0 262 256 0 263 257 0 264 265 0 266 267 0 268 269 0 270 271 0 264 266 0
		 265 267 0 266 268 0 267 269 0 268 270 0 269 271 0 270 264 0 271 265 0 272 273 0 274 275 0
		 276 277 0 278 279 0 272 274 0 273 275 0 274 276 0 275 277 0 276 278 0 277 279 0 278 272 0
		 279 273 0 280 281 0 282 283 0 284 285 0 286 287 0 280 282 0 281 283 0 282 284 0 283 285 0
		 284 286 0 285 287 0 286 280 0 287 281 0 288 289 0 290 291 0 292 293 0 294 295 0 288 290 0
		 289 291 0 290 292 0 291 293 0 292 294 0 293 295 0 294 288 0 295 289 0 296 297 0 298 299 0
		 300 301 0 302 303 0 296 298 0 297 299 0 298 300 0 299 301 0 300 302 0 301 303 0 302 296 0
		 303 297 0 304 305 0 306 307 0 308 309 0 310 311 0 304 306 0 305 307 0 306 308 0 307 309 0
		 308 310 0 309 311 0 310 304 0 311 305 0 312 313 0 314 315 0 316 317 0 318 319 0 312 314 0
		 313 315 0 314 316 0 315 317 0 316 318 0 317 319 0 318 312 0 319 313 0 320 321 0 322 323 0
		 324 325 0 326 327 0 320 322 0 321 323 0 322 324 0 323 325 0 324 326 0 325 327 0 326 320 0
		 327 321 0 328 329 0 330 331 0 332 333 0 334 335 0 328 330 0 329 331 0;
	setAttr ".ed[498:503]" 330 332 0 331 333 0 332 334 0 333 335 0 334 328 0 335 329 0;
	setAttr -s 252 -ch 1008 ".fc[0:251]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 52 49 -54 -49
		mu 0 4 56 57 58 59
		f 4 54 50 -56 -50
		mu 0 4 57 60 61 58
		f 4 56 51 -58 -51
		mu 0 4 60 62 63 61
		f 4 58 48 -60 -52
		mu 0 4 62 64 65 63
		f 4 53 55 57 59
		mu 0 4 59 58 66 67
		f 4 -57 -55 -53 -59
		mu 0 4 68 69 57 56
		f 4 64 61 -66 -61
		mu 0 4 70 71 72 73
		f 4 66 62 -68 -62
		mu 0 4 71 74 75 72
		f 4 68 63 -70 -63
		mu 0 4 74 76 77 75
		f 4 70 60 -72 -64
		mu 0 4 76 78 79 77
		f 4 65 67 69 71
		mu 0 4 73 72 80 81
		f 4 -69 -67 -65 -71
		mu 0 4 82 83 71 70
		f 4 76 73 -78 -73
		mu 0 4 84 85 86 87
		f 4 78 74 -80 -74
		mu 0 4 85 88 89 86
		f 4 80 75 -82 -75
		mu 0 4 88 90 91 89
		f 4 82 72 -84 -76
		mu 0 4 90 92 93 91
		f 4 77 79 81 83
		mu 0 4 87 86 94 95
		f 4 -81 -79 -77 -83
		mu 0 4 96 97 85 84
		f 4 88 85 -90 -85
		mu 0 4 98 99 100 101
		f 4 90 86 -92 -86
		mu 0 4 99 102 103 100
		f 4 92 87 -94 -87
		mu 0 4 102 104 105 103
		f 4 94 84 -96 -88
		mu 0 4 104 106 107 105
		f 4 89 91 93 95
		mu 0 4 101 100 108 109
		f 4 -93 -91 -89 -95
		mu 0 4 110 111 99 98
		f 4 100 97 -102 -97
		mu 0 4 112 113 114 115
		f 4 102 98 -104 -98
		mu 0 4 113 116 117 114
		f 4 104 99 -106 -99
		mu 0 4 116 118 119 117
		f 4 106 96 -108 -100
		mu 0 4 118 120 121 119
		f 4 101 103 105 107
		mu 0 4 115 114 122 123
		f 4 -105 -103 -101 -107
		mu 0 4 124 125 113 112
		f 4 112 109 -114 -109
		mu 0 4 126 127 128 129
		f 4 114 110 -116 -110
		mu 0 4 127 130 131 128
		f 4 116 111 -118 -111
		mu 0 4 130 132 133 131
		f 4 118 108 -120 -112
		mu 0 4 132 134 135 133
		f 4 113 115 117 119
		mu 0 4 129 128 136 137
		f 4 -117 -115 -113 -119
		mu 0 4 138 139 127 126
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 149 -146 -149
		mu 0 4 168 169 170 171
		f 4 145 151 -147 -151
		mu 0 4 171 170 172 173
		f 4 146 153 -148 -153
		mu 0 4 173 172 174 175
		f 4 147 155 -145 -155
		mu 0 4 175 174 176 177
		f 4 -156 -154 -152 -150
		mu 0 4 169 178 179 170
		f 4 154 148 150 152
		mu 0 4 180 168 171 181
		f 4 156 161 -158 -161
		mu 0 4 182 183 184 185
		f 4 157 163 -159 -163
		mu 0 4 185 184 186 187
		f 4 158 165 -160 -165
		mu 0 4 187 186 188 189
		f 4 159 167 -157 -167
		mu 0 4 189 188 190 191
		f 4 -168 -166 -164 -162
		mu 0 4 183 192 193 184
		f 4 166 160 162 164
		mu 0 4 194 182 185 195
		f 4 168 173 -170 -173
		mu 0 4 196 197 198 199
		f 4 169 175 -171 -175
		mu 0 4 199 198 200 201
		f 4 170 177 -172 -177
		mu 0 4 201 200 202 203
		f 4 171 179 -169 -179
		mu 0 4 203 202 204 205
		f 4 -180 -178 -176 -174
		mu 0 4 197 206 207 198
		f 4 178 172 174 176
		mu 0 4 208 196 199 209
		f 4 180 185 -182 -185
		mu 0 4 210 211 212 213
		f 4 181 187 -183 -187
		mu 0 4 213 212 214 215
		f 4 182 189 -184 -189
		mu 0 4 215 214 216 217
		f 4 183 191 -181 -191
		mu 0 4 217 216 218 219
		f 4 -192 -190 -188 -186
		mu 0 4 211 220 221 212
		f 4 190 184 186 188
		mu 0 4 222 210 213 223
		f 4 192 197 -194 -197
		mu 0 4 224 225 226 227
		f 4 193 199 -195 -199
		mu 0 4 227 226 228 229
		f 4 194 201 -196 -201
		mu 0 4 229 228 230 231
		f 4 195 203 -193 -203
		mu 0 4 231 230 232 233
		f 4 -204 -202 -200 -198
		mu 0 4 225 234 235 226
		f 4 202 196 198 200
		mu 0 4 236 224 227 237
		f 4 204 209 -206 -209
		mu 0 4 238 239 240 241
		f 4 205 211 -207 -211
		mu 0 4 241 240 242 243
		f 4 206 213 -208 -213
		mu 0 4 243 242 244 245
		f 4 207 215 -205 -215
		mu 0 4 245 244 246 247
		f 4 -216 -214 -212 -210
		mu 0 4 239 248 249 240
		f 4 214 208 210 212
		mu 0 4 250 238 241 251
		f 4 216 221 -218 -221
		mu 0 4 252 253 254 255
		f 4 217 223 -219 -223
		mu 0 4 255 254 256 257
		f 4 218 225 -220 -225
		mu 0 4 257 256 258 259
		f 4 219 227 -217 -227
		mu 0 4 259 258 260 261
		f 4 -228 -226 -224 -222
		mu 0 4 253 262 263 254
		f 4 226 220 222 224
		mu 0 4 264 252 255 265
		f 4 228 233 -230 -233
		mu 0 4 266 267 268 269
		f 4 229 235 -231 -235
		mu 0 4 269 268 270 271
		f 4 230 237 -232 -237
		mu 0 4 271 270 272 273
		f 4 231 239 -229 -239
		mu 0 4 273 272 274 275
		f 4 -240 -238 -236 -234
		mu 0 4 267 276 277 268
		f 4 238 232 234 236
		mu 0 4 278 266 269 279
		f 4 240 245 -242 -245
		mu 0 4 280 281 282 283
		f 4 241 247 -243 -247
		mu 0 4 283 282 284 285
		f 4 242 249 -244 -249
		mu 0 4 285 284 286 287
		f 4 243 251 -241 -251
		mu 0 4 287 286 288 289
		f 4 -252 -250 -248 -246
		mu 0 4 281 290 291 282
		f 4 250 244 246 248
		mu 0 4 292 280 283 293
		f 4 252 257 -254 -257
		mu 0 4 294 295 296 297
		f 4 253 259 -255 -259
		mu 0 4 297 296 298 299
		f 4 254 261 -256 -261
		mu 0 4 299 298 300 301
		f 4 255 263 -253 -263
		mu 0 4 301 300 302 303
		f 4 -264 -262 -260 -258
		mu 0 4 295 304 305 296
		f 4 262 256 258 260
		mu 0 4 306 294 297 307
		f 4 264 269 -266 -269
		mu 0 4 308 309 310 311
		f 4 265 271 -267 -271
		mu 0 4 311 310 312 313
		f 4 266 273 -268 -273
		mu 0 4 313 312 314 315
		f 4 267 275 -265 -275
		mu 0 4 315 314 316 317
		f 4 -276 -274 -272 -270
		mu 0 4 309 318 319 310
		f 4 274 268 270 272
		mu 0 4 320 308 311 321
		f 4 276 281 -278 -281
		mu 0 4 322 323 324 325
		f 4 277 283 -279 -283
		mu 0 4 325 324 326 327
		f 4 278 285 -280 -285
		mu 0 4 327 326 328 329
		f 4 279 287 -277 -287
		mu 0 4 329 328 330 331
		f 4 -288 -286 -284 -282
		mu 0 4 323 332 333 324
		f 4 286 280 282 284
		mu 0 4 334 322 325 335
		f 4 288 293 -290 -293
		mu 0 4 336 337 338 339
		f 4 289 295 -291 -295
		mu 0 4 339 338 340 341
		f 4 290 297 -292 -297
		mu 0 4 341 340 342 343
		f 4 291 299 -289 -299
		mu 0 4 343 342 344 345
		f 4 -300 -298 -296 -294
		mu 0 4 337 346 347 338
		f 4 298 292 294 296
		mu 0 4 348 336 339 349
		f 4 300 305 -302 -305
		mu 0 4 350 351 352 353
		f 4 301 307 -303 -307
		mu 0 4 353 352 354 355
		f 4 302 309 -304 -309
		mu 0 4 355 354 356 357
		f 4 303 311 -301 -311
		mu 0 4 357 356 358 359
		f 4 -312 -310 -308 -306
		mu 0 4 351 360 361 352
		f 4 310 304 306 308
		mu 0 4 362 350 353 363
		f 4 312 317 -314 -317
		mu 0 4 364 365 366 367
		f 4 313 319 -315 -319
		mu 0 4 367 366 368 369
		f 4 314 321 -316 -321
		mu 0 4 369 368 370 371
		f 4 315 323 -313 -323
		mu 0 4 371 370 372 373
		f 4 -324 -322 -320 -318
		mu 0 4 365 374 375 366
		f 4 322 316 318 320
		mu 0 4 376 364 367 377
		f 4 324 329 -326 -329
		mu 0 4 378 379 380 381
		f 4 325 331 -327 -331
		mu 0 4 381 380 382 383
		f 4 326 333 -328 -333
		mu 0 4 383 382 384 385
		f 4 327 335 -325 -335
		mu 0 4 385 384 386 387
		f 4 -336 -334 -332 -330
		mu 0 4 379 388 389 380
		f 4 334 328 330 332
		mu 0 4 390 378 381 391
		f 4 336 341 -338 -341
		mu 0 4 392 393 394 395
		f 4 337 343 -339 -343
		mu 0 4 395 394 396 397
		f 4 338 345 -340 -345
		mu 0 4 397 396 398 399
		f 4 339 347 -337 -347
		mu 0 4 399 398 400 401
		f 4 -348 -346 -344 -342
		mu 0 4 393 402 403 394
		f 4 346 340 342 344
		mu 0 4 404 392 395 405
		f 4 348 353 -350 -353
		mu 0 4 406 407 408 409
		f 4 349 355 -351 -355
		mu 0 4 409 408 410 411
		f 4 350 357 -352 -357
		mu 0 4 411 410 412 413
		f 4 351 359 -349 -359
		mu 0 4 413 412 414 415
		f 4 -360 -358 -356 -354
		mu 0 4 407 416 417 408
		f 4 358 352 354 356
		mu 0 4 418 406 409 419
		f 4 360 365 -362 -365
		mu 0 4 420 421 422 423
		f 4 361 367 -363 -367
		mu 0 4 423 422 424 425
		f 4 362 369 -364 -369
		mu 0 4 425 424 426 427
		f 4 363 371 -361 -371
		mu 0 4 427 426 428 429
		f 4 -372 -370 -368 -366
		mu 0 4 421 430 431 422
		f 4 370 364 366 368
		mu 0 4 432 420 423 433
		f 4 372 377 -374 -377
		mu 0 4 434 435 436 437
		f 4 373 379 -375 -379
		mu 0 4 437 436 438 439
		f 4 374 381 -376 -381
		mu 0 4 439 438 440 441
		f 4 375 383 -373 -383
		mu 0 4 441 440 442 443
		f 4 -384 -382 -380 -378
		mu 0 4 435 444 445 436
		f 4 382 376 378 380
		mu 0 4 446 434 437 447
		f 4 384 389 -386 -389
		mu 0 4 448 449 450 451
		f 4 385 391 -387 -391
		mu 0 4 451 450 452 453
		f 4 386 393 -388 -393
		mu 0 4 453 452 454 455
		f 4 387 395 -385 -395
		mu 0 4 455 454 456 457
		f 4 -396 -394 -392 -390
		mu 0 4 449 458 459 450
		f 4 394 388 390 392
		mu 0 4 460 448 451 461
		f 4 396 401 -398 -401
		mu 0 4 462 463 464 465
		f 4 397 403 -399 -403
		mu 0 4 465 464 466 467
		f 4 398 405 -400 -405
		mu 0 4 467 466 468 469
		f 4 399 407 -397 -407
		mu 0 4 469 468 470 471
		f 4 -408 -406 -404 -402
		mu 0 4 463 472 473 464
		f 4 406 400 402 404
		mu 0 4 474 462 465 475
		f 4 408 413 -410 -413
		mu 0 4 476 477 478 479
		f 4 409 415 -411 -415
		mu 0 4 479 478 480 481
		f 4 410 417 -412 -417
		mu 0 4 481 480 482 483
		f 4 411 419 -409 -419
		mu 0 4 483 482 484 485
		f 4 -420 -418 -416 -414
		mu 0 4 477 486 487 478
		f 4 418 412 414 416
		mu 0 4 488 476 479 489
		f 4 420 425 -422 -425
		mu 0 4 490 491 492 493
		f 4 421 427 -423 -427
		mu 0 4 493 492 494 495
		f 4 422 429 -424 -429
		mu 0 4 495 494 496 497
		f 4 423 431 -421 -431
		mu 0 4 497 496 498 499
		f 4 -432 -430 -428 -426
		mu 0 4 491 500 501 492
		f 4 430 424 426 428
		mu 0 4 502 490 493 503
		f 4 432 437 -434 -437
		mu 0 4 504 505 506 507
		f 4 433 439 -435 -439
		mu 0 4 507 506 508 509
		f 4 434 441 -436 -441
		mu 0 4 509 508 510 511
		f 4 435 443 -433 -443
		mu 0 4 511 510 512 513
		f 4 -444 -442 -440 -438
		mu 0 4 505 514 515 506
		f 4 442 436 438 440
		mu 0 4 516 504 507 517
		f 4 444 449 -446 -449
		mu 0 4 518 519 520 521
		f 4 445 451 -447 -451
		mu 0 4 521 520 522 523
		f 4 446 453 -448 -453
		mu 0 4 523 522 524 525
		f 4 447 455 -445 -455
		mu 0 4 525 524 526 527
		f 4 -456 -454 -452 -450
		mu 0 4 519 528 529 520
		f 4 454 448 450 452
		mu 0 4 530 518 521 531
		f 4 456 461 -458 -461
		mu 0 4 532 533 534 535
		f 4 457 463 -459 -463
		mu 0 4 535 534 536 537
		f 4 458 465 -460 -465
		mu 0 4 537 536 538 539
		f 4 459 467 -457 -467
		mu 0 4 539 538 540 541
		f 4 -468 -466 -464 -462
		mu 0 4 533 542 543 534
		f 4 466 460 462 464
		mu 0 4 544 532 535 545
		f 4 468 473 -470 -473
		mu 0 4 546 547 548 549
		f 4 469 475 -471 -475
		mu 0 4 549 548 550 551
		f 4 470 477 -472 -477
		mu 0 4 551 550 552 553
		f 4 471 479 -469 -479
		mu 0 4 553 552 554 555
		f 4 -480 -478 -476 -474
		mu 0 4 547 556 557 548
		f 4 478 472 474 476
		mu 0 4 558 546 549 559
		f 4 480 485 -482 -485
		mu 0 4 560 561 562 563
		f 4 481 487 -483 -487
		mu 0 4 563 562 564 565
		f 4 482 489 -484 -489
		mu 0 4 565 564 566 567
		f 4 483 491 -481 -491
		mu 0 4 567 566 568 569
		f 4 -492 -490 -488 -486
		mu 0 4 561 570 571 562
		f 4 490 484 486 488
		mu 0 4 572 560 563 573
		f 4 492 497 -494 -497
		mu 0 4 574 575 576 577
		f 4 493 499 -495 -499
		mu 0 4 577 576 578 579
		f 4 494 501 -496 -501
		mu 0 4 579 578 580 581
		f 4 495 503 -493 -503
		mu 0 4 581 580 582 583
		f 4 -504 -502 -500 -498
		mu 0 4 575 584 585 576
		f 4 502 496 498 500
		mu 0 4 586 574 577 587;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface43";
	rename -uid "B7B3219F-4A07-2A76-463B-B08BDB75DF86";
	setAttr ".t" -type "double3" -0.07588291528223623 -1.5783646378704834 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.019970417022705078 2.5964825749397278 0.074936419725418091 ;
	setAttr ".sp" -type "double3" 0.019970417022705078 2.5964825749397278 0.074936419725418091 ;
createNode mesh -n "polySurface43Shape" -p "|polySurface43";
	rename -uid "364B9723-415C-7C9A-D6B7-5ABAFE139923";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurface43ShapeOrig" -p "|polySurface43";
	rename -uid "F6A06436-4D16-88C2-557A-FDB90FF862EE";
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
	rename -uid "CC9D4BE5-4B84-4B62-86A7-CA87BEE6F058";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 17.102728969052421 ;
	setAttr ".bps" -type "matrix" -0.95577900872194999 -0.29408584883752392 -1.2246467991473532e-016 0
		 -0.29408584883752392 0.95577900872194987 3.0814879110195774e-033 0 1.1704917037235662e-016 3.6015129345340598e-017 -1 0
		 -0.0832567656882746 0.45412781284512732 0 1;
	setAttr ".radi" 0.53790223853838337;
createNode joint -n "joint2" -p "joint1";
	rename -uid "700B7FB3-4D5D-CCB5-5DCA-B487A22E7D53";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -80.20303056425837 ;
	setAttr ".bps" -type "matrix" 0.1271643159853649 -0.99188166468585082 -2.0838268761877503e-017 0
		 0.99188166468585093 0.12716431598536482 -1.7859146673798279e-018 0 4.4213002066909431e-018 -2.0441992091616633e-017 1 0
		 -0.47683420348738448 0.33302706275309329 6.1629758220391547e-033 1;
	setAttr ".radi" 0.50984808707539897;
createNode joint -n "joint3" -p "joint2";
	rename -uid "B7D153B3-4B33-3834-F629-5BA4A83514C0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.4773476647099571e-017 -1.1712398716894366e-015 -7.305759533310769 ;
	setAttr ".bps" -type "matrix" 3.8857805861880479e-016 -1.0000000000000002 -2.0441992091616633e-017 0
		 1.0000000000000002 3.0531133177191805e-016 -4.4213002066909215e-018 0 4.4213002066909431e-018 -2.0441992091616633e-017 1 0
		 -0.32545826587234267 -0.84770525064423796 9.2444637330587321e-033 1;
	setAttr ".radi" 0.51013120209442253;
createNode joint -n "joint4" -p "joint3";
	rename -uid "637DCC67-4A20-406E-021F-ABA6E357D6A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 8.3266726846886741e-017 -4.4213002066909269e-018 0
		 -1.6653345369377353e-016 1.0000000000000004 2.0441992091616636e-017 0 4.4213002066909431e-018 -2.0441992091616633e-017 1 0
		 -0.32545826587234261 -2.0435751578030747 9.2444637330587321e-033 1;
	setAttr ".radi" 0.57906148096506949;
createNode joint -n "joint5" -p "joint1";
	rename -uid "BF54CFCA-455F-2424-AA3F-969CEA755895";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -64.72879240690213 ;
	setAttr ".bps" -type "matrix" -0.1420843849781987 -0.98985454868145506 -5.2280598988401031e-017 0
		 -0.98985454868145506 0.1420843849781987 -1.1074446620952479e-016 0 1.1704917037235662e-016 3.6015129345340598e-017 -1 0
		 0.32463323536883637 0.33310192846541542 6.1629758220391547e-033 1;
	setAttr ".radi" 0.5099344109503543;
createNode joint -n "joint6" -p "joint5";
	rename -uid "EE07074D-48D5-1960-3843-A4BBCB950CD4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 2.0147968068306276e-015 -8.5842372622791707 ;
	setAttr ".bps" -type "matrix" 0.0072562934507132415 -0.9999736727561167 -3.5164838037862479e-017 0
		 0.99997367275611682 0.0072562934507132137 -5.1572547772382728e-018 0 5.4122853848835159e-018 -3.5126489690531612e-017 1 0
		 0.15525937343726967 -0.84686930965783602 1.8488927466117464e-032 1;
	setAttr ".radi" 0.5112539849697908;
createNode joint -n "joint7" -p "joint6";
	rename -uid "753A4C4E-42E1-A768-BF79-4C94BF3AC457";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 -73.31302966918129 ;
	setAttr ".bps" -type "matrix" -0.95577900872194987 -0.29408584883752392 -5.1572547772382566e-018 0
		 -0.29408584883752387 0.95577900872194976 -8.7299841876872842e-017 0 3.0602843960457107e-017 -8.1922680681824985e-017 -1 0
		 0.16409446975830935 -2.0644142969593737 -6.1629758220391547e-033 1;
	setAttr ".radi" 0.5112539849697908;
createNode joint -n "joint8" -p "joint1";
	rename -uid "C08E31FB-4AE4-C1B1-7142-099A594A28F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708134e-014 180 16.541023636485875 ;
	setAttr ".bps" -type "matrix" 0.99995194502508122 0.0098034504414223345 2.3986129802782385e-016 0
		 -0.0098034504414223345 0.999951945025081 3.4865912898248203e-017 0 -2.3950796524997019e-016 -3.721570576570936e-017 1 0
		 -0.079235498495979759 2.1868997584890217 -1.2325951644078309e-032 1;
	setAttr ".radi" 0.84871460050957093;
createNode joint -n "joint13" -p "joint8";
	rename -uid "B50D31FF-4DEB-1BC8-4BCD-DE95420AAB4B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 88.619839205744881 ;
	setAttr ".bps" -type "matrix" 0.014284256782849437 0.99989797479951015 4.0633102103035587e-017 0
		 -0.99989797479951037 0.014284256782849433 -2.3895193070428428e-016 0 -2.3950796524997019e-016 -3.721570576570936e-017 1 0
		 -0.075193629730422096 2.9499039355780843 -1.2325951644078309e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint14" -p "joint13";
	rename -uid "49D619EF-4120-0F56-D14F-129F9146B37D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -88.619839205744881 ;
	setAttr ".bps" -type "matrix" 0.99995194502508133 0.0098034504414223362 2.398612980278239e-016 0
		 -0.0098034504414223362 0.99995194502508111 3.4865912898248209e-017 0 -2.3950796524997019e-016 -3.721570576570936e-017 1 0
		 -0.063625379002665475 3.7596814865210892 -2.4651903288156619e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint15" -p "joint8";
	rename -uid "8C6945A4-4576-C502-CA1D-67ACB68E8063";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 179.99999999999903 -2.8249000307521015e-030 178.39666799142333 ;
	setAttr ".bps" -type "matrix" -0.9998347517133227 0.018178813667517883 -2.3879184958844687e-016 0
		 0.018178813667517901 0.99983475171332248 1.7039418180823375e-014 0 5.4850879775653484e-016 1.7032261493624029e-014 -1 0
		 -0.99276559663501196 2.2291586910202108 -1.0321504792347766e-031 1;
createNode joint -n "joint11" -p "joint15";
	rename -uid "FC0D8054-42B0-81EC-63D5-21B3CD2F9506";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.9998347517133227 0.018178813667517883 -2.3879184958844687e-016 0
		 0.018178813667517901 0.99983475171332248 1.7039418180823375e-014 0 5.4850879775653484e-016 1.7032261493624029e-014 -1 0
		 -2.0979203015988821 2.2291586910202104 1.9675448282816784e-030 1;
	setAttr ".radi" 0.53845529683734106;
createNode joint -n "joint12" -p "joint11";
	rename -uid "2CEF918D-4D71-D6F0-2B8C-4995FFD3E66A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999903 -2.8249000307521015e-030 178.39666799142333 ;
	setAttr ".bps" -type "matrix" 0.99995194502508078 0.0098034504414223379 7.1545737063810463e-016 0
		 -0.0098034504414223206 0.99995194502508078 2.8211075692530263e-017 0 -7.151464234696519e-016 -3.5223670886003543e-017 1 0
		 -3.841101268510422 2.2608528904186027 2.0661524414343049e-030 1;
	setAttr ".radi" 0.63794499329266841;
createNode joint -n "joint16" -p "joint8";
	rename -uid "D58AA942-4699-9A15-B5FD-A480BC697564";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 0 0 0.17281570168560367 ;
	setAttr ".bps" -type "matrix" 0.99991782735513568 0.012819459325019295 2.3996536947331478e-016 0
		 -0.012819459325019296 0.99991782735513524 3.4142285034195956e-017 0 -2.3950796524997019e-016 -3.7215705765709348e-017 1 0
		 0.67582531052458295 2.2080292247546147 -2.7577837094057399e-031 1;
createNode joint -n "joint9" -p "joint16";
	rename -uid "4B4A398F-4183-6C2D-D66A-F9A56B8D828B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99991782735513568 0.012819459325019295 2.3996536947331478e-016 0
		 -0.012819459325019296 0.99991782735513524 3.4142285034195956e-017 0 -2.3950796524997019e-016 -3.7215705765709348e-017 1 0
		 2.0164668542326178 2.2080292247546147 -6.2090501697476661e-031 1;
	setAttr ".radi" 0.53352933491971177;
createNode joint -n "joint10" -p "joint9";
	rename -uid "CED9DD8D-4C17-A728-2E55-F5A93CBFCA73";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 16.368207934800271 ;
	setAttr ".bps" -type "matrix" -0.9557790087219501 -0.29408584883752387 -3.6232597794255905e-016 0
		 -0.29408584883752398 0.95577900872194976 -3.4865912898248185e-017 0 3.5655713562232684e-016 7.323083511104994e-017 -1 0
		 3.6645652229489833 2.229158691020209 -6.7020882355107985e-031 1;
	setAttr ".radi" 0.64611025074118222;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "00BC910D-4006-77A1-3C63-B689AB64BF1A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A8D5A95B-4ACF-18E0-4041-FCB443BACAE1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B9E6255D-44BC-DB73-5D05-75AED1420420";
createNode displayLayerManager -n "layerManager";
	rename -uid "1C1E7D74-4692-9A6A-C7B7-EA9BB933FF81";
createNode displayLayer -n "defaultLayer";
	rename -uid "29BC9136-47FB-7C86-8EC9-F5A559C3B683";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1FC43559-402A-CDD2-290A-80A26E102A77";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DCA180A0-4641-4044-EF9E-18861934D00C";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3A31DF5D-48DE-9FA4-76F7-46B9BDB855D9";
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
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1557\n                -height 756\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1557\n            -height 756\n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1557\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1557\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0DC30C09-48EC-4A5B-D3CE-DCA0FB4A2363";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "6174EFD5-4FC6-A497-F3FE-70B7E3B2648E";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "EC5A90BC-4B6E-F514-0A14-4A81657B0693";
	setAttr ".ic" 42;
	setAttr -s 42 ".out";
createNode groupId -n "groupId2";
	rename -uid "2C18EF2F-45AC-5A16-1F8F-64BAF447DE9F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "97EC4B3C-41D1-202F-08ED-B0BB0D35CFF1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId3";
	rename -uid "BDD6354D-47CA-CCF2-0047-5797549D4746";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C1A6D2A5-408B-FEAF-CA34-CC9CD6B2E2FB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId4";
	rename -uid "6CD713FF-4314-F1EF-9ACA-DB80F2C4B405";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "CFCB7640-48C4-E653-4094-E39F75F27D19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId5";
	rename -uid "05C7B44D-4D98-1132-8857-42B73AB9AABC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "75AFA4D7-462E-2D05-D7B8-2DB6DBDD1089";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId6";
	rename -uid "9628F093-4E3E-48BD-4B53-0F9EF18E4D27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "EFFBCCF1-4FFE-1470-9ABE-DA9DAB985704";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId7";
	rename -uid "5F941F00-4394-E5C2-943B-8A87B57ED7D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "63089EC8-4382-C777-75BC-93811FAC9E6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId8";
	rename -uid "55BED0AF-4838-DEA0-7EF1-119423747B14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "98A5AB0E-41A0-F09E-0185-738E335E825F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId9";
	rename -uid "C36B9EC7-44B5-9247-CE00-2D824581F453";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "A65E5FA4-4D73-2215-8931-60BACCD0B9AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId10";
	rename -uid "6EB7A5B4-43EF-8904-91B3-9AA93CB954FB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "54153102-4F1C-A791-D667-EB943EB1A0FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId11";
	rename -uid "BBF72556-4760-D277-52E8-67BB189BF5FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "356DEC0E-4B1F-4F83-2722-7996C6DAF81B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId12";
	rename -uid "840D5D1E-410A-7601-A80B-6C9761E3BAEA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "104D6FF2-4583-8C2A-E65E-0D899AA09061";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId13";
	rename -uid "1810CF45-4099-A453-0BE3-129017813A52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "05DE95E0-4D79-50DA-F27D-9DA051BAC2A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId14";
	rename -uid "E903FADB-40F8-9E64-580C-49858357BE71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "305E471A-4D81-D00C-3EEB-5296E7A6A41B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId15";
	rename -uid "E2F93D4A-46F9-15C9-C344-6C9CC58E9BBC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "5AB1E3CB-4035-7571-D587-9DA8C2C4841E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId16";
	rename -uid "1646BC8D-45B7-7375-19D7-48A05CCBD14C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "E578D907-4523-0F51-0660-D9B7360F6B14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId17";
	rename -uid "3C24E00B-47B2-1874-075C-B1808A81C97E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "0454E98B-4B14-85CD-CA8C-45B8D288A021";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId18";
	rename -uid "4288CC4F-457B-FC6A-08DF-089D5943D8B0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "F7075960-427D-33C8-2614-EAA0F99A7D22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId19";
	rename -uid "58FD0B13-4E20-FE19-3CF9-2790436C5F63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "5F8AA556-4370-A813-B79B-B4840FFC13BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId20";
	rename -uid "F9FB6506-4646-FA35-4378-B484EED2EB89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "F873297A-40A5-2AD4-C012-B49F40B4BA00";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId21";
	rename -uid "2720BD23-4998-934F-EA02-2FA6BF10776B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "6FBAF165-48CF-65D1-56A7-F3B18E3F31B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId22";
	rename -uid "27B9DD7A-4B81-83E5-0B22-569BAD2966FC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "79BA8F42-41BE-D665-00C3-15A58CFF1E1D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId23";
	rename -uid "9114B927-4580-8BC2-1EEC-DCA424AB081C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "11D46DE2-4BA3-AA8F-4E82-8CB9115DB89A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId24";
	rename -uid "C33E1A86-4712-CDF7-146A-0DA63282544C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "2C33BAEE-421D-92F6-2D22-D4803CC5E649";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId25";
	rename -uid "6AAA98B9-4463-3B8F-CD6F-45ADC41A908D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "3CA48933-4A9A-BE0F-2853-FF9D61DE3E37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId26";
	rename -uid "F09E2090-405E-594C-6A2C-B38410382C60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "287C6DCB-487E-1369-4382-4882FB75FD2B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId27";
	rename -uid "B0C75BEB-4F4D-C46F-6FE6-C781A60A7B8C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "ACD24C93-481D-0A9B-50D0-B8AECFE2FFF8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId28";
	rename -uid "CED2782D-4999-F630-B21E-A18BD86D22DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "AA265ADF-4FF5-7F46-5F20-7296F3CE726D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId29";
	rename -uid "BB28ECA5-45C2-3225-483D-42B33B2D36A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "9EF4DD9C-4534-69E5-DF9E-CFA90F195E98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId30";
	rename -uid "9D866D50-4DF8-712D-5693-41A076CBF57A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "E8769852-432F-DC5F-68E5-CD9BC5ADBE36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId31";
	rename -uid "241062EF-4751-1358-2D15-81BA71E6C85D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "F7E51C22-4073-E5DB-E3FE-9AB16B412D3D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId32";
	rename -uid "EA8F50BB-407E-C5AE-5151-7A9885851EFB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "09196E66-4DAC-05D4-03EE-C8B220D55CD2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId33";
	rename -uid "E34DFD64-4CBF-90F1-3785-3EB6578E6534";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "9AA689E1-4E2F-1EB1-8BEF-1FB800BC7894";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId34";
	rename -uid "29C294DE-451A-FC7B-32D4-B2A0A939886C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "98343253-4871-4CCF-6F47-DAAD9ADEC2CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId35";
	rename -uid "70F3469B-48F0-6869-BF2F-18A38B5E89D7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "19D12F35-41DA-CB2A-A615-AEB2845EB155";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId36";
	rename -uid "B851A725-4C9A-4A0B-F315-79B7B184DC58";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "3AB1A888-4F30-67A8-2975-F9B8957D2E23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId37";
	rename -uid "082158A4-4FAC-145B-970F-8197061E907F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "D5FD0EAC-4F3A-1F2B-3E9A-F980A71585C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId38";
	rename -uid "2FEF6210-491C-C40F-E1BC-6CA562B82D62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "F68E6731-4DFE-8DDC-6E5F-7F8173EF7A32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId39";
	rename -uid "CAA75F39-492F-4E94-FDFF-96A434BB9BB5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "DFC3201E-483D-9C99-910F-EC9CE880AB7F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId40";
	rename -uid "97F6C4CA-43F8-79BD-259B-AC9A86A9CA59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "69964F44-412F-73C5-25A1-7988DEFF4675";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId41";
	rename -uid "FC75EF0B-49C5-A33D-4672-BD838F31059A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "A7E62A25-4917-F5BA-2477-199E7AC9E9B6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId42";
	rename -uid "74B06E85-4815-E390-E203-918E0660C880";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "90F49F64-4CE2-F85A-3E55-B286B4BB6520";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId43";
	rename -uid "067A04C6-42ED-695B-E475-5F9DF2C4A4D5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "DAE0DC0E-47B0-B630-D627-50B92DF780F9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupParts -n "groupParts43";
	rename -uid "EA6EBAA1-4516-9237-F0EE-B8836F5FEF54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode groupId -n "groupId44";
	rename -uid "3198CB68-42C5-2BF9-F590-9C9F24E6F280";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite1";
	rename -uid "421B613F-4374-E3FB-DB81-4CA549123210";
	setAttr -s 42 ".ip";
	setAttr -s 42 ".im";
createNode skinCluster -n "skinCluster1";
	rename -uid "3A4B0270-4056-BD2A-7E11-919584C3E0A1";
	setAttr -s 336 ".wl";
	setAttr -s 4 ".wl[0].w";
	setAttr ".wl[0].w[7]" 0.00062793776237320869;
	setAttr ".wl[0].w[8]" 0.99821600633858987;
	setAttr ".wl[0].w[9]" 0.00052811813666362383;
	setAttr ".wl[0].w[16]" 0.00062793776237320869;
	setAttr -s 4 ".wl[1].w";
	setAttr ".wl[1].w[7]" 0.00086320735736812235;
	setAttr ".wl[1].w[8]" 0.99753821572625501;
	setAttr ".wl[1].w[9]" 0.00073536955900872466;
	setAttr ".wl[1].w[16]" 0.00086320735736812235;
	setAttr -s 4 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.039570294538798047;
	setAttr ".wl[2].w[7]" 0.49602313162586126;
	setAttr ".wl[2].w[12]" 0.0048362975483238349;
	setAttr ".wl[2].w[16]" 0.4595702762870168;
	setAttr -s 4 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.034380619148590391;
	setAttr ".wl[3].w[7]" 0.47910111533231092;
	setAttr ".wl[3].w[12]" 0.027440017266051983;
	setAttr ".wl[3].w[16]" 0.45907824825304677;
	setAttr -s 4 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.039570294538798047;
	setAttr ".wl[4].w[7]" 0.49602313162586126;
	setAttr ".wl[4].w[12]" 0.0048362975483238349;
	setAttr ".wl[4].w[16]" 0.4595702762870168;
	setAttr -s 4 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.034380619148590391;
	setAttr ".wl[5].w[7]" 0.47910111533231092;
	setAttr ".wl[5].w[12]" 0.027440017266051983;
	setAttr ".wl[5].w[16]" 0.45907824825304677;
	setAttr -s 4 ".wl[6].w";
	setAttr ".wl[6].w[7]" 0.00062793776237320869;
	setAttr ".wl[6].w[8]" 0.99821600633858987;
	setAttr ".wl[6].w[9]" 0.00052811813666362383;
	setAttr ".wl[6].w[16]" 0.00062793776237320869;
	setAttr -s 4 ".wl[7].w";
	setAttr ".wl[7].w[7]" 0.00086320735736812235;
	setAttr ".wl[7].w[8]" 0.99753821572625501;
	setAttr ".wl[7].w[9]" 0.00073536955900872466;
	setAttr ".wl[7].w[16]" 0.00086320735736812235;
	setAttr -s 2 ".wl[8].w[5:6]"  0.81287181377410889 1;
	setAttr -s 2 ".wl[9].w[5:6]"  0.80526787042617798 1;
	setAttr -s 2 ".wl[10].w[5:6]"  0.7986752986907959 1;
	setAttr -s 2 ".wl[11].w[5:6]"  0.78924977779388428 0.99456107616424561;
	setAttr -s 2 ".wl[12].w[5:6]"  0.13679993152618408 1;
	setAttr -s 2 ".wl[13].w[5:6]"  0.13094407320022583 0.92720687389373779;
	setAttr -s 2 ".wl[14].w[5:6]"  0.14599668979644775 1;
	setAttr -s 2 ".wl[15].w[5:6]"  0.14101272821426392 0.99823403358459473;
	setAttr -s 2 ".wl[16].w[5:6]"  0.79917013645172119 1;
	setAttr -s 2 ".wl[17].w[5:6]"  0.37526154518127441 0.76467251777648926;
	setAttr -s 2 ".wl[18].w[5:6]"  0.77990728616714478 0.96609067916870117;
	setAttr -s 2 ".wl[19].w[5:6]"  0.35452783107757568 0.47780239582061768;
	setAttr -s 2 ".wl[20].w[5:6]"  0.081566333770751953 0.85269367694854736;
	setAttr ".wl[21].w[6]"  0.32443571090698242;
	setAttr -s 2 ".wl[22].w[5:6]"  0.091121315956115723 0.9784780740737915;
	setAttr ".wl[23].w[6]"  0.63999670743942261;
	setAttr -s 4 ".wl[24].w";
	setAttr ".wl[24].w[7]" 1.3658730921763522e-005;
	setAttr ".wl[24].w[8]" 0.99781422043951762;
	setAttr ".wl[24].w[9]" 0.002158462098638912;
	setAttr ".wl[24].w[16]" 1.3658730921763522e-005;
	setAttr -s 4 ".wl[25].w";
	setAttr ".wl[25].w[7]" 1.5220145186724232e-005;
	setAttr ".wl[25].w[8]" 0.99753393108742294;
	setAttr ".wl[25].w[9]" 0.002435628622203736;
	setAttr ".wl[25].w[16]" 1.5220145186724232e-005;
	setAttr -s 4 ".wl[26].w";
	setAttr ".wl[26].w[7]" 0.0005865794578894173;
	setAttr ".wl[26].w[8]" 0.9983961293757474;
	setAttr ".wl[26].w[9]" 0.00043071170847377652;
	setAttr ".wl[26].w[16]" 0.0005865794578894173;
	setAttr -s 4 ".wl[27].w";
	setAttr ".wl[27].w[7]" 0.00082179711763186885;
	setAttr ".wl[27].w[8]" 0.99774528137930263;
	setAttr ".wl[27].w[9]" 0.00061112438543367261;
	setAttr ".wl[27].w[16]" 0.00082179711763186885;
	setAttr -s 4 ".wl[28].w";
	setAttr ".wl[28].w[7]" 0.0005865794578894173;
	setAttr ".wl[28].w[8]" 0.9983961293757474;
	setAttr ".wl[28].w[9]" 0.00043071170847377652;
	setAttr ".wl[28].w[16]" 0.0005865794578894173;
	setAttr -s 4 ".wl[29].w";
	setAttr ".wl[29].w[7]" 0.00082179711763186885;
	setAttr ".wl[29].w[8]" 0.99774528137930263;
	setAttr ".wl[29].w[9]" 0.00061112438543367261;
	setAttr ".wl[29].w[16]" 0.00082179711763186885;
	setAttr -s 4 ".wl[30].w";
	setAttr ".wl[30].w[7]" 1.3658730921763522e-005;
	setAttr ".wl[30].w[8]" 0.99781422043951762;
	setAttr ".wl[30].w[9]" 0.002158462098638912;
	setAttr ".wl[30].w[16]" 1.3658730921763522e-005;
	setAttr -s 4 ".wl[31].w";
	setAttr ".wl[31].w[7]" 1.5220145186724232e-005;
	setAttr ".wl[31].w[8]" 0.99753393108742294;
	setAttr ".wl[31].w[9]" 0.002435628622203736;
	setAttr ".wl[31].w[16]" 1.5220145186724232e-005;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[7]" 0.0018479180373992825;
	setAttr ".wl[32].w[10]" 0.99520455044139833;
	setAttr ".wl[32].w[11]" 0.0010996134838031359;
	setAttr ".wl[32].w[14]" 0.0042167587833703878;
	setAttr ".wl[32].w[15]" 0.0018479180373992825;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[7]" 0.00091736452270193083;
	setAttr ".wl[33].w[10]" 0.99763405419518891;
	setAttr ".wl[33].w[11]" 0.00053121675940727572;
	setAttr ".wl[33].w[14]" 0.0021319644469433388;
	setAttr ".wl[33].w[15]" 0.00091736452270193083;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.056773502964309247;
	setAttr ".wl[34].w[7]" 0.57299436559752226;
	setAttr ".wl[34].w[12]" 0.052653963307172431;
	setAttr ".wl[34].w[14]" 0.13349551284239364;
	setAttr ".wl[34].w[15]" 0.3175781681309961;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.054641073182762942;
	setAttr ".wl[35].w[7]" 0.67307640106692668;
	setAttr ".wl[35].w[12]" 0.0062708846112778998;
	setAttr ".wl[35].w[14]" 0.086236388791922802;
	setAttr ".wl[35].w[15]" 0.26601164113903258;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.056773502964309247;
	setAttr ".wl[36].w[7]" 0.57299436559752226;
	setAttr ".wl[36].w[12]" 0.052653963307172431;
	setAttr ".wl[36].w[14]" 0.13349551284239364;
	setAttr ".wl[36].w[15]" 0.3175781681309961;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.054641073182762942;
	setAttr ".wl[37].w[7]" 0.67307640106692668;
	setAttr ".wl[37].w[12]" 0.0062708846112778998;
	setAttr ".wl[37].w[14]" 0.086236388791922802;
	setAttr ".wl[37].w[15]" 0.26601164113903258;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[7]" 0.0018479180373992825;
	setAttr ".wl[38].w[10]" 0.99520455044139833;
	setAttr ".wl[38].w[11]" 0.0010996134838031359;
	setAttr ".wl[38].w[14]" 0.0042167587833703878;
	setAttr ".wl[38].w[15]" 0.0018479180373992825;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[7]" 0.00091736452270193083;
	setAttr ".wl[39].w[10]" 0.99763405419518891;
	setAttr ".wl[39].w[11]" 0.00053121675940727572;
	setAttr ".wl[39].w[14]" 0.0021319644469433388;
	setAttr ".wl[39].w[15]" 0.00091736452270193083;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[7]" 2.7804470112379689e-005;
	setAttr ".wl[40].w[10]" 0.99490346097144766;
	setAttr ".wl[40].w[11]" 0.005040930088327629;
	setAttr ".wl[40].w[14]" 4.5369566446797696e-005;
	setAttr ".wl[40].w[15]" 2.7804470112379689e-005;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[7]" 1.5205759386045553e-005;
	setAttr ".wl[41].w[10]" 0.99719527441331757;
	setAttr ".wl[41].w[11]" 0.0027743140679102533;
	setAttr ".wl[41].w[14]" 2.4857111904556916e-005;
	setAttr ".wl[41].w[15]" 1.5205759386045553e-005;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[7]" 0.0017944870258513683;
	setAttr ".wl[42].w[10]" 0.99549212737525583;
	setAttr ".wl[42].w[11]" 0.00091889857304136352;
	setAttr ".wl[42].w[14]" 0.0041777978621943389;
	setAttr ".wl[42].w[15]" 0.0017944870258513683;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[7]" 0.000859981094871092;
	setAttr ".wl[43].w[10]" 0.99785171832994779;
	setAttr ".wl[43].w[11]" 0.00042831948031011284;
	setAttr ".wl[43].w[14]" 0.0020405871498876214;
	setAttr ".wl[43].w[15]" 0.000859981094871092;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[7]" 0.0017944870258513683;
	setAttr ".wl[44].w[10]" 0.99549212737525583;
	setAttr ".wl[44].w[11]" 0.00091889857304136352;
	setAttr ".wl[44].w[14]" 0.0041777978621943389;
	setAttr ".wl[44].w[15]" 0.0017944870258513683;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[7]" 0.000859981094871092;
	setAttr ".wl[45].w[10]" 0.99785171832994779;
	setAttr ".wl[45].w[11]" 0.00042831948031011284;
	setAttr ".wl[45].w[14]" 0.0020405871498876214;
	setAttr ".wl[45].w[15]" 0.000859981094871092;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[7]" 2.7804470112379689e-005;
	setAttr ".wl[46].w[10]" 0.99490346097144766;
	setAttr ".wl[46].w[11]" 0.005040930088327629;
	setAttr ".wl[46].w[14]" 4.5369566446797696e-005;
	setAttr ".wl[46].w[15]" 2.7804470112379689e-005;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[7]" 1.5205759386045553e-005;
	setAttr ".wl[47].w[10]" 0.99719527441331757;
	setAttr ".wl[47].w[11]" 0.0027743140679102533;
	setAttr ".wl[47].w[14]" 2.4857111904556916e-005;
	setAttr ".wl[47].w[15]" 1.5205759386045553e-005;
	setAttr -s 4 ".wl[48].w";
	setAttr ".wl[48].w[7]" 0.38113746094461143;
	setAttr ".wl[48].w[12]" 0.38775957432895808;
	setAttr ".wl[48].w[13]" 0.10804987184797837;
	setAttr ".wl[48].w[15]" 0.12305309287845222;
	setAttr -s 4 ".wl[49].w";
	setAttr ".wl[49].w[7]" 0.37291410378982487;
	setAttr ".wl[49].w[12]" 0.38259278358486887;
	setAttr ".wl[49].w[13]" 0.11030538732551268;
	setAttr ".wl[49].w[16]" 0.13418772529979361;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[7]" 0.065737588904799277;
	setAttr ".wl[50].w[12]" 0.4591186601006334;
	setAttr ".wl[50].w[13]" 0.4591186601006334;
	setAttr ".wl[50].w[14]" 0.014243008132169182;
	setAttr ".wl[50].w[15]" 0.016025090893933933;
	setAttr -s 4 ".wl[51].w";
	setAttr ".wl[51].w[7]" 0.061570720257130104;
	setAttr ".wl[51].w[12]" 0.46167323188081716;
	setAttr ".wl[51].w[13]" 0.46167323188081716;
	setAttr ".wl[51].w[16]" 0.015082815981235573;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[7]" 0.065737588904799277;
	setAttr ".wl[52].w[12]" 0.4591186601006334;
	setAttr ".wl[52].w[13]" 0.4591186601006334;
	setAttr ".wl[52].w[14]" 0.014243008132169182;
	setAttr ".wl[52].w[15]" 0.016025090893933933;
	setAttr -s 4 ".wl[53].w";
	setAttr ".wl[53].w[7]" 0.061570720257130104;
	setAttr ".wl[53].w[12]" 0.46167323188081716;
	setAttr ".wl[53].w[13]" 0.46167323188081716;
	setAttr ".wl[53].w[16]" 0.015082815981235573;
	setAttr -s 4 ".wl[54].w";
	setAttr ".wl[54].w[7]" 0.38113746094461143;
	setAttr ".wl[54].w[12]" 0.38775957432895808;
	setAttr ".wl[54].w[13]" 0.10804987184797837;
	setAttr ".wl[54].w[15]" 0.12305309287845222;
	setAttr -s 4 ".wl[55].w";
	setAttr ".wl[55].w[7]" 0.37291410378982487;
	setAttr ".wl[55].w[12]" 0.38259278358486887;
	setAttr ".wl[55].w[13]" 0.11030538732551268;
	setAttr ".wl[55].w[16]" 0.13418772529979361;
	setAttr -s 4 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.016211109298502994;
	setAttr ".wl[56].w[7]" 0.88630273605549714;
	setAttr ".wl[56].w[12]" 0.095693163433540993;
	setAttr ".wl[56].w[15]" 0.0017929912124589561;
	setAttr -s 4 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.016286711736274179;
	setAttr ".wl[57].w[7]" 0.88234011155717318;
	setAttr ".wl[57].w[12]" 0.098079089622509288;
	setAttr ".wl[57].w[16]" 0.0032940870840433662;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[7]" 0.79474639892578125;
	setAttr ".wl[58].w[12]" 1;
	setAttr ".wl[58].w[13]" 1;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[7]" 0.69531339406967163;
	setAttr ".wl[59].w[12]" 1;
	setAttr ".wl[59].w[13]" 1;
	setAttr -s 3 ".wl[60].w";
	setAttr ".wl[60].w[7]" 0.80080914497375488;
	setAttr ".wl[60].w[12]" 1;
	setAttr ".wl[60].w[13]" 1;
	setAttr -s 3 ".wl[61].w";
	setAttr ".wl[61].w[7]" 0.6971392035484314;
	setAttr ".wl[61].w[12]" 1;
	setAttr ".wl[61].w[13]" 1;
	setAttr -s 4 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.016211109298502994;
	setAttr ".wl[62].w[7]" 0.88630273605549714;
	setAttr ".wl[62].w[12]" 0.095693163433540993;
	setAttr ".wl[62].w[15]" 0.0017929912124589561;
	setAttr -s 4 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.016286711736274179;
	setAttr ".wl[63].w[7]" 0.88234011155717318;
	setAttr ".wl[63].w[12]" 0.098079089622509288;
	setAttr ".wl[63].w[16]" 0.0032940870840433662;
	setAttr -s 4 ".wl[64].w";
	setAttr ".wl[64].w[7]" 6.4896763024338303e-005;
	setAttr ".wl[64].w[8]" 0.49993510323697571;
	setAttr ".wl[64].w[9]" 0.4999351032369756;
	setAttr ".wl[64].w[16]" 6.4896763024338303e-005;
	setAttr -s 4 ".wl[65].w";
	setAttr ".wl[65].w[7]" 5.4139671646042376e-005;
	setAttr ".wl[65].w[8]" 0.49994586032835409;
	setAttr ".wl[65].w[9]" 0.49994586032835386;
	setAttr ".wl[65].w[16]" 5.4139671646042376e-005;
	setAttr -s 4 ".wl[66].w";
	setAttr ".wl[66].w[7]" 4.9052546126292815e-006;
	setAttr ".wl[66].w[8]" 0.49999509474538739;
	setAttr ".wl[66].w[9]" 0.49999509474538739;
	setAttr ".wl[66].w[16]" 4.9052546126292815e-006;
	setAttr -s 4 ".wl[67].w";
	setAttr ".wl[67].w[7]" 7.666304291856306e-007;
	setAttr ".wl[67].w[8]" 0.49999923336957081;
	setAttr ".wl[67].w[9]" 0.49999923336957081;
	setAttr ".wl[67].w[16]" 7.666304291856306e-007;
	setAttr -s 4 ".wl[68].w";
	setAttr ".wl[68].w[7]" 4.9052546126292815e-006;
	setAttr ".wl[68].w[8]" 0.49999509474538739;
	setAttr ".wl[68].w[9]" 0.49999509474538739;
	setAttr ".wl[68].w[16]" 4.9052546126292815e-006;
	setAttr -s 4 ".wl[69].w";
	setAttr ".wl[69].w[7]" 7.666304291856306e-007;
	setAttr ".wl[69].w[8]" 0.49999923336957081;
	setAttr ".wl[69].w[9]" 0.49999923336957081;
	setAttr ".wl[69].w[16]" 7.666304291856306e-007;
	setAttr -s 4 ".wl[70].w";
	setAttr ".wl[70].w[7]" 6.4896763024338303e-005;
	setAttr ".wl[70].w[8]" 0.49993510323697571;
	setAttr ".wl[70].w[9]" 0.4999351032369756;
	setAttr ".wl[70].w[16]" 6.4896763024338303e-005;
	setAttr -s 4 ".wl[71].w";
	setAttr ".wl[71].w[7]" 5.4139671646042376e-005;
	setAttr ".wl[71].w[8]" 0.49994586032835409;
	setAttr ".wl[71].w[9]" 0.49994586032835386;
	setAttr ".wl[71].w[16]" 5.4139671646042376e-005;
	setAttr -s 2 ".wl[72].w[5:6]"  1 0.32985883951187134;
	setAttr -s 2 ".wl[73].w[5:6]"  1 0.80539131164550781;
	setAttr -s 2 ".wl[74].w";
	setAttr ".wl[74].w[1]" 0.088425219058990479;
	setAttr ".wl[74].w[4]" 0.99938809871673584;
	setAttr ".wl[75].w[4]"  1;
	setAttr -s 2 ".wl[76].w";
	setAttr ".wl[76].w[1]" 0.090363442897796631;
	setAttr ".wl[76].w[4]" 0.99930679798126221;
	setAttr ".wl[77].w[4]"  1;
	setAttr -s 2 ".wl[78].w[5:6]"  1 0.32708346843719482;
	setAttr -s 2 ".wl[79].w[5:6]"  1 0.80419647693634033;
	setAttr -s 2 ".wl[80].w[2:3]"  0.10976636409759521 0.85668408870697021;
	setAttr -s 2 ".wl[81].w[2:3]"  0.075288534164428711 0.79865658283233643;
	setAttr -s 2 ".wl[82].w[2:3]"  0.13843774795532227 0.85632336139678955;
	setAttr -s 2 ".wl[83].w[2:3]"  0.099298298358917236 0.79825949668884277;
	setAttr -s 2 ".wl[84].w[2:3]"  0.9452088475227356 0.99818277359008789;
	setAttr -s 2 ".wl[85].w[2:3]"  0.89644026756286621 0.98177891969680786;
	setAttr -s 2 ".wl[86].w[2:3]"  0.91147029399871826 0.99823558330535889;
	setAttr -s 2 ".wl[87].w[2:3]"  0.85516184568405151 0.98193657398223877;
	setAttr -s 2 ".wl[88].w[5:6]"  1 1;
	setAttr -s 2 ".wl[89].w[5:6]"  1 1;
	setAttr -s 2 ".wl[90].w[5:6]"  1 0.30800992250442505;
	setAttr -s 2 ".wl[91].w[5:6]"  1 0.78086268901824951;
	setAttr -s 2 ".wl[92].w[5:6]"  1 0.30655616521835327;
	setAttr -s 2 ".wl[93].w[5:6]"  1 0.78047913312911987;
	setAttr -s 2 ".wl[94].w[5:6]"  1 1;
	setAttr -s 2 ".wl[95].w[5:6]"  1 1;
	setAttr -s 4 ".wl[96].w";
	setAttr ".wl[96].w[7]" 0.00019244601322392852;
	setAttr ".wl[96].w[8]" 0.49980755398677623;
	setAttr ".wl[96].w[9]" 0.49980755398677601;
	setAttr ".wl[96].w[16]" 0.00019244601322392852;
	setAttr -s 4 ".wl[97].w";
	setAttr ".wl[97].w[7]" 0.00018212943182500114;
	setAttr ".wl[97].w[8]" 0.499817870568175;
	setAttr ".wl[97].w[9]" 0.499817870568175;
	setAttr ".wl[97].w[16]" 0.00018212943182500114;
	setAttr -s 4 ".wl[98].w";
	setAttr ".wl[98].w[7]" 6.1472029241966145e-005;
	setAttr ".wl[98].w[8]" 0.49993852797075805;
	setAttr ".wl[98].w[9]" 0.49993852797075805;
	setAttr ".wl[98].w[16]" 6.1472029241966145e-005;
	setAttr -s 4 ".wl[99].w";
	setAttr ".wl[99].w[7]" 5.1330232322164583e-005;
	setAttr ".wl[99].w[8]" 0.49994866976767782;
	setAttr ".wl[99].w[9]" 0.49994866976767782;
	setAttr ".wl[99].w[16]" 5.1330232322164583e-005;
	setAttr -s 4 ".wl[100].w";
	setAttr ".wl[100].w[7]" 6.1472029241966145e-005;
	setAttr ".wl[100].w[8]" 0.49993852797075805;
	setAttr ".wl[100].w[9]" 0.49993852797075805;
	setAttr ".wl[100].w[16]" 6.1472029241966145e-005;
	setAttr -s 4 ".wl[101].w";
	setAttr ".wl[101].w[7]" 5.1330232322164583e-005;
	setAttr ".wl[101].w[8]" 0.49994866976767782;
	setAttr ".wl[101].w[9]" 0.49994866976767782;
	setAttr ".wl[101].w[16]" 5.1330232322164583e-005;
	setAttr -s 4 ".wl[102].w";
	setAttr ".wl[102].w[7]" 0.00019244601322392852;
	setAttr ".wl[102].w[8]" 0.49980755398677623;
	setAttr ".wl[102].w[9]" 0.49980755398677601;
	setAttr ".wl[102].w[16]" 0.00019244601322392852;
	setAttr -s 4 ".wl[103].w";
	setAttr ".wl[103].w[7]" 0.00018212943182500114;
	setAttr ".wl[103].w[8]" 0.499817870568175;
	setAttr ".wl[103].w[9]" 0.499817870568175;
	setAttr ".wl[103].w[16]" 0.00018212943182500114;
	setAttr -s 2 ".wl[104].w";
	setAttr ".wl[104].w[4]" 1;
	setAttr ".wl[104].w[7]" 0.10246509313583374;
	setAttr -s 2 ".wl[105].w";
	setAttr ".wl[105].w[1]" 0.97817891836166382;
	setAttr ".wl[105].w[7]" 0.03099977970123291;
	setAttr -s 2 ".wl[106].w";
	setAttr ".wl[106].w[4]" 0.38451099395751953;
	setAttr ".wl[106].w[7]" 0.50931543111801147;
	setAttr -s 2 ".wl[107].w";
	setAttr ".wl[107].w[1]" 0.0021269321441650391;
	setAttr ".wl[107].w[7]" 0.34193015098571777;
	setAttr -s 2 ".wl[108].w";
	setAttr ".wl[108].w[4]" 0.38451099395751953;
	setAttr ".wl[108].w[7]" 0.57439541816711426;
	setAttr -s 2 ".wl[109].w";
	setAttr ".wl[109].w[1]" 0.0021269321441650391;
	setAttr ".wl[109].w[7]" 0.34191435575485229;
	setAttr -s 2 ".wl[110].w";
	setAttr ".wl[110].w[4]" 1;
	setAttr ".wl[110].w[7]" 0.12057757377624512;
	setAttr -s 2 ".wl[111].w";
	setAttr ".wl[111].w[1]" 0.97817891836166382;
	setAttr ".wl[111].w[7]" 0.033922195434570313;
	setAttr -s 2 ".wl[112].w";
	setAttr ".wl[112].w[1]" 0.09459388256072998;
	setAttr ".wl[112].w[4]" 0.99931806325912476;
	setAttr ".wl[113].w[4]"  1;
	setAttr -s 4 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.07937312126159668;
	setAttr ".wl[114].w[1]" 0.87433481216430664;
	setAttr ".wl[114].w[4]" 0.52148681879043579;
	setAttr ".wl[114].w[7]" 0.52687704563140869;
	setAttr -s 2 ".wl[115].w";
	setAttr ".wl[115].w[4]" 1;
	setAttr ".wl[115].w[7]" 0.53848624229431152;
	setAttr -s 4 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.07937312126159668;
	setAttr ".wl[116].w[1]" 0.87433481216430664;
	setAttr ".wl[116].w[4]" 0.52148681879043579;
	setAttr ".wl[116].w[7]" 0.51270776987075806;
	setAttr -s 2 ".wl[117].w";
	setAttr ".wl[117].w[4]" 1;
	setAttr ".wl[117].w[7]" 0.51262748241424561;
	setAttr -s 2 ".wl[118].w";
	setAttr ".wl[118].w[1]" 0.09459388256072998;
	setAttr ".wl[118].w[4]" 0.99931806325912476;
	setAttr ".wl[119].w[4]"  1;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[7]" 0.00015563185275496738;
	setAttr ".wl[120].w[10]" 0.49984436814724503;
	setAttr ".wl[120].w[11]" 0.49984436814724503;
	setAttr ".wl[120].w[14]" 0.00021694454400276973;
	setAttr ".wl[120].w[15]" 0.00015563185275496738;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[7]" 0.00017402129172928833;
	setAttr ".wl[121].w[10]" 0.49982597870827072;
	setAttr ".wl[121].w[11]" 0.49982597870827072;
	setAttr ".wl[121].w[14]" 0.00024251670951527403;
	setAttr ".wl[121].w[15]" 0.00017402129172928833;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[7]" 6.6683265257556378e-006;
	setAttr ".wl[122].w[10]" 0.49999333167347432;
	setAttr ".wl[122].w[11]" 0.49999333167347421;
	setAttr ".wl[122].w[14]" 9.578298948753265e-006;
	setAttr ".wl[122].w[15]" 6.6683265257556378e-006;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[7]" 1.5797716513906253e-005;
	setAttr ".wl[123].w[10]" 0.49998420228348617;
	setAttr ".wl[123].w[11]" 0.49998420228348606;
	setAttr ".wl[123].w[14]" 2.2679895056508156e-005;
	setAttr ".wl[123].w[15]" 1.5797716513906253e-005;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[7]" 6.6683265257556378e-006;
	setAttr ".wl[124].w[10]" 0.49999333167347432;
	setAttr ".wl[124].w[11]" 0.49999333167347421;
	setAttr ".wl[124].w[14]" 9.578298948753265e-006;
	setAttr ".wl[124].w[15]" 6.6683265257556378e-006;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[7]" 1.5797716513906253e-005;
	setAttr ".wl[125].w[10]" 0.49998420228348617;
	setAttr ".wl[125].w[11]" 0.49998420228348606;
	setAttr ".wl[125].w[14]" 2.2679895056508156e-005;
	setAttr ".wl[125].w[15]" 1.5797716513906253e-005;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[7]" 0.00015563185275496738;
	setAttr ".wl[126].w[10]" 0.49984436814724503;
	setAttr ".wl[126].w[11]" 0.49984436814724503;
	setAttr ".wl[126].w[14]" 0.00021694454400276973;
	setAttr ".wl[126].w[15]" 0.00015563185275496738;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[7]" 0.00017402129172928833;
	setAttr ".wl[127].w[10]" 0.49982597870827072;
	setAttr ".wl[127].w[11]" 0.49982597870827072;
	setAttr ".wl[127].w[14]" 0.00024251670951527403;
	setAttr ".wl[127].w[15]" 0.00017402129172928833;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[7]" 7.7040183051591711e-007;
	setAttr ".wl[128].w[10]" 0.80725819197946169;
	setAttr ".wl[128].w[11]" 0.19274026721687729;
	setAttr ".wl[128].w[14]" 1.1462833675236763e-006;
	setAttr ".wl[128].w[15]" 7.7040183051591711e-007;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[7]" 4.9185540265658395e-007;
	setAttr ".wl[129].w[10]" 0.8534348647938933;
	setAttr ".wl[129].w[11]" 0.1465641514953015;
	setAttr ".wl[129].w[14]" 7.3220659956521615e-007;
	setAttr ".wl[129].w[15]" 4.9185540265658395e-007;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[7]" 1.6732927088391321e-005;
	setAttr ".wl[130].w[10]" 0.99687938008953192;
	setAttr ".wl[130].w[11]" 0.0030871540562913903;
	setAttr ".wl[130].w[14]" 2.7332511612671043e-005;
	setAttr ".wl[130].w[15]" 1.6732927088391321e-005;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[7]" 8.3306704386959437e-006;
	setAttr ".wl[131].w[10]" 0.99843771053401231;
	setAttr ".wl[131].w[11]" 0.0015456281251103232;
	setAttr ".wl[131].w[14]" 1.3629441768270864e-005;
	setAttr ".wl[131].w[15]" 8.3306704386959437e-006;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[7]" 1.6732927088391321e-005;
	setAttr ".wl[132].w[10]" 0.99687938008953192;
	setAttr ".wl[132].w[11]" 0.0030871540562913903;
	setAttr ".wl[132].w[14]" 2.7332511612671043e-005;
	setAttr ".wl[132].w[15]" 1.6732927088391321e-005;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[7]" 8.3306704386959437e-006;
	setAttr ".wl[133].w[10]" 0.99843771053401231;
	setAttr ".wl[133].w[11]" 0.0015456281251103232;
	setAttr ".wl[133].w[14]" 1.3629441768270864e-005;
	setAttr ".wl[133].w[15]" 8.3306704386959437e-006;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[7]" 7.7040183051591711e-007;
	setAttr ".wl[134].w[10]" 0.80725819197946169;
	setAttr ".wl[134].w[11]" 0.19274026721687729;
	setAttr ".wl[134].w[14]" 1.1462833675236763e-006;
	setAttr ".wl[134].w[15]" 7.7040183051591711e-007;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[7]" 4.9185540265658395e-007;
	setAttr ".wl[135].w[10]" 0.8534348647938933;
	setAttr ".wl[135].w[11]" 0.1465641514953015;
	setAttr ".wl[135].w[14]" 7.3220659956521615e-007;
	setAttr ".wl[135].w[15]" 4.9185540265658395e-007;
	setAttr -s 2 ".wl[136].w[2:3]"  0.81931734085083008 1;
	setAttr -s 2 ".wl[137].w[2:3]"  0.79173558950424194 1;
	setAttr -s 2 ".wl[138].w[2:3]"  0.80426269769668579 1;
	setAttr -s 2 ".wl[139].w[2:3]"  0.77615201473236084 1;
	setAttr -s 2 ".wl[140].w[2:3]"  0.13920021057128906 1;
	setAttr -s 2 ".wl[141].w[2:3]"  0.1220252513885498 1;
	setAttr -s 2 ".wl[142].w[2:3]"  0.14912748336791992 1;
	setAttr -s 2 ".wl[143].w[2:3]"  0.13133907318115234 1;
	setAttr -s 2 ".wl[144].w[2:3]"  0.6802600622177124 1;
	setAttr -s 2 ".wl[145].w[2:3]"  0.36227190494537354 0.96894943714141846;
	setAttr -s 2 ".wl[146].w[2:3]"  0.66703283786773682 1;
	setAttr -s 2 ".wl[147].w[2:3]"  0.35050517320632935 0.96894943714141846;
	setAttr -s 2 ".wl[148].w[2:3]"  0.12752914428710938 0.99979603290557861;
	setAttr -s 2 ".wl[149].w[2:3]"  0.010997593402862549 0.84770452976226807;
	setAttr -s 2 ".wl[150].w[2:3]"  0.13502013683319092 0.99979603290557861;
	setAttr -s 2 ".wl[151].w[2:3]"  0.013212740421295166 0.84770452976226807;
	setAttr -s 2 ".wl[152].w[5:6]"  0.40602099895477295 1;
	setAttr -s 2 ".wl[153].w[5:6]"  0.70499402284622192 1;
	setAttr -s 2 ".wl[154].w[5:6]"  0.39622199535369873 1;
	setAttr -s 2 ".wl[155].w[5:6]"  0.69327956438064575 1;
	setAttr -s 2 ".wl[156].w[5:6]"  0.020960569381713867 1;
	setAttr -s 2 ".wl[157].w[5:6]"  0.14361977577209473 1;
	setAttr -s 2 ".wl[158].w[5:6]"  0.023375630378723145 1;
	setAttr -s 2 ".wl[159].w[5:6]"  0.15070390701293945 1;
	setAttr -s 2 ".wl[160].w[2:3]"  1 1;
	setAttr -s 2 ".wl[161].w[2:3]"  1 1;
	setAttr -s 2 ".wl[162].w[2:3]"  1 0.6510772705078125;
	setAttr -s 2 ".wl[163].w[2:3]"  1 0.63629865646362305;
	setAttr -s 2 ".wl[164].w[2:3]"  1 0.6510772705078125;
	setAttr -s 2 ".wl[165].w[2:3]"  1 0.63629865646362305;
	setAttr -s 2 ".wl[166].w[2:3]"  1 1;
	setAttr -s 2 ".wl[167].w[2:3]"  1 1;
	setAttr -s 4 ".wl[168].w";
	setAttr ".wl[168].w[7]" 5.0667293680457219e-005;
	setAttr ".wl[168].w[8]" 0.49994933270631953;
	setAttr ".wl[168].w[9]" 0.49994933270631953;
	setAttr ".wl[168].w[16]" 5.0667293680457219e-005;
	setAttr -s 4 ".wl[169].w";
	setAttr ".wl[169].w[7]" 5.0117637806676283e-005;
	setAttr ".wl[169].w[8]" 0.49994988236219334;
	setAttr ".wl[169].w[9]" 0.49994988236219334;
	setAttr ".wl[169].w[16]" 5.0117637806676283e-005;
	setAttr -s 4 ".wl[170].w";
	setAttr ".wl[170].w[7]" 7.5343126392662595e-007;
	setAttr ".wl[170].w[8]" 0.49999924656873612;
	setAttr ".wl[170].w[9]" 0.49999924656873601;
	setAttr ".wl[170].w[16]" 7.5343126392662595e-007;
	setAttr -s 4 ".wl[171].w";
	setAttr ".wl[171].w[7]" 6.3378011814314672e-007;
	setAttr ".wl[171].w[8]" 0.49999936621988184;
	setAttr ".wl[171].w[9]" 0.49999936621988184;
	setAttr ".wl[171].w[16]" 6.3378011814314672e-007;
	setAttr -s 4 ".wl[172].w";
	setAttr ".wl[172].w[7]" 7.5343126392662595e-007;
	setAttr ".wl[172].w[8]" 0.49999924656873612;
	setAttr ".wl[172].w[9]" 0.49999924656873601;
	setAttr ".wl[172].w[16]" 7.5343126392662595e-007;
	setAttr -s 4 ".wl[173].w";
	setAttr ".wl[173].w[7]" 6.3378011814314672e-007;
	setAttr ".wl[173].w[8]" 0.49999936621988184;
	setAttr ".wl[173].w[9]" 0.49999936621988184;
	setAttr ".wl[173].w[16]" 6.3378011814314672e-007;
	setAttr -s 4 ".wl[174].w";
	setAttr ".wl[174].w[7]" 5.0667293680457219e-005;
	setAttr ".wl[174].w[8]" 0.49994933270631953;
	setAttr ".wl[174].w[9]" 0.49994933270631953;
	setAttr ".wl[174].w[16]" 5.0667293680457219e-005;
	setAttr -s 4 ".wl[175].w";
	setAttr ".wl[175].w[7]" 5.0117637806676283e-005;
	setAttr ".wl[175].w[8]" 0.49994988236219334;
	setAttr ".wl[175].w[9]" 0.49994988236219334;
	setAttr ".wl[175].w[16]" 5.0117637806676283e-005;
	setAttr -s 2 ".wl[176].w[2:3]"  0.39196610450744629 0.95616185665130615;
	setAttr -s 2 ".wl[177].w[2:3]"  0.80493712425231934 1;
	setAttr -s 2 ".wl[178].w[2:3]"  0.374137282371521 0.95616185665130615;
	setAttr -s 2 ".wl[179].w[2:3]"  0.78700840473175049 1;
	setAttr ".wl[180].w[3]"  0.77111291885375977;
	setAttr -s 2 ".wl[181].w[2:3]"  0.083992242813110352 0.99990391731262207;
	setAttr ".wl[182].w[3]"  0.77111291885375977;
	setAttr -s 2 ".wl[183].w[2:3]"  0.09306788444519043 0.99990391731262207;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[7]" 1.3311185020542963e-005;
	setAttr ".wl[184].w[10]" 0.67704026234903469;
	setAttr ".wl[184].w[11]" 0.32293311528092422;
	setAttr ".wl[184].w[14]" 1.9874992577717483e-005;
	setAttr ".wl[184].w[15]" 1.3311185020542963e-005;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[7]" 3.1360967198526074e-005;
	setAttr ".wl[185].w[10]" 0.49996863903280153;
	setAttr ".wl[185].w[11]" 0.49996863903280142;
	setAttr ".wl[185].w[14]" 4.4775866751725728e-005;
	setAttr ".wl[185].w[15]" 3.1360967198526074e-005;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[7]" 1.1903502543415161e-005;
	setAttr ".wl[186].w[10]" 0.70128505110661155;
	setAttr ".wl[186].w[11]" 0.29869114188830165;
	setAttr ".wl[186].w[14]" 1.7797041427605357e-005;
	setAttr ".wl[186].w[15]" 1.1903502543415161e-005;
	setAttr -s 5 ".wl[187].w";
	setAttr ".wl[187].w[7]" 3.071561257387126e-005;
	setAttr ".wl[187].w[10]" 0.49996928438742616;
	setAttr ".wl[187].w[11]" 0.49996928438742616;
	setAttr ".wl[187].w[14]" 4.3895609477959677e-005;
	setAttr ".wl[187].w[15]" 3.071561257387126e-005;
	setAttr -s 5 ".wl[188].w";
	setAttr ".wl[188].w[7]" 1.1903502543415161e-005;
	setAttr ".wl[188].w[10]" 0.70128505110661155;
	setAttr ".wl[188].w[11]" 0.29869114188830165;
	setAttr ".wl[188].w[14]" 1.7797041427605357e-005;
	setAttr ".wl[188].w[15]" 1.1903502543415161e-005;
	setAttr -s 5 ".wl[189].w";
	setAttr ".wl[189].w[7]" 3.071561257387126e-005;
	setAttr ".wl[189].w[10]" 0.49996928438742616;
	setAttr ".wl[189].w[11]" 0.49996928438742616;
	setAttr ".wl[189].w[14]" 4.3895609477959677e-005;
	setAttr ".wl[189].w[15]" 3.071561257387126e-005;
	setAttr -s 5 ".wl[190].w";
	setAttr ".wl[190].w[7]" 1.3311185020542963e-005;
	setAttr ".wl[190].w[10]" 0.67704026234903469;
	setAttr ".wl[190].w[11]" 0.32293311528092422;
	setAttr ".wl[190].w[14]" 1.9874992577717483e-005;
	setAttr ".wl[190].w[15]" 1.3311185020542963e-005;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[7]" 3.1360967198526074e-005;
	setAttr ".wl[191].w[10]" 0.49996863903280153;
	setAttr ".wl[191].w[11]" 0.49996863903280142;
	setAttr ".wl[191].w[14]" 4.4775866751725728e-005;
	setAttr ".wl[191].w[15]" 3.1360967198526074e-005;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[0]" 0.12178306876492269;
	setAttr ".wl[192].w[7]" 0.37801248141930421;
	setAttr ".wl[192].w[12]" 0.34494423620386488;
	setAttr ".wl[192].w[14]" 0.089340552288770497;
	setAttr ".wl[192].w[15]" 0.15526021361190823;
	setAttr -s 4 ".wl[193].w";
	setAttr ".wl[193].w[0]" 0.11491760840656827;
	setAttr ".wl[193].w[7]" 0.36182195745660267;
	setAttr ".wl[193].w[12]" 0.33216594998486454;
	setAttr ".wl[193].w[16]" 0.19109448415196462;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[0]" 0.11298397218462809;
	setAttr ".wl[194].w[7]" 0.41131998946372444;
	setAttr ".wl[194].w[12]" 0.07820707624502872;
	setAttr ".wl[194].w[14]" 0.32569703072095019;
	setAttr ".wl[194].w[15]" 0.39748896210661877;
	setAttr -s 4 ".wl[195].w";
	setAttr ".wl[195].w[0]" 0.1118301785928433;
	setAttr ".wl[195].w[7]" 0.40466139720136918;
	setAttr ".wl[195].w[12]" 0.078847027004418521;
	setAttr ".wl[195].w[16]" 0.40466139720136907;
	setAttr -s 5 ".wl[196].w";
	setAttr ".wl[196].w[0]" 0.11298397218462809;
	setAttr ".wl[196].w[7]" 0.41131998946372444;
	setAttr ".wl[196].w[12]" 0.07820707624502872;
	setAttr ".wl[196].w[14]" 0.32569703072095019;
	setAttr ".wl[196].w[15]" 0.39748896210661877;
	setAttr -s 4 ".wl[197].w";
	setAttr ".wl[197].w[0]" 0.1118301785928433;
	setAttr ".wl[197].w[7]" 0.40466139720136918;
	setAttr ".wl[197].w[12]" 0.078847027004418521;
	setAttr ".wl[197].w[16]" 0.40466139720136907;
	setAttr -s 5 ".wl[198].w";
	setAttr ".wl[198].w[0]" 0.12178306876492269;
	setAttr ".wl[198].w[7]" 0.37801248141930421;
	setAttr ".wl[198].w[12]" 0.34494423620386488;
	setAttr ".wl[198].w[14]" 0.089340552288770497;
	setAttr ".wl[198].w[15]" 0.15526021361190823;
	setAttr -s 4 ".wl[199].w";
	setAttr ".wl[199].w[0]" 0.11491760840656827;
	setAttr ".wl[199].w[7]" 0.36182195745660267;
	setAttr ".wl[199].w[12]" 0.33216594998486454;
	setAttr ".wl[199].w[16]" 0.19109448415196462;
	setAttr -s 2 ".wl[200].w[5:6]"  0.073896169662475586 0.30064356327056885;
	setAttr -s 2 ".wl[201].w[5:6]"  0.11654293537139893 1;
	setAttr -s 2 ".wl[202].w[5:6]"  0.10142040252685547 0.61287164688110352;
	setAttr -s 2 ".wl[203].w[5:6]"  0.14131373167037964 1;
	setAttr -s 2 ".wl[204].w[5:6]"  0.89778244495391846 0.74731200933456421;
	setAttr -s 2 ".wl[205].w[5:6]"  0.94662976264953613 1;
	setAttr -s 2 ".wl[206].w[5:6]"  0.85034382343292236 0.46157169342041016;
	setAttr -s 2 ".wl[207].w[5:6]"  0.91868913173675537 1;
	setAttr -s 2 ".wl[208].w[12:13]"  0.10690295696258545 0.88006448745727539;
	setAttr -s 2 ".wl[209].w[12:13]"  0.1067732572555542 0.88012009859085083;
	setAttr -s 2 ".wl[210].w[12:13]"  0.037980556488037109 0.87312901020050049;
	setAttr -s 2 ".wl[211].w[12:13]"  0.037873148918151855 0.87339377403259277;
	setAttr -s 2 ".wl[212].w[12:13]"  0.77916693687438965 1;
	setAttr -s 2 ".wl[213].w[12:13]"  0.77883321046829224 1;
	setAttr -s 2 ".wl[214].w[12:13]"  0.91924583911895752 1;
	setAttr -s 2 ".wl[215].w[12:13]"  0.91907298564910889 1;
	setAttr -s 4 ".wl[216].w";
	setAttr ".wl[216].w[7]" 1.1316961587595728e-005;
	setAttr ".wl[216].w[8]" 0.85134883006740858;
	setAttr ".wl[216].w[9]" 0.1486285360094162;
	setAttr ".wl[216].w[16]" 1.1316961587595728e-005;
	setAttr -s 4 ".wl[217].w";
	setAttr ".wl[217].w[7]" 9.7813420767235961e-006;
	setAttr ".wl[217].w[8]" 0.49999021865792331;
	setAttr ".wl[217].w[9]" 0.49999021865792331;
	setAttr ".wl[217].w[16]" 9.7813420767235961e-006;
	setAttr -s 4 ".wl[218].w";
	setAttr ".wl[218].w[7]" 1.1672967668576681e-005;
	setAttr ".wl[218].w[8]" 0.84190662156526808;
	setAttr ".wl[218].w[9]" 0.1580700324993948;
	setAttr ".wl[218].w[16]" 1.1672967668576681e-005;
	setAttr -s 4 ".wl[219].w";
	setAttr ".wl[219].w[7]" 9.3358635832259659e-006;
	setAttr ".wl[219].w[8]" 0.4999906641364168;
	setAttr ".wl[219].w[9]" 0.4999906641364168;
	setAttr ".wl[219].w[16]" 9.3358635832259659e-006;
	setAttr -s 4 ".wl[220].w";
	setAttr ".wl[220].w[7]" 1.1672967668576681e-005;
	setAttr ".wl[220].w[8]" 0.84190662156526808;
	setAttr ".wl[220].w[9]" 0.1580700324993948;
	setAttr ".wl[220].w[16]" 1.1672967668576681e-005;
	setAttr -s 4 ".wl[221].w";
	setAttr ".wl[221].w[7]" 9.3358635832259659e-006;
	setAttr ".wl[221].w[8]" 0.4999906641364168;
	setAttr ".wl[221].w[9]" 0.4999906641364168;
	setAttr ".wl[221].w[16]" 9.3358635832259659e-006;
	setAttr -s 4 ".wl[222].w";
	setAttr ".wl[222].w[7]" 1.1316961587595728e-005;
	setAttr ".wl[222].w[8]" 0.85134883006740858;
	setAttr ".wl[222].w[9]" 0.1486285360094162;
	setAttr ".wl[222].w[16]" 1.1316961587595728e-005;
	setAttr -s 4 ".wl[223].w";
	setAttr ".wl[223].w[7]" 9.7813420767235961e-006;
	setAttr ".wl[223].w[8]" 0.49999021865792331;
	setAttr ".wl[223].w[9]" 0.49999021865792331;
	setAttr ".wl[223].w[16]" 9.7813420767235961e-006;
	setAttr -s 4 ".wl[224].w";
	setAttr ".wl[224].w[7]" 6.0388637948694483e-007;
	setAttr ".wl[224].w[8]" 0.9653627702958989;
	setAttr ".wl[224].w[9]" 0.034636021931342048;
	setAttr ".wl[224].w[16]" 6.0388637948694483e-007;
	setAttr -s 4 ".wl[225].w";
	setAttr ".wl[225].w[7]" 4.7354932388391618e-007;
	setAttr ".wl[225].w[8]" 0.9707544087625013;
	setAttr ".wl[225].w[9]" 0.029244644138850868;
	setAttr ".wl[225].w[16]" 4.7354932388391618e-007;
	setAttr -s 4 ".wl[226].w";
	setAttr ".wl[226].w[7]" 7.7640066100767579e-006;
	setAttr ".wl[226].w[8]" 0.99874173379095377;
	setAttr ".wl[226].w[9]" 0.0012427381958260884;
	setAttr ".wl[226].w[16]" 7.7640066100767579e-006;
	setAttr -s 4 ".wl[227].w";
	setAttr ".wl[227].w[7]" 8.8069530354225472e-006;
	setAttr ".wl[227].w[8]" 0.99855711855017359;
	setAttr ".wl[227].w[9]" 0.0014252675437556402;
	setAttr ".wl[227].w[16]" 8.8069530354225472e-006;
	setAttr -s 4 ".wl[228].w";
	setAttr ".wl[228].w[7]" 7.7640066100767579e-006;
	setAttr ".wl[228].w[8]" 0.99874173379095377;
	setAttr ".wl[228].w[9]" 0.0012427381958260884;
	setAttr ".wl[228].w[16]" 7.7640066100767579e-006;
	setAttr -s 4 ".wl[229].w";
	setAttr ".wl[229].w[7]" 8.8069530354225472e-006;
	setAttr ".wl[229].w[8]" 0.99855711855017359;
	setAttr ".wl[229].w[9]" 0.0014252675437556402;
	setAttr ".wl[229].w[16]" 8.8069530354225472e-006;
	setAttr -s 4 ".wl[230].w";
	setAttr ".wl[230].w[7]" 6.0388637948694483e-007;
	setAttr ".wl[230].w[8]" 0.9653627702958989;
	setAttr ".wl[230].w[9]" 0.034636021931342048;
	setAttr ".wl[230].w[16]" 6.0388637948694483e-007;
	setAttr -s 4 ".wl[231].w";
	setAttr ".wl[231].w[7]" 4.7354932388391618e-007;
	setAttr ".wl[231].w[8]" 0.9707544087625013;
	setAttr ".wl[231].w[9]" 0.029244644138850868;
	setAttr ".wl[231].w[16]" 4.7354932388391618e-007;
	setAttr -s 5 ".wl[232].w";
	setAttr ".wl[232].w[7]" 0.00015083841373393013;
	setAttr ".wl[232].w[10]" 0.49984916158626608;
	setAttr ".wl[232].w[11]" 0.49984916158626597;
	setAttr ".wl[232].w[14]" 0.00021023820052549705;
	setAttr ".wl[232].w[15]" 0.00015083841373393013;
	setAttr -s 5 ".wl[233].w";
	setAttr ".wl[233].w[7]" 0.00014994482464607712;
	setAttr ".wl[233].w[10]" 0.49985005517535391;
	setAttr ".wl[233].w[11]" 0.49985005517535391;
	setAttr ".wl[233].w[14]" 0.00020902437860217038;
	setAttr ".wl[233].w[15]" 0.00014994482464607712;
	setAttr -s 5 ".wl[234].w";
	setAttr ".wl[234].w[7]" 6.9854313907775286e-006;
	setAttr ".wl[234].w[10]" 0.49999301456860923;
	setAttr ".wl[234].w[11]" 0.49999301456860923;
	setAttr ".wl[234].w[14]" 1.003060790874351e-005;
	setAttr ".wl[234].w[15]" 6.9854313907775286e-006;
	setAttr -s 5 ".wl[235].w";
	setAttr ".wl[235].w[7]" 6.5795112967602262e-006;
	setAttr ".wl[235].w[10]" 0.4999934204887031;
	setAttr ".wl[235].w[11]" 0.49999342048870332;
	setAttr ".wl[235].w[14]" 9.4507503201436064e-006;
	setAttr ".wl[235].w[15]" 6.5795112967602262e-006;
	setAttr -s 5 ".wl[236].w";
	setAttr ".wl[236].w[7]" 6.9854313907775286e-006;
	setAttr ".wl[236].w[10]" 0.49999301456860923;
	setAttr ".wl[236].w[11]" 0.49999301456860923;
	setAttr ".wl[236].w[14]" 1.003060790874351e-005;
	setAttr ".wl[236].w[15]" 6.9854313907775286e-006;
	setAttr -s 5 ".wl[237].w";
	setAttr ".wl[237].w[7]" 6.5795112967602262e-006;
	setAttr ".wl[237].w[10]" 0.4999934204887031;
	setAttr ".wl[237].w[11]" 0.49999342048870332;
	setAttr ".wl[237].w[14]" 9.4507503201436064e-006;
	setAttr ".wl[237].w[15]" 6.5795112967602262e-006;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[7]" 0.00015083841373393013;
	setAttr ".wl[238].w[10]" 0.49984916158626608;
	setAttr ".wl[238].w[11]" 0.49984916158626597;
	setAttr ".wl[238].w[14]" 0.00021023820052549705;
	setAttr ".wl[238].w[15]" 0.00015083841373393013;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[7]" 0.00014994482464607712;
	setAttr ".wl[239].w[10]" 0.49985005517535391;
	setAttr ".wl[239].w[11]" 0.49985005517535391;
	setAttr ".wl[239].w[14]" 0.00020902437860217038;
	setAttr ".wl[239].w[15]" 0.00014994482464607712;
	setAttr -s 5 ".wl[240].w";
	setAttr ".wl[240].w[7]" 0.00043837574407160307;
	setAttr ".wl[240].w[10]" 0.49956162425592854;
	setAttr ".wl[240].w[11]" 0.49956162425592832;
	setAttr ".wl[240].w[14]" 0.00060152194988076925;
	setAttr ".wl[240].w[15]" 0.00043837574407160307;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[7]" 0.00042122990562007921;
	setAttr ".wl[241].w[10]" 0.4995787700943799;
	setAttr ".wl[241].w[11]" 0.4995787700943799;
	setAttr ".wl[241].w[14]" 0.00057816165645280596;
	setAttr ".wl[241].w[15]" 0.00042122990562007921;
	setAttr -s 5 ".wl[242].w";
	setAttr ".wl[242].w[7]" 0.00016991393291573007;
	setAttr ".wl[242].w[10]" 0.49983008606708429;
	setAttr ".wl[242].w[11]" 0.49983008606708429;
	setAttr ".wl[242].w[14]" 0.00023678338042384045;
	setAttr ".wl[242].w[15]" 0.00016991393291573007;
	setAttr -s 5 ".wl[243].w";
	setAttr ".wl[243].w[7]" 0.00015087023776969952;
	setAttr ".wl[243].w[10]" 0.49984912976223034;
	setAttr ".wl[243].w[11]" 0.49984912976223034;
	setAttr ".wl[243].w[14]" 0.00021035737084794992;
	setAttr ".wl[243].w[15]" 0.00015087023776969952;
	setAttr -s 5 ".wl[244].w";
	setAttr ".wl[244].w[7]" 0.00016991393291573007;
	setAttr ".wl[244].w[10]" 0.49983008606708429;
	setAttr ".wl[244].w[11]" 0.49983008606708429;
	setAttr ".wl[244].w[14]" 0.00023678338042384045;
	setAttr ".wl[244].w[15]" 0.00016991393291573007;
	setAttr -s 5 ".wl[245].w";
	setAttr ".wl[245].w[7]" 0.00015087023776969952;
	setAttr ".wl[245].w[10]" 0.49984912976223034;
	setAttr ".wl[245].w[11]" 0.49984912976223034;
	setAttr ".wl[245].w[14]" 0.00021035737084794992;
	setAttr ".wl[245].w[15]" 0.00015087023776969952;
	setAttr -s 5 ".wl[246].w";
	setAttr ".wl[246].w[7]" 0.00043837574407160307;
	setAttr ".wl[246].w[10]" 0.49956162425592854;
	setAttr ".wl[246].w[11]" 0.49956162425592832;
	setAttr ".wl[246].w[14]" 0.00060152194988076925;
	setAttr ".wl[246].w[15]" 0.00043837574407160307;
	setAttr -s 5 ".wl[247].w";
	setAttr ".wl[247].w[7]" 0.00042122990562007921;
	setAttr ".wl[247].w[10]" 0.4995787700943799;
	setAttr ".wl[247].w[11]" 0.4995787700943799;
	setAttr ".wl[247].w[14]" 0.00057816165645280596;
	setAttr ".wl[247].w[15]" 0.00042122990562007921;
	setAttr -s 5 ".wl[248].w";
	setAttr ".wl[248].w[7]" 0.000405479091269163;
	setAttr ".wl[248].w[10]" 0.49959452090873091;
	setAttr ".wl[248].w[11]" 0.4995945209087308;
	setAttr ".wl[248].w[14]" 0.00055672564816502501;
	setAttr ".wl[248].w[15]" 0.000405479091269163;
	setAttr -s 5 ".wl[249].w";
	setAttr ".wl[249].w[7]" 0.00040475750333855622;
	setAttr ".wl[249].w[10]" 0.49959524249666148;
	setAttr ".wl[249].w[11]" 0.49959524249666137;
	setAttr ".wl[249].w[14]" 0.00055577832120105083;
	setAttr ".wl[249].w[15]" 0.00040475750333855622;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[7]" 0.00014406571951601317;
	setAttr ".wl[250].w[10]" 0.49985593428048397;
	setAttr ".wl[250].w[11]" 0.49985593428048397;
	setAttr ".wl[250].w[14]" 0.0002009184918638679;
	setAttr ".wl[250].w[15]" 0.00014406571951601317;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[7]" 0.00014321724222251603;
	setAttr ".wl[251].w[10]" 0.49985678275777751;
	setAttr ".wl[251].w[11]" 0.49985678275777751;
	setAttr ".wl[251].w[14]" 0.00019976453724769258;
	setAttr ".wl[251].w[15]" 0.00014321724222251603;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[7]" 0.00014406571951601317;
	setAttr ".wl[252].w[10]" 0.49985593428048397;
	setAttr ".wl[252].w[11]" 0.49985593428048397;
	setAttr ".wl[252].w[14]" 0.0002009184918638679;
	setAttr ".wl[252].w[15]" 0.00014406571951601317;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[7]" 0.00014321724222251603;
	setAttr ".wl[253].w[10]" 0.49985678275777751;
	setAttr ".wl[253].w[11]" 0.49985678275777751;
	setAttr ".wl[253].w[14]" 0.00019976453724769258;
	setAttr ".wl[253].w[15]" 0.00014321724222251603;
	setAttr -s 5 ".wl[254].w";
	setAttr ".wl[254].w[7]" 0.000405479091269163;
	setAttr ".wl[254].w[10]" 0.49959452090873091;
	setAttr ".wl[254].w[11]" 0.4995945209087308;
	setAttr ".wl[254].w[14]" 0.00055672564816502501;
	setAttr ".wl[254].w[15]" 0.000405479091269163;
	setAttr -s 5 ".wl[255].w";
	setAttr ".wl[255].w[7]" 0.00040475750333855622;
	setAttr ".wl[255].w[10]" 0.49959524249666148;
	setAttr ".wl[255].w[11]" 0.49959524249666137;
	setAttr ".wl[255].w[14]" 0.00055577832120105083;
	setAttr ".wl[255].w[15]" 0.00040475750333855622;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[7]" 0.0004184236965621353;
	setAttr ".wl[256].w[10]" 0.49958157630343786;
	setAttr ".wl[256].w[11]" 0.49958157630343786;
	setAttr ".wl[256].w[14]" 0.00057451317842048078;
	setAttr ".wl[256].w[15]" 0.0004184236965621353;
	setAttr -s 5 ".wl[257].w";
	setAttr ".wl[257].w[7]" 0.00043430578429838178;
	setAttr ".wl[257].w[10]" 0.49956569421570163;
	setAttr ".wl[257].w[11]" 0.49956569421570163;
	setAttr ".wl[257].w[14]" 0.00059623892193827563;
	setAttr ".wl[257].w[15]" 0.00043430578429838178;
	setAttr -s 5 ".wl[258].w";
	setAttr ".wl[258].w[7]" 0.00014908639912018429;
	setAttr ".wl[258].w[10]" 0.49985091360087985;
	setAttr ".wl[258].w[11]" 0.49985091360087985;
	setAttr ".wl[258].w[14]" 0.00020794336719578638;
	setAttr ".wl[258].w[15]" 0.00014908639912018429;
	setAttr -s 5 ".wl[259].w";
	setAttr ".wl[259].w[7]" 0.00016651720915410176;
	setAttr ".wl[259].w[10]" 0.49983348279084605;
	setAttr ".wl[259].w[11]" 0.49983348279084583;
	setAttr ".wl[259].w[14]" 0.00023219807974176457;
	setAttr ".wl[259].w[15]" 0.00016651720915410176;
	setAttr -s 5 ".wl[260].w";
	setAttr ".wl[260].w[7]" 0.00014908639912018429;
	setAttr ".wl[260].w[10]" 0.49985091360087985;
	setAttr ".wl[260].w[11]" 0.49985091360087985;
	setAttr ".wl[260].w[14]" 0.00020794336719578638;
	setAttr ".wl[260].w[15]" 0.00014908639912018429;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[7]" 0.00016651720915410176;
	setAttr ".wl[261].w[10]" 0.49983348279084605;
	setAttr ".wl[261].w[11]" 0.49983348279084583;
	setAttr ".wl[261].w[14]" 0.00023219807974176457;
	setAttr ".wl[261].w[15]" 0.00016651720915410176;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[7]" 0.0004184236965621353;
	setAttr ".wl[262].w[10]" 0.49958157630343786;
	setAttr ".wl[262].w[11]" 0.49958157630343786;
	setAttr ".wl[262].w[14]" 0.00057451317842048078;
	setAttr ".wl[262].w[15]" 0.0004184236965621353;
	setAttr -s 5 ".wl[263].w";
	setAttr ".wl[263].w[7]" 0.00043430578429838178;
	setAttr ".wl[263].w[10]" 0.49956569421570163;
	setAttr ".wl[263].w[11]" 0.49956569421570163;
	setAttr ".wl[263].w[14]" 0.00059623892193827563;
	setAttr ".wl[263].w[15]" 0.00043430578429838178;
	setAttr -s 4 ".wl[264].w";
	setAttr ".wl[264].w[7]" 5.2992715544993385e-005;
	setAttr ".wl[264].w[8]" 0.49994700728445485;
	setAttr ".wl[264].w[9]" 0.49994700728445507;
	setAttr ".wl[264].w[16]" 5.2992715544993385e-005;
	setAttr -s 4 ".wl[265].w";
	setAttr ".wl[265].w[7]" 6.256504011080649e-005;
	setAttr ".wl[265].w[8]" 0.49993743495988918;
	setAttr ".wl[265].w[9]" 0.49993743495988918;
	setAttr ".wl[265].w[16]" 6.256504011080649e-005;
	setAttr -s 4 ".wl[266].w";
	setAttr ".wl[266].w[7]" 6.5789503920273425e-007;
	setAttr ".wl[266].w[8]" 0.49999934210496083;
	setAttr ".wl[266].w[9]" 0.49999934210496083;
	setAttr ".wl[266].w[16]" 6.5789503920273425e-007;
	setAttr -s 4 ".wl[267].w";
	setAttr ".wl[267].w[7]" 4.1010215380636793e-006;
	setAttr ".wl[267].w[8]" 0.49999589897846197;
	setAttr ".wl[267].w[9]" 0.49999589897846186;
	setAttr ".wl[267].w[16]" 4.1010215380636793e-006;
	setAttr -s 4 ".wl[268].w";
	setAttr ".wl[268].w[7]" 6.5789503920273425e-007;
	setAttr ".wl[268].w[8]" 0.49999934210496083;
	setAttr ".wl[268].w[9]" 0.49999934210496083;
	setAttr ".wl[268].w[16]" 6.5789503920273425e-007;
	setAttr -s 4 ".wl[269].w";
	setAttr ".wl[269].w[7]" 4.1010215380636793e-006;
	setAttr ".wl[269].w[8]" 0.49999589897846197;
	setAttr ".wl[269].w[9]" 0.49999589897846186;
	setAttr ".wl[269].w[16]" 4.1010215380636793e-006;
	setAttr -s 4 ".wl[270].w";
	setAttr ".wl[270].w[7]" 5.2992715544993385e-005;
	setAttr ".wl[270].w[8]" 0.49994700728445485;
	setAttr ".wl[270].w[9]" 0.49994700728445507;
	setAttr ".wl[270].w[16]" 5.2992715544993385e-005;
	setAttr -s 4 ".wl[271].w";
	setAttr ".wl[271].w[7]" 6.256504011080649e-005;
	setAttr ".wl[271].w[8]" 0.49993743495988918;
	setAttr ".wl[271].w[9]" 0.49993743495988918;
	setAttr ".wl[271].w[16]" 6.256504011080649e-005;
	setAttr -s 4 ".wl[272].w";
	setAttr ".wl[272].w[7]" 0.00017260655688287278;
	setAttr ".wl[272].w[8]" 0.49982739344311711;
	setAttr ".wl[272].w[9]" 0.49982739344311711;
	setAttr ".wl[272].w[16]" 0.00017260655688287278;
	setAttr -s 4 ".wl[273].w";
	setAttr ".wl[273].w[7]" 0.00017204024813661161;
	setAttr ".wl[273].w[8]" 0.49982795975186334;
	setAttr ".wl[273].w[9]" 0.49982795975186334;
	setAttr ".wl[273].w[16]" 0.00017204024813661161;
	setAttr -s 4 ".wl[274].w";
	setAttr ".wl[274].w[7]" 4.7761290083030715e-005;
	setAttr ".wl[274].w[8]" 0.49995223870991706;
	setAttr ".wl[274].w[9]" 0.49995223870991695;
	setAttr ".wl[274].w[16]" 4.7761290083030715e-005;
	setAttr -s 4 ".wl[275].w";
	setAttr ".wl[275].w[7]" 4.7244991806005329e-005;
	setAttr ".wl[275].w[8]" 0.49995275500819403;
	setAttr ".wl[275].w[9]" 0.49995275500819403;
	setAttr ".wl[275].w[16]" 4.7244991806005329e-005;
	setAttr -s 4 ".wl[276].w";
	setAttr ".wl[276].w[7]" 4.7761290083030715e-005;
	setAttr ".wl[276].w[8]" 0.49995223870991706;
	setAttr ".wl[276].w[9]" 0.49995223870991695;
	setAttr ".wl[276].w[16]" 4.7761290083030715e-005;
	setAttr -s 4 ".wl[277].w";
	setAttr ".wl[277].w[7]" 4.7244991806005329e-005;
	setAttr ".wl[277].w[8]" 0.49995275500819403;
	setAttr ".wl[277].w[9]" 0.49995275500819403;
	setAttr ".wl[277].w[16]" 4.7244991806005329e-005;
	setAttr -s 4 ".wl[278].w";
	setAttr ".wl[278].w[7]" 0.00017260655688287278;
	setAttr ".wl[278].w[8]" 0.49982739344311711;
	setAttr ".wl[278].w[9]" 0.49982739344311711;
	setAttr ".wl[278].w[16]" 0.00017260655688287278;
	setAttr -s 4 ".wl[279].w";
	setAttr ".wl[279].w[7]" 0.00017204024813661161;
	setAttr ".wl[279].w[8]" 0.49982795975186334;
	setAttr ".wl[279].w[9]" 0.49982795975186334;
	setAttr ".wl[279].w[16]" 0.00017204024813661161;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[7]" 8.4339089430161729e-005;
	setAttr ".wl[280].w[10]" 0.49991566091056988;
	setAttr ".wl[280].w[11]" 0.49991566091056988;
	setAttr ".wl[280].w[14]" 0.00012121301608247955;
	setAttr ".wl[280].w[15]" 8.4339089430161729e-005;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[7]" 6.7944387723638486e-005;
	setAttr ".wl[281].w[10]" 0.49993205561227638;
	setAttr ".wl[281].w[11]" 0.49993205561227638;
	setAttr ".wl[281].w[14]" 9.7211107239682305e-005;
	setAttr ".wl[281].w[15]" 6.7944387723638486e-005;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[7]" 3.3178657295136993e-006;
	setAttr ".wl[282].w[10]" 0.57141148297660904;
	setAttr ".wl[282].w[11]" 0.42858188129193198;
	setAttr ".wl[282].w[14]" 4.9081087688161333e-006;
	setAttr ".wl[282].w[15]" 3.3178657295136993e-006;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[7]" 3.6690898742975087e-007;
	setAttr ".wl[283].w[10]" 0.49999963309101259;
	setAttr ".wl[283].w[11]" 0.49999963309101259;
	setAttr ".wl[283].w[14]" 5.3747947245426378e-007;
	setAttr ".wl[283].w[15]" 3.6690898742975087e-007;
	setAttr -s 5 ".wl[284].w";
	setAttr ".wl[284].w[7]" 3.3178657295136993e-006;
	setAttr ".wl[284].w[10]" 0.57141148297660904;
	setAttr ".wl[284].w[11]" 0.42858188129193198;
	setAttr ".wl[284].w[14]" 4.9081087688161333e-006;
	setAttr ".wl[284].w[15]" 3.3178657295136993e-006;
	setAttr -s 5 ".wl[285].w";
	setAttr ".wl[285].w[7]" 3.6690898742975087e-007;
	setAttr ".wl[285].w[10]" 0.49999963309101259;
	setAttr ".wl[285].w[11]" 0.49999963309101259;
	setAttr ".wl[285].w[14]" 5.3747947245426378e-007;
	setAttr ".wl[285].w[15]" 3.6690898742975087e-007;
	setAttr -s 5 ".wl[286].w";
	setAttr ".wl[286].w[7]" 8.4339089430161729e-005;
	setAttr ".wl[286].w[10]" 0.49991566091056988;
	setAttr ".wl[286].w[11]" 0.49991566091056988;
	setAttr ".wl[286].w[14]" 0.00012121301608247955;
	setAttr ".wl[286].w[15]" 8.4339089430161729e-005;
	setAttr -s 5 ".wl[287].w";
	setAttr ".wl[287].w[7]" 6.7944387723638486e-005;
	setAttr ".wl[287].w[10]" 0.49993205561227638;
	setAttr ".wl[287].w[11]" 0.49993205561227638;
	setAttr ".wl[287].w[14]" 9.7211107239682305e-005;
	setAttr ".wl[287].w[15]" 6.7944387723638486e-005;
	setAttr -s 5 ".wl[288].w";
	setAttr ".wl[288].w[7]" 0.00017749603937981763;
	setAttr ".wl[288].w[10]" 0.49982250396062022;
	setAttr ".wl[288].w[11]" 0.49982250396062022;
	setAttr ".wl[288].w[14]" 0.0002472008139892221;
	setAttr ".wl[288].w[15]" 0.00017749603937981763;
	setAttr -s 5 ".wl[289].w";
	setAttr ".wl[289].w[7]" 0.00015741495022926946;
	setAttr ".wl[289].w[10]" 0.49984258504977075;
	setAttr ".wl[289].w[11]" 0.49984258504977075;
	setAttr ".wl[289].w[14]" 0.00021935441150349515;
	setAttr ".wl[289].w[15]" 0.00015741495022926946;
	setAttr -s 5 ".wl[290].w";
	setAttr ".wl[290].w[7]" 1.7419286613687157e-005;
	setAttr ".wl[290].w[10]" 0.4999825807133863;
	setAttr ".wl[290].w[11]" 0.4999825807133863;
	setAttr ".wl[290].w[14]" 2.4984236716298364e-005;
	setAttr ".wl[290].w[15]" 1.7419286613687157e-005;
	setAttr -s 5 ".wl[291].w";
	setAttr ".wl[291].w[7]" 7.0309455394455834e-006;
	setAttr ".wl[291].w[10]" 0.49999296905446061;
	setAttr ".wl[291].w[11]" 0.4999929690544605;
	setAttr ".wl[291].w[14]" 1.0095884168496885e-005;
	setAttr ".wl[291].w[15]" 7.0309455394455834e-006;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[7]" 1.7419286613687157e-005;
	setAttr ".wl[292].w[10]" 0.4999825807133863;
	setAttr ".wl[292].w[11]" 0.4999825807133863;
	setAttr ".wl[292].w[14]" 2.4984236716298364e-005;
	setAttr ".wl[292].w[15]" 1.7419286613687157e-005;
	setAttr -s 5 ".wl[293].w";
	setAttr ".wl[293].w[7]" 7.0309455394455834e-006;
	setAttr ".wl[293].w[10]" 0.49999296905446061;
	setAttr ".wl[293].w[11]" 0.4999929690544605;
	setAttr ".wl[293].w[14]" 1.0095884168496885e-005;
	setAttr ".wl[293].w[15]" 7.0309455394455834e-006;
	setAttr -s 5 ".wl[294].w";
	setAttr ".wl[294].w[7]" 0.00017749603937981763;
	setAttr ".wl[294].w[10]" 0.49982250396062022;
	setAttr ".wl[294].w[11]" 0.49982250396062022;
	setAttr ".wl[294].w[14]" 0.0002472008139892221;
	setAttr ".wl[294].w[15]" 0.00017749603937981763;
	setAttr -s 5 ".wl[295].w";
	setAttr ".wl[295].w[7]" 0.00015741495022926946;
	setAttr ".wl[295].w[10]" 0.49984258504977075;
	setAttr ".wl[295].w[11]" 0.49984258504977075;
	setAttr ".wl[295].w[14]" 0.00021935441150349515;
	setAttr ".wl[295].w[15]" 0.00015741495022926946;
	setAttr -s 4 ".wl[296].w";
	setAttr ".wl[296].w[7]" 0.00017978064287703938;
	setAttr ".wl[296].w[8]" 0.49982021935712301;
	setAttr ".wl[296].w[9]" 0.4998202193571229;
	setAttr ".wl[296].w[16]" 0.00017978064287703938;
	setAttr -s 4 ".wl[297].w";
	setAttr ".wl[297].w[7]" 0.00018898882218267604;
	setAttr ".wl[297].w[8]" 0.49981101117781745;
	setAttr ".wl[297].w[9]" 0.49981101117781723;
	setAttr ".wl[297].w[16]" 0.00018898882218267604;
	setAttr -s 4 ".wl[298].w";
	setAttr ".wl[298].w[7]" 5.0194461525903535e-005;
	setAttr ".wl[298].w[8]" 0.49994980553847396;
	setAttr ".wl[298].w[9]" 0.49994980553847418;
	setAttr ".wl[298].w[16]" 5.0194461525903535e-005;
	setAttr -s 4 ".wl[299].w";
	setAttr ".wl[299].w[7]" 5.9216500959727284e-005;
	setAttr ".wl[299].w[8]" 0.49994078349904031;
	setAttr ".wl[299].w[9]" 0.4999407834990402;
	setAttr ".wl[299].w[16]" 5.9216500959727284e-005;
	setAttr -s 4 ".wl[300].w";
	setAttr ".wl[300].w[7]" 5.0194461525903535e-005;
	setAttr ".wl[300].w[8]" 0.49994980553847396;
	setAttr ".wl[300].w[9]" 0.49994980553847418;
	setAttr ".wl[300].w[16]" 5.0194461525903535e-005;
	setAttr -s 4 ".wl[301].w";
	setAttr ".wl[301].w[7]" 5.9216500959727284e-005;
	setAttr ".wl[301].w[8]" 0.49994078349904031;
	setAttr ".wl[301].w[9]" 0.4999407834990402;
	setAttr ".wl[301].w[16]" 5.9216500959727284e-005;
	setAttr -s 4 ".wl[302].w";
	setAttr ".wl[302].w[7]" 0.00017978064287703938;
	setAttr ".wl[302].w[8]" 0.49982021935712301;
	setAttr ".wl[302].w[9]" 0.4998202193571229;
	setAttr ".wl[302].w[16]" 0.00017978064287703938;
	setAttr -s 4 ".wl[303].w";
	setAttr ".wl[303].w[7]" 0.00018898882218267604;
	setAttr ".wl[303].w[8]" 0.49981101117781745;
	setAttr ".wl[303].w[9]" 0.49981101117781723;
	setAttr ".wl[303].w[16]" 0.00018898882218267604;
	setAttr -s 4 ".wl[304].w";
	setAttr ".wl[304].w[7]" 4.2833579407602194e-005;
	setAttr ".wl[304].w[8]" 0.49995716642059224;
	setAttr ".wl[304].w[9]" 0.49995716642059246;
	setAttr ".wl[304].w[16]" 4.2833579407602194e-005;
	setAttr -s 4 ".wl[305].w";
	setAttr ".wl[305].w[7]" 5.9391493666698579e-005;
	setAttr ".wl[305].w[8]" 0.49994060850633337;
	setAttr ".wl[305].w[9]" 0.49994060850633326;
	setAttr ".wl[305].w[16]" 5.9391493666698579e-005;
	setAttr -s 4 ".wl[306].w";
	setAttr ".wl[306].w[7]" 5.3810592053567037e-007;
	setAttr ".wl[306].w[8]" 0.53622971176574452;
	setAttr ".wl[306].w[9]" 0.46376921202241445;
	setAttr ".wl[306].w[16]" 5.3810592053567037e-007;
	setAttr -s 4 ".wl[307].w";
	setAttr ".wl[307].w[7]" 5.1934335316019201e-006;
	setAttr ".wl[307].w[8]" 0.63949344579605649;
	setAttr ".wl[307].w[9]" 0.36049616733688039;
	setAttr ".wl[307].w[16]" 5.1934335316019201e-006;
	setAttr -s 4 ".wl[308].w";
	setAttr ".wl[308].w[7]" 5.3810592053567037e-007;
	setAttr ".wl[308].w[8]" 0.53622971176574452;
	setAttr ".wl[308].w[9]" 0.46376921202241445;
	setAttr ".wl[308].w[16]" 5.3810592053567037e-007;
	setAttr -s 4 ".wl[309].w";
	setAttr ".wl[309].w[7]" 5.1934335316019201e-006;
	setAttr ".wl[309].w[8]" 0.63949344579605649;
	setAttr ".wl[309].w[9]" 0.36049616733688039;
	setAttr ".wl[309].w[16]" 5.1934335316019201e-006;
	setAttr -s 4 ".wl[310].w";
	setAttr ".wl[310].w[7]" 4.2833579407602194e-005;
	setAttr ".wl[310].w[8]" 0.49995716642059224;
	setAttr ".wl[310].w[9]" 0.49995716642059246;
	setAttr ".wl[310].w[16]" 4.2833579407602194e-005;
	setAttr -s 4 ".wl[311].w";
	setAttr ".wl[311].w[7]" 5.9391493666698579e-005;
	setAttr ".wl[311].w[8]" 0.49994060850633337;
	setAttr ".wl[311].w[9]" 0.49994060850633326;
	setAttr ".wl[311].w[16]" 5.9391493666698579e-005;
	setAttr ".wl[312].w[1]"  1;
	setAttr ".wl[313].w[1]"  0.98049390316009521;
	setAttr -s 2 ".wl[314].w";
	setAttr ".wl[314].w[1]" 0.99964022636413574;
	setAttr ".wl[314].w[7]" 0.32145488262176514;
	setAttr -s 4 ".wl[315].w";
	setAttr ".wl[315].w[0]" 0.080354094505310059;
	setAttr ".wl[315].w[1]" 0.9766392707824707;
	setAttr ".wl[315].w[4]" 0.17789411544799805;
	setAttr ".wl[315].w[7]" 0.51431626081466675;
	setAttr -s 2 ".wl[316].w";
	setAttr ".wl[316].w[1]" 0.99964022636413574;
	setAttr ".wl[316].w[7]" 0.32043886184692383;
	setAttr -s 4 ".wl[317].w";
	setAttr ".wl[317].w[0]" 0.080354094505310059;
	setAttr ".wl[317].w[1]" 0.9766392707824707;
	setAttr ".wl[317].w[4]" 0.17789411544799805;
	setAttr ".wl[317].w[7]" 0.50155019760131836;
	setAttr ".wl[318].w[1]"  1;
	setAttr ".wl[319].w[1]"  0.98049390316009521;
	setAttr -s 2 ".wl[320].w[2:3]"  1 0.68207800388336182;
	setAttr -s 2 ".wl[321].w[2:3]"  1 0.70480811595916748;
	setAttr ".wl[322].w[1]"  1;
	setAttr ".wl[323].w[1]"  0.96440273523330688;
	setAttr ".wl[324].w[1]"  1;
	setAttr ".wl[325].w[1]"  0.96529197692871094;
	setAttr -s 2 ".wl[326].w[2:3]"  1 0.68061470985412598;
	setAttr -s 2 ".wl[327].w[2:3]"  1 0.70484548807144165;
	setAttr -s 2 ".wl[328].w";
	setAttr ".wl[328].w[1]" 0.010670661926269531;
	setAttr ".wl[328].w[7]" 0.3287428617477417;
	setAttr -s 2 ".wl[329].w";
	setAttr ".wl[329].w[4]" 0.44229048490524292;
	setAttr ".wl[329].w[7]" 0.55906182527542114;
	setAttr -s 5 ".wl[330].w";
	setAttr ".wl[330].w[0]" 0.11302958335643946;
	setAttr ".wl[330].w[7]" 0.41095204369809107;
	setAttr ".wl[330].w[12]" 0.078818892758387188;
	setAttr ".wl[330].w[14]" 0.32556337073496994;
	setAttr ".wl[330].w[15]" 0.39719948018708223;
	setAttr -s 4 ".wl[331].w";
	setAttr ".wl[331].w[0]" 0.11191056302053985;
	setAttr ".wl[331].w[7]" 0.40430071683474567;
	setAttr ".wl[331].w[12]" 0.079488003309968969;
	setAttr ".wl[331].w[16]" 0.40430071683474555;
	setAttr -s 5 ".wl[332].w";
	setAttr ".wl[332].w[0]" 0.11302958335643946;
	setAttr ".wl[332].w[7]" 0.41095204369809107;
	setAttr ".wl[332].w[12]" 0.078818892758387188;
	setAttr ".wl[332].w[14]" 0.32556337073496994;
	setAttr ".wl[332].w[15]" 0.39719948018708223;
	setAttr -s 4 ".wl[333].w";
	setAttr ".wl[333].w[0]" 0.11191056302053985;
	setAttr ".wl[333].w[7]" 0.40430071683474567;
	setAttr ".wl[333].w[12]" 0.079488003309968969;
	setAttr ".wl[333].w[16]" 0.40430071683474555;
	setAttr -s 2 ".wl[334].w";
	setAttr ".wl[334].w[1]" 0.010670661926269531;
	setAttr ".wl[334].w[7]" 0.32820558547973633;
	setAttr -s 2 ".wl[335].w";
	setAttr ".wl[335].w[4]" 0.44229048490524292;
	setAttr ".wl[335].w[7]" 0.49554020166397095;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.95577900872194965 -0.29408584883752387 1.170491703723566e-016 0
		 -0.29408584883752387 0.95577900872194976 3.6015129345340598e-017 0 -1.2246467991473532e-016 0 -1 0
		 0.053977494342352689 -0.45853046740308601 -6.6103365672356604e-018 1;
	setAttr ".pm[1]" -type "matrix" 0.12716431598536476 0.99188166468585037 4.4213002066909269e-018 0
		 -0.99188166468585048 0.12716431598536485 -2.044199209161663e-017 0 -2.08382687618775e-017 -1.7859146673798402e-018 1 0
		 0.39095973271387685 0.43061394489460619 8.9159637455291167e-018 1;
	setAttr ".pm[2]" -type "matrix" 3.053113317719179e-016 0.99999999999999978 4.4213002066909262e-018 0
		 -0.99999999999999978 3.8857805861880459e-016 -2.0441992091616623e-017 0 -2.0441992091616626e-017 -4.4213002066909339e-018 1 0
		 -0.84770525064423774 0.32545826587234289 -1.5889835331520755e-017 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999956 -8.3266726846886667e-017 4.4213002066909269e-018 0
		 1.6653345369377338e-016 0.99999999999999956 -2.0441992091616626e-017 0 -4.4213002066909385e-018 2.0441992091616623e-017 1 0
		 0.32545826587234283 2.0435751578030739 -4.0335798516264e-017 1;
	setAttr ".pm[4]" -type "matrix" -0.1420843849781987 -0.98985454868145506 1.1704917037235662e-016 0
		 -0.98985454868145506 0.1420843849781987 3.6015129345340605e-017 0 -5.2280598988401037e-017 -1.107444662095248e-016 -1 0
		 0.37584777265692004 0.27401110204195961 -4.9994759914080591e-017 1;
	setAttr ".pm[5]" -type "matrix" 0.007256293450713212 0.99997367275611648 5.4122853848835151e-018 0
		 -0.99997367275611659 0.0072562934507132398 -3.5126489690531599e-017 0 -3.5164838037862485e-017 -5.1572547772382705e-018 1 0
		 -0.8479736214976179 -0.14911015366059979 -3.0587854112644313e-017 1;
	setAttr ".pm[6]" -type "matrix" -0.95577900872194976 -0.29408584883752392 3.0602843960457089e-017 0
		 -0.29408584883752387 0.95577900872194987 -8.1922680681825022e-017 0 -5.157254777238282e-018 -8.729984187687283e-017 -1 0
		 -0.45027698123126664 2.0213817117676669 -1.7414411069758453e-016 1;
	setAttr ".pm[7]" -type "matrix" 0.99995194502508078 -0.0098034504414223327 -2.3950796524997009e-016 0
		 0.0098034504414223327 0.999951945025081 -3.7215705765709354e-017 0 2.3986129802782385e-016 3.4865912898248209e-017 1 0
		 0.057792527433381237 -2.1875714483586837 6.2409484930689122e-017 1;
	setAttr ".pm[8]" -type "matrix" 0.99991782735513512 -0.012819459325019291 -2.3950796524997014e-016 0
		 0.012819459325019291 0.99991782735513535 -3.721570576570936e-017 0 2.3996536947331483e-016 3.4142285034195962e-017 1 0
		 -2.1041052134793068 -2.1812349714015289 5.7938473108343695e-016 1;
	setAttr ".pm[9]" -type "matrix" -0.95577900872194965 -0.29408584883752381 3.5655713562232664e-016 0
		 -0.29408584883752387 0.95577900872194976 7.323083511104994e-017 0 -3.6232597794255915e-016 -3.4865912898248185e-017 -1 0
		 4.2149504576218124 -1.0353872588242625 -1.4910863245551373e-015 1;
	setAttr ".pm[10]" -type "matrix" -0.9998347517133227 0.01817881366751789 5.4850879775653474e-016 0
		 0.018178813667517897 0.9998347517133227 1.7032261493624026e-014 0 -2.3879184958844682e-016 1.7039418180823378e-014 -1 0
		 -2.0527725466058424 -2.192203979345301 -3.6863694988541269e-014 1;
	setAttr ".pm[11]" -type "matrix" 0.99995194502508122 -0.0098034504414223362 -7.1514642346965229e-016 0
		 0.0098034504414223258 0.999951945025081 -3.52236708859964e-017 0 7.1545737063810473e-016 2.8211075692531089e-017 1 0
		 3.7334179863639192 -2.2975636779899573 -2.6062846731887538e-015 1;
	setAttr ".pm[12]" -type "matrix" 0.014284256782849426 -0.9998979747995097 -2.3950796524997014e-016 0
		 0.99989797479950993 0.01428425678284943 -3.7215705765709348e-017 0 4.0633102103035587e-017 -2.3895193070428423e-016 1 0
		 -2.9485288859221264 -0.11732314338580874 9.1773283647088976e-017 1;
	setAttr ".pm[13]" -type "matrix" 0.99995194502508067 -0.009803450441422331 -2.3950796524997014e-016 0
		 0.009803450441422331 0.99995194502508089 -3.7215705765709354e-017 0 2.398612980278238e-016 3.4865912898248203e-017 1 0
		 0.026764470358030725 -3.7601245633714195 1.2468041491196708e-016 1;
	setAttr ".pm[15]" -type "matrix" -0.99983475171332259 0.01817881366751789 5.4850879775653464e-016 0
		 0.018178813667517946 0.99983475171332303 1.7032261493624033e-014 0 -2.3879184958844549e-016 1.7039418180823384e-014 -1 0
		 -1.0331250043004805 -2.2107430255690388 -3.742307307237657e-014 1;
	setAttr ".pm[16]" -type "matrix" 0.9999178273551349 -0.012819459325019291 -2.3950796524997005e-016 0
		 0.012819459325019322 0.99991782735513546 -3.7215705765709342e-017 0 2.3996536947331478e-016 3.4142285034195956e-017 1 0
		 -0.70407551700654603 -2.1991840700741898 2.4403891093872734e-016 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.07588291528223623 -1.5783646378704834 0 1;
	setAttr -s 16 ".ma";
	setAttr -s 16 ".dpf";
	setAttr ".dpf[0]" 4;
	setAttr ".dpf[1]" 4;
	setAttr ".dpf[2]" 4;
	setAttr ".dpf[3]" 4;
	setAttr ".dpf[4]" 4;
	setAttr ".dpf[5]" 4;
	setAttr ".dpf[6]" 4;
	setAttr ".dpf[7]" 4;
	setAttr ".dpf[8]" 4;
	setAttr ".dpf[9]" 4;
	setAttr ".dpf[10]" 4;
	setAttr ".dpf[11]" 4;
	setAttr ".dpf[12]" 4;
	setAttr ".dpf[13]" 4;
	setAttr ".dpf[15]" 4;
	setAttr ".dpf[16]" 4;
	setAttr -s 16 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
	setAttr -s 16 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "AA320666-4335-1E77-4B40-918C5FD600CA";
createNode objectSet -n "skinCluster1Set";
	rename -uid "9E4D892C-4B6D-E1F7-D2E2-DCA4B9E25DA7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "0A82F103-4191-18C1-72B7-699C7B0D612D";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "DC7ACA5A-44BD-56D0-14F3-8483BD8A55FB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "925EF347-49C0-2B17-E4D1-B492FD91A9EE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId46";
	rename -uid "1A4A9E30-4D0F-8E1D-D9E9-9D948434CEFC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "1BBCBE8D-45BD-A86B-D972-4C946275F85C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "BC8FE2A7-409E-93BD-0CB7-2D8A8CDC1223";
	setAttr -s 16 ".wm";
	setAttr -s 18 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0832567656882746 0.45412781284512732
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.14869598393710937 0.98888295786760072 9.1050030387323623e-018 6.0551617454196207e-017 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41178707024063466 1.1102230246251565e-016
		 -5.0429371750045958e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.76490436573084675 -0.64414385915406436 -3.9442435765172422e-017 4.6836884157305896e-017 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1903963501243804 2.7755575615628914e-017
		 2.4805799077049875e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.063711597508417941 0.99796835237542747 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1958699071588366 -4.3206991477059117e-016
		 2.4445963184743251e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.35426070093884093 -0.23562867699535736
		 4.3384423346844925e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.53530202325229426 0.84466072709816464 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1920652783735177 2.2204460492503131e-016
		 -6.2321886786642562e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9971954378523743 -0.074841557482534529 -4.5827236907094276e-018 6.1060610054512681e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2175770427492887 -7.7715611723760958e-016
		 4.2815899506898268e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.80222898645160556 0.59701645982069007 -3.6556714827884623e-017 4.9122358022059209e-017 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.51342715124739013 1.6549644547730773
		 6.2876691737046041e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.14384690676156395 0.98959995322106298 8.8080826966398526e-018 6.0595520757427258e-017 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3405313796465723 -0.017186299738996436
		 -3.2109432826309051e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6482338084477612 7.6716411001598317e-014
		 -3.9551903482257842e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.14235432657609426 0.98981576351615386 8.716688519309541e-018 6.0608735326782567e-017 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1049720800423615 -0.020090401455319373
		 -6.0618707855472027e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7434690721885939 -4.4894643558279697e-015
		 -4.1632620444824435e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.013991254759087954 0.99990211760465153 8.4980954317438881e-015 1.1891065741255026e-016 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.01152174817034636 0.76292788668233547
		 -2.9363798716399867e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.69853918265345949 0.71557180652806385 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.80986017708994129 1.7347234759768071e-017
		 -3.2907131264878071e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.69853918265345949 0.71557180652806385 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 0.99999999999999978 1 1 3.1415926535897762
		 -9.8607613152626498e-032 3.1136092310375161 0 -0.91307191512230124 0.051212648823100171
		 2.1722503900083133e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 4.9303806576313227e-032 0.0030162029935580947 0 0.75523166626771121 0.013726249668128521
		 -1.8162942600803828e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0958087854799867 0.00058333673467436935
		 -5.0272375427112884e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0015081009251156168 0.99999886281515327 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 6.2831853071795862 -3.0900083250656415e-016
		 6.2831853071795862 0 -2.0181735119045419 0.062046978203317761 4.8191839367315848e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.013991254759087954 0.99990211760465153 8.4980954317438881e-015 1.1891065741255026e-016 1
		 1 1 yes;
	setAttr -s 16 ".m";
	setAttr -s 18 ".p";
	setAttr ".bp" yes;
createNode skinBinding -n "skinBinding1";
	rename -uid "A9B2781B-4850-D2B2-B0FD-769F6CB654EF";
	setAttr -s 14 ".l[0:13]"  0.17725863775735895 0.62247738928438223 
		0.27429909979613071 0.075697688395388429 0.80930356180644836 0.26946745299836894 
		0.025309610515415942 0.44761245324731802 0.68671132703793047 0.25389525648689615 
		0.63594802949751028 0.28117773016332914 0 0.38668087438898086;
	setAttr -s 14 ".rr[0:13]"  0.23465855274457778 0.57031186829815184 
		0.64238126096559955 0.64238126096559933 0.57019824590921109 0.64323340390755734 0.73744972380956431 
		1.2822948807167047 0.28565063823710524 0.34539427612238399 0.30045975507695727 0.33705385889822731 
		1.4044544848986491 0.86996964044432867;
	setAttr -s 14 ".lr[0:13]"  0.23465855274457778 0.57031186829815184 
		0.64238126096559955 0.64238126096559933 0.57019824590921109 0.64323340390755734 0.64340865495761657 
		1.2773424637006754 0.28565063823710524 0.34539427612238399 0.30045975507695727 0.33705385889822731 
		1.4044544848986491 0.9005572897897266;
	setAttr -s 14 ".bpm";
	setAttr ".bpm[0]" -type "matrix" -0.95577900872194999 -0.29408584883752392 -1.2246467991473532e-016 0
		 -0.29408584883752392 0.95577900872194987 3.0814879110195774e-033 0 1.1704917037235662e-016 3.6015129345340598e-017 -1 0
		 -0.0832567656882746 0.45412781284512732 0 1;
	setAttr ".bpm[1]" -type "matrix" 0.1271643159853649 -0.99188166468585082 -2.0838268761877503e-017 0
		 0.99188166468585093 0.12716431598536482 -1.7859146673798279e-018 0 4.4213002066909431e-018 -2.0441992091616633e-017 1 0
		 -0.47683420348738448 0.33302706275309329 6.1629758220391547e-033 1;
	setAttr ".bpm[2]" -type "matrix" 3.8857805861880479e-016 -1.0000000000000002 -2.0441992091616633e-017 0
		 1.0000000000000002 3.0531133177191805e-016 -4.4213002066909215e-018 0 4.4213002066909431e-018 -2.0441992091616633e-017 1 0
		 -0.32545826587234267 -0.84770525064423796 9.2444637330587321e-033 1;
	setAttr ".bpm[3]" -type "matrix" 1.0000000000000004 8.3266726846886741e-017 -4.4213002066909269e-018 0
		 -1.6653345369377353e-016 1.0000000000000004 2.0441992091616636e-017 0 4.4213002066909431e-018 -2.0441992091616633e-017 1 0
		 -0.32545826587234261 -2.0435751578030747 9.2444637330587321e-033 1;
	setAttr ".bpm[4]" -type "matrix" -0.1420843849781987 -0.98985454868145506 -5.2280598988401031e-017 0
		 -0.98985454868145506 0.1420843849781987 -1.1074446620952479e-016 0 1.1704917037235662e-016 3.6015129345340598e-017 -1 0
		 0.32463323536883637 0.33310192846541542 6.1629758220391547e-033 1;
	setAttr ".bpm[5]" -type "matrix" 0.0072562934507132415 -0.9999736727561167 -3.5164838037862479e-017 0
		 0.99997367275611682 0.0072562934507132137 -5.1572547772382728e-018 0 5.4122853848835159e-018 -3.5126489690531612e-017 1 0
		 0.15525937343726967 -0.84686930965783602 1.8488927466117464e-032 1;
	setAttr ".bpm[6]" -type "matrix" -0.95577900872194987 -0.29408584883752392 -5.1572547772382566e-018 0
		 -0.29408584883752387 0.95577900872194976 -8.7299841876872842e-017 0 3.0602843960457107e-017 -8.1922680681824985e-017 -1 0
		 0.16409446975830935 -2.0644142969593737 -6.1629758220391547e-033 1;
	setAttr ".bpm[7]" -type "matrix" 0.99995194502508122 0.0098034504414223345 2.3986129802782385e-016 0
		 -0.0098034504414223345 0.999951945025081 3.4865912898248203e-017 0 -2.3950796524997019e-016 -3.721570576570936e-017 1 0
		 -0.079235498495979759 2.1868997584890217 -1.2325951644078309e-032 1;
	setAttr ".bpm[8]" -type "matrix" 0.99991782735513557 0.012819459325019295 2.3996536947331483e-016 0
		 -0.012819459325019295 0.99991782735513535 3.4142285034195956e-017 0 -2.3950796524997019e-016 -3.721570576570936e-017 1 0
		 2.0759700605946501 2.2080292247546165 8.6281661508548166e-032 1;
	setAttr ".bpm[9]" -type "matrix" -0.95577900872194999 -0.29408584883752387 -3.623259779425591e-016 0
		 -0.29408584883752392 0.95577900872194987 -3.4865912898248197e-017 0 3.5655713562232679e-016 7.3230835111049953e-017 -1 0
		 3.7240684293110151 2.2291586910202108 1.3558546808486143e-031 1;
	setAttr ".bpm[10]" -type "matrix" -0.9998347517133227 0.01817881366751789 -2.3879184958844692e-016 0
		 0.018178813667517897 0.9998347517133227 1.7039418180823375e-014 0 5.4850879775653484e-016 1.7032261493624029e-014 -1 0
		 -2.012581661797868 2.2291586910202108 -1.2325951644078309e-032 1;
	setAttr ".bpm[11]" -type "matrix" 0.99995194502508078 0.0098034504414223345 7.1545737063810473e-016 0
		 -0.0098034504414223241 0.999951945025081 2.8211075692530263e-017 0 -7.15146423469652e-016 -3.5223670885997232e-017 1 0
		 -3.7557626287094079 2.2608528904186032 -1.2325951644078309e-032 1;
	setAttr ".bpm[12]" -type "matrix" 0.014284256782849437 0.99989797479951015 4.0633102103035587e-017 0
		 -0.99989797479951037 0.014284256782849433 -2.3895193070428428e-016 0 -2.3950796524997019e-016 -3.721570576570936e-017 1 0
		 -0.075193629730422096 2.9499039355780843 -1.2325951644078309e-032 1;
	setAttr ".bpm[13]" -type "matrix" 0.99995194502508133 0.0098034504414223362 2.398612980278239e-016 0
		 -0.0098034504414223362 0.99995194502508111 3.4865912898248209e-017 0 -2.3950796524997019e-016 -3.721570576570936e-017 1 0
		 -0.063625379002665475 3.7596814865210892 -2.4651903288156619e-032 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.07588291528223623 -1.5783646378704834 0 1;
	setAttr -s 14 ".pm";
	setAttr -s 14 ".lm";
	setAttr ".lm[0]" -type "matrix" 0.90647529522301307 0.29116633454670598 -0.30581809099035806 0
		 0.29116633454670598 0.093524704776987266 0.95208996172788884 0 0.30581809099035806 -0.95208996172788884 3.3306690738754696e-016 0
		 -0.021774565447092477 0.067789793324611741 6.8344276841213838e-017 1;
	setAttr ".lm[1]" -type "matrix" 4.4408920985006281e-016 0 1.0000000000000004 0 0.24153659816109233 0.97039171046993422 -1.1102230246251553e-016 0
		 -0.97039171046993511 0.24153659816109255 4.4408920985006252e-016 0 0.55177091177300275 1.2865226999914696e-017 2.2045689058547892e-017 1;
	setAttr ".lm[2]" -type "matrix" 2.2204460492503131e-016 3.613017705221034e-016 1 0
		 1.6654103579008564e-016 0.46094718979490068 -1.6654103579008566e-016 0 -1 3.6130177052210345e-016 2.2204460492503131e-016 0
		 0.87223405337554905 -3.1513970779425674e-016 -4.8683653653151952e-017 1;
	setAttr ".lm[3]" -type "matrix" 0.48334588495016084 -6.7309377941167976e-017 -6.7309377941167988e-017 0
		 -2.6129574110684941e-016 4.1663428487792979e-016 -1.8763540101260177 0 1.3925716559707226e-016 1 2.2204460492503131e-016 0
		 3.3950508615628257e-018 0.024379721122474163 5.4133855448222163e-018 1;
	setAttr ".lm[4]" -type "matrix" 1.143954145665715e-015 0 -1.4719747040425852 0 0.097926746216782767 0.69237908281940508 7.7634558222984459e-017 0
		 0.99014564790473958 -0.14004140793102227 7.7715611723760918e-016 0 0.36505612967035928 0.05450507622889228 2.0126144409210387e-017 1;
	setAttr ".lm[5]" -type "matrix" 2.2204460492503131e-016 6.3828085611961858e-016 1 0
		 2.9424890803428183e-016 0.46100224566211556 -2.9424890803428193e-016 0 -1 6.3828085611961878e-016 2.2204460492503131e-016 0
		 0.87825597437301328 -5.6057397521497685e-016 -3.842584438772814e-017 1;
	setAttr ".lm[6]" -type "matrix" 0.59404989940267827 0.17807626818523051 0.0014976604241678162 0
		 0.0051484739673954482 0.0015433400996871184 -2.2256598586115119 0 -0.28714269340634163 0.95788781891375474 4.4408920985006232e-016 0
		 -0.13897314149506251 -0.0060155002931196674 3.0814879110195774e-032 1;
	setAttr ".lm[7]" -type "matrix" 1.625329631717948 -0.46146866753360705 -0.47970824215553792 0
		 -0.55199388890693901 0.15672382969560178 -2.0210100136526794 0 0.27312773572521343 0.96197777519941596 0 0
		 -0.11465242327234472 -0.40381502364781752 -1.4143322528654916e-017 1;
	setAttr ".lm[8]" -type "matrix" -3.4990290368508256e-016 -7.3346058431507749e-014 -1.5758225866519924 0
		 -7.6675103826686129e-014 1.6473463336384881 -7.6675103826686129e-014 0 1 4.6544616794292482e-014 -2.2204460492503131e-016 0
		 0.7495907093579155 3.4889412319626044e-014 -1.8121137791571009e-016 1;
	setAttr ".lm[9]" -type "matrix" 0.14269559013731806 -0.48583314635381325 -1.7239795454278599 0
		 -0.62111261885338376 2.1146911237215469 -0.64734937073523335 0 0.95947049141014651 0.2818091128994446 -4.4408920985006262e-016 0
		 -0.21841541977602785 -0.064151483804550602 1.0109318843651954e-016 1;
	setAttr ".lm[10]" -type "matrix" -4.8496713287459197e-016 5.6240912868613662e-015 -2.1840977989009502 0
		 3.3147856498489808e-015 1.2872863672353254 3.3147856498489804e-015 0 1 -2.5750180645259744e-015 -2.2204460492503131e-016 0
		 0.87356175836005934 -2.2494373082562271e-015 -2.0856882707023358e-016 1;
	setAttr ".lm[11]" -type "matrix" 0.0017580481211967112 0.06280822873756825 -2.2447728327751268 0
		 0.054940822696515387 1.9628221306035101 0.054962341025705234 0 0.9996084895805325 -0.027979770523113821 -4.4408920985006262e-016 0
		 -0.281067646152248 0.0078672883661799684 1.2486799601566696e-016 1;
	setAttr ".lm[12]" -type "matrix" 1.9580654187769707e-016 -1.8888922454692061e-017 -0.88183426903710194 0
		 -2.4378258524706269e-017 1.138105354505905 -2.4378258524706278e-017 0 1 2.1420036755112021e-017 2.2204460492503131e-016 0
		 0.037701511273924571 8.0756775721073428e-019 -9.7994689989769815e-017 1;
	setAttr ".lm[13]" -type "matrix" 2.0814223247677028 -0.050147729354255988 -0.050162281947719344 0
		 -0.043068356050629496 0.001037646342724477 -1.7881059214225572 0 0.024086020595673531 0.99970988972394625 1.1102230246251565e-016 0
		 -0.00018266988717377617 -0.0075818623519396944 -8.4200008814421972e-019 1;
	setAttr ".otw" -type "doubleArray" 336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99938809871673584 1 0.99930679798126221 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.38451099395751953 0 0.38451099395751953
		 0 1 0 0.99931806325912476 1 0.52148681879043579 1 0.52148681879043579 1 0.99931806325912476
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.17789411544799805
		 0 0.17789411544799805 0 0 0 0 0 0 0 0 0 0 0 0.44229048490524292 0 0 0 0 0 0.44229048490524292 ;
	setAttr -s 3 ".fc[0:2]"  0 1 2 0.5 1 2 1 0 2;
	setAttr ".ci" 4;
createNode animCurveTA -n "joint1_rotateX";
	rename -uid "BBE4870C-4D49-B83A-F78D-DDB018DF9A7A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 0 6 -10.577449532107085 20 -4.0569464134936419
		 23 -26.165491087310293 26 -0.010086908089682359;
createNode animCurveTA -n "joint1_rotateY";
	rename -uid "B8B0E6F0-44AB-B603-E92E-C5AFF35F7E11";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 0 6 0 20 0 23 1.6462797470010939 26 1.6462797470010975;
createNode animCurveTA -n "joint1_rotateZ";
	rename -uid "A7D41BFD-4F52-9DC9-83A0-CB87B6B43E63";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 0 6 0 20 0 23 5.1999890495778063 26 5.1999890495778143;
createNode animCurveTU -n "joint1_visibility";
	rename -uid "ADFAC223-4FE6-2903-E8D9-1AB991C43435";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 1 3 1 6 1 20 1 23 1 26 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "24A83AF9-43BB-BE30-AE01-08AF2559B050";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -0.0832567656882746 3 -0.0832567656882746
		 6 -0.0832567656882746 20 -0.0832567656882746 23 -0.0832567656882746 26 -0.0832567656882746;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "F8835872-44FE-CEC2-6943-969F93830373";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.45412781284512732 3 0.45412781284512732
		 6 0.45412781284512732 20 0.45412781284512732 23 0.45412781284512732 26 0.45412781284512732;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "3350822E-4032-34DF-8BD8-AF9FDA1811A6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 0 6 0 20 0 23 0 26 0;
createNode animCurveTU -n "joint1_scaleX";
	rename -uid "B5E9A3AC-48C4-52A3-7F8F-E2B674975651";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 3 1 6 1 20 1 23 1 26 1;
createNode animCurveTU -n "joint1_scaleY";
	rename -uid "5C455731-4576-53AF-7A49-5DB2E8DC927F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 3 1 6 1 20 1 23 1 26 1;
createNode animCurveTU -n "joint1_scaleZ";
	rename -uid "A3FE6AB2-4540-E5A1-9E37-0D82A162A0BB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 3 1 6 1 20 1 23 1 26 1;
createNode animCurveTA -n "joint9_rotateX";
	rename -uid "94B051C0-438A-FAAC-B790-86890DFA198F";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 13.122814166433967 9 48.72236431714056
		 12 44.431686255407328 15 4.3185199232849198 20 159.19106820742445 23 159.19106820742445
		 26 159.19106820742445 30 27.344585450113215 35 27.344585450113215;
createNode animCurveTA -n "joint9_rotateY";
	rename -uid "8B95B791-4D1F-6C28-3D2C-1B91885BBF16";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 -3.5209631065221276 9 16.278873295139324
		 12 6.6908630543978438 15 -34.692249891892793 20 -42.71232305337923 23 -42.71232305337923
		 26 -42.71232305337923 30 9.8348846707292186 35 9.8348846707292186;
createNode animCurveTA -n "joint9_rotateZ";
	rename -uid "023F450A-449F-E7B7-6BED-41854338DC0F";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 -32.400433926345535 6 -54.400400880709249
		 9 -42.598518077453953 12 -39.497726735747896 15 -10.227524883225687 20 -130.17648109312424
		 23 -130.17648109312424 26 -130.17648109312424 30 -43.621620413011762 35 -43.621620413011762;
createNode animCurveTU -n "joint9_visibility";
	rename -uid "19E22335-49DD-F1E6-A439-A2803948A929";
	setAttr ".tan" 9;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 35 1;
	setAttr -s 11 ".kot[0:10]"  5 5 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTL -n "joint9_translateX";
	rename -uid "A859AFD6-49C3-6E3E-CF21-81BF1ABD3B39";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1.6996802552197556 3 1.6996802552197556
		 6 1.6794222700948116 9 1.6260249475365365 12 1.5690490973986597 15 1.5142921516277392
		 20 1.4539334016204175 23 1.4539334016204175 26 1.4539334016204175 30 1.4539334016204175
		 35 1.4539334016204175;
createNode animCurveTL -n "joint9_translateY";
	rename -uid "058679B3-4D0A-5046-A70F-3BA560769174";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 0.0058413958614808069 3 0.0058413958614808069
		 6 -0.0029100662339321274 9 -0.025977742531308325 12 -0.050591344886087943 15 -0.074246379019949738
		 20 -0.10032139678927804 23 -0.10032139678927804 26 -0.10032139678927804 30 -0.10032139678927804
		 35 -0.10032139678927804;
createNode animCurveTL -n "joint9_translateZ";
	rename -uid "1C64A5E4-4C68-B7FD-1497-50AE5CA86EED";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 -4.0783953289591664e-016 3 -4.0783953289591664e-016
		 6 -0.001711932072522635 9 -0.0062243545050234567 12 -0.011039186031654416 15 -0.015666505649499757
		 20 -0.020767214399823004 23 -0.020767214399823004 26 -0.020767214399823004 30 -0.020767214399823004
		 35 -0.020767214399823004;
createNode animCurveTU -n "joint9_scaleX";
	rename -uid "26D58D73-4B07-1885-3914-739E72FC0023";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 35 1;
createNode animCurveTU -n "joint9_scaleY";
	rename -uid "D7D8B0D7-401C-B711-3244-2BBA3E07C30E";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 35 1;
createNode animCurveTU -n "joint9_scaleZ";
	rename -uid "EABE3750-43D1-EC55-6D59-329020C3926D";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 35 1;
createNode animCurveTA -n "joint10_rotateX";
	rename -uid "E4FA2938-4D40-4EFA-32AE-3F9F4B205A1B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 26 0 30 0 35 0;
createNode animCurveTA -n "joint10_rotateY";
	rename -uid "210D7AC7-444C-F9B9-B21D-D392E232E37D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 111.97235022031097 23 111.97235022031097
		 26 111.97235022031097 30 276.15938094165068 35 276.15938094165068;
createNode animCurveTA -n "joint10_rotateZ";
	rename -uid "015C2220-4849-C3D0-F31E-66829C5AB3D0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 26 0 30 0 35 0;
createNode animCurveTU -n "joint10_visibility";
	rename -uid "07FAD0A5-4ED3-3C08-15BD-C8B9E2A43302";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 35 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "joint10_translateX";
	rename -uid "40685E2B-4F18-EE39-CE4C-C381DA3991D8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.6482338084477612 20 1.6482338084477612
		 23 1.6482338084477612 26 1.6482338084477612 30 1.6482338084477612 35 1.6482338084477612;
createNode animCurveTL -n "joint10_translateY";
	rename -uid "63A7775D-431A-DC2D-F718-8B80AAD91DDC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 7.6716411001598317e-014 20 7.6716411001598317e-014
		 23 7.6716411001598317e-014 26 7.6716411001598317e-014 30 7.6716411001598317e-014
		 35 7.6716411001598317e-014;
createNode animCurveTL -n "joint10_translateZ";
	rename -uid "46E65CC5-46B3-D73B-3569-E28D46047AEC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -3.9551903482257842e-016 20 -3.9551903482257842e-016
		 23 -3.9551903482257842e-016 26 -3.9551903482257842e-016 30 -3.9551903482257842e-016
		 35 -3.9551903482257842e-016;
createNode animCurveTU -n "joint10_scaleX";
	rename -uid "014EB09A-4B52-DBDA-C1D9-9299E26AEF3A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 35 1;
createNode animCurveTU -n "joint10_scaleY";
	rename -uid "9EA5620B-4219-6BD9-B7F9-79B6708522F2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 35 1;
createNode animCurveTU -n "joint10_scaleZ";
	rename -uid "A7467D6E-4898-E1CF-E6C5-5F8A51DE489B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 35 1;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "0ACE6E08-4ACD-E62E-7F00-24A3BC09CFD6";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 -0.57739499242444881 6 -0.9750381672970555
		 9 -0.6245936605283221 12 -0.61717338134207844 15 -0.61201312466596403 20 -0.58146149478982456
		 23 -0.82429218817586503 26 -0.58309221684912482;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "0FF860AE-44B3-FA3B-1517-5BBE8C3B782F";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 6.3790605582764046 6 53.947319943901171
		 9 23.261479244885223 12 -21.602978064584242 15 20.348256435330462 20 15.010702941694538
		 23 45.881151167696522 26 10.231305052334227;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "CC9B19C5-4A84-F285-D208-D295CE44469A";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 -5.182799638226717 6 -5.9069671235204684
		 9 -5.3653233234617996 12 -4.8914114971754969 15 -5.3314652499503596 20 -5.2857023005816224
		 23 -5.7104225351068454 26 -5.222219329206899;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "4E260219-4A3F-D510-F926-ADA59EE3E11B";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "7685617F-44B9-3A86-2CB3-6C913097C915";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.35426070093884093 3 -0.35426070093884093
		 6 -0.35426070093884093 9 -0.35426070093884093 12 -0.35426070093884093 15 -0.35426070093884093
		 20 -0.35426070093884093 23 -0.35426070093884093 26 -0.35426070093884093;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "6BA502A9-432F-BBB1-9289-25BA52FD7251";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.23562867699535736 3 -0.23562867699535736
		 6 -0.23562867699535736 9 -0.23562867699535736 12 -0.23562867699535736 15 -0.23562867699535736
		 20 -0.23562867699535736 23 -0.23562867699535736 26 -0.23562867699535736;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "DFA6692A-48CC-573C-AC74-6B938B187858";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 4.3384423346844925e-017 3 4.3384423346844925e-017
		 6 4.3384423346844925e-017 9 4.3384423346844925e-017 12 4.3384423346844925e-017 15 4.3384423346844925e-017
		 20 4.3384423346844925e-017 23 4.3384423346844925e-017 26 4.3384423346844925e-017;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "8CF86964-44F0-087F-F9BD-F9990F99A366";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "00C898DF-4977-75DE-F23A-889491A1A9F7";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "6FBE2B8F-4CB6-E6CF-2873-B495781E7BEE";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
createNode animCurveTA -n "joint6_rotateX";
	rename -uid "AB3F88BB-41FF-8857-D8DB-B5BA646135D1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint6_rotateY";
	rename -uid "469D61E9-436E-510E-56EF-C3BF8D241A0E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 29.542743749561261;
createNode animCurveTA -n "joint6_rotateZ";
	rename -uid "269A58D4-480C-1A29-3770-8FB66D6091C6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint6_visibility";
	rename -uid "A385C087-4A91-2B18-C171-1D8185F81E94";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint6_translateX";
	rename -uid "2DDA4393-420B-5D92-0059-80831AC276DD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1.1920652783735177 3 1.1920652783735177;
createNode animCurveTL -n "joint6_translateY";
	rename -uid "F71BDD5B-42B4-95C7-89B8-F7ABEC1A2B93";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.2204460492503131e-016 3 2.2204460492503131e-016;
createNode animCurveTL -n "joint6_translateZ";
	rename -uid "41E093FC-4007-37A7-6F71-B4A18BB1C54D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -6.2321886786642562e-017 3 -6.2321886786642562e-017;
createNode animCurveTU -n "joint6_scaleX";
	rename -uid "1D2EE05F-4FDB-44DC-9B60-4AB7CF5FE0BF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint6_scaleY";
	rename -uid "4727986F-4846-19D8-DC91-97B3727B6C6E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint6_scaleZ";
	rename -uid "F4388DDB-45C1-FA57-0F79-378652F7DB46";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTA -n "joint7_rotateX";
	rename -uid "A4705D53-4D55-6657-1C8B-8C81F613F530";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 9.0533779933403178;
createNode animCurveTA -n "joint7_rotateY";
	rename -uid "D31757B7-4B5A-4E92-AA37-8F846DFB1279";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint7_rotateZ";
	rename -uid "A8413603-45C2-DB65-29DD-E59F643447CC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint7_visibility";
	rename -uid "07462566-44C5-7E22-B8A1-8A839FC5B866";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint7_translateX";
	rename -uid "BF8E9C3B-4A83-D70A-63EC-25A040D2E311";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1.2175770427492887 3 1.2175770427492887;
createNode animCurveTL -n "joint7_translateY";
	rename -uid "A362932B-454B-56C0-4D91-E9A0E26BE1DE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -7.7715611723760958e-016 3 -7.7715611723760958e-016;
createNode animCurveTL -n "joint7_translateZ";
	rename -uid "98D9F0AA-4C04-4249-5E89-91AD9792B143";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 4.2815899506898268e-017 3 4.2815899506898268e-017;
createNode animCurveTU -n "joint7_scaleX";
	rename -uid "25437C99-4D14-2A23-1BCA-3387F043A10A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint7_scaleY";
	rename -uid "59C0D5A6-4E78-1D7E-CC4B-DE83DC7D975C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint7_scaleZ";
	rename -uid "0F155088-46EE-1B76-8BF2-B5B8A437F4E1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTA -n "joint4_rotateX";
	rename -uid "9E2BC1CE-416C-9839-DADB-1184DD091042";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 -10.884857369476785;
createNode animCurveTA -n "joint4_rotateY";
	rename -uid "FF94E732-42FD-0FA3-FE05-74815879B33A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint4_rotateZ";
	rename -uid "F749A86E-42F0-430A-4321-F0BEB9F2184A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint4_visibility";
	rename -uid "6FD68550-428E-BF4F-C84D-4BAC878DAFD4";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint4_translateX";
	rename -uid "355A80EA-4AA4-1AE8-52EF-4582F0FD89AE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1.1958699071588366 3 1.1958699071588366;
createNode animCurveTL -n "joint4_translateY";
	rename -uid "C096B4CF-4748-1FB2-EF9F-1F9EF80150A9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -4.3206991477059117e-016 3 -4.3206991477059117e-016;
createNode animCurveTL -n "joint4_translateZ";
	rename -uid "FA54E06E-4D73-F490-07DE-068931FCB3DA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.4445963184743251e-017 3 2.4445963184743251e-017;
createNode animCurveTU -n "joint4_scaleX";
	rename -uid "C5676E24-41D4-6DB5-68F9-42BC6D58D1A2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint4_scaleY";
	rename -uid "62681E84-4F29-9AAE-F2D8-669CFD379B50";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint4_scaleZ";
	rename -uid "FFF58FF1-4618-1F8F-25CB-89942722421F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "68F80CDD-43CD-0867-E86D-339BFC8AEA0E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "84FA0998-43FC-DB92-6BA3-A69C05DCF6E9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 18.767513313598631;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "EBCB4526-4E79-9BF3-0834-378A73689E09";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint3_visibility";
	rename -uid "3D642E5C-456C-394D-39FB-2A9A9AB4B7B3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "7CFF3EA0-4831-1929-FB35-8D95DF399287";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1.1903963501243804 3 1.1903963501243804;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "9E29D853-4662-BA95-97E8-0593C52A32DA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.7755575615628914e-017 3 2.7755575615628914e-017;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "1969AAE9-4618-2303-342E-95AD56871FCD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.4805799077049875e-017 3 2.4805799077049875e-017;
createNode animCurveTU -n "joint3_scaleX";
	rename -uid "9CF6DA15-4EAF-38E2-FD6B-059E8C56AF11";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint3_scaleY";
	rename -uid "45E3FB53-40B0-0041-12DE-19BA2DA90703";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint3_scaleZ";
	rename -uid "7FB10AA3-44B9-74CB-F434-7CA468AC38CC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "8A8E90DE-4364-3461-2A59-17B1BE039B0A";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 6 0 9 0 12 0 15 0 20 0 23 0 26 0;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "867F018A-4713-1530-6094-56BC494F5438";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 -9.2549431223580534 6 8.5812876809010863
		 9 -14.43890122939996 12 -56.523378824190615 15 -14.423888381115539 20 -14.571810058150502
		 23 -34.963348097155958 26 -7.9802041700405209;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "6478BB6C-4395-4400-3284-6F8F98671667";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 6 0 9 0 12 0 15 0 20 0 23 0 26 0;
createNode animCurveTU -n "joint2_visibility";
	rename -uid "A5517389-46E1-0E6D-5492-BE989185AB7F";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "B835B262-4F2D-6BAD-53E1-7EA8A7EEF22D";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.41178707024063466 3 0.41178707024063466
		 6 0.41178707024063466 9 0.41178707024063466 12 0.41178707024063466 15 0.41178707024063466
		 20 0.41178707024063466 23 0.41178707024063466 26 0.41178707024063466;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "49F4CD2D-45A5-EA2D-F69D-F5BD4403A0BA";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1.1102230246251565e-016 3 1.1102230246251565e-016
		 6 1.1102230246251565e-016 9 1.1102230246251565e-016 12 1.1102230246251565e-016 15 1.1102230246251565e-016
		 20 1.1102230246251565e-016 23 1.1102230246251565e-016 26 1.1102230246251565e-016;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "EBCBAA03-44A5-3AFC-1D56-2886E4BF81EA";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -5.0429371750045958e-017 3 -5.0429371750045958e-017
		 6 -5.0429371750045958e-017 9 -5.0429371750045958e-017 12 -5.0429371750045958e-017
		 15 -5.0429371750045958e-017 20 -5.0429371750045958e-017 23 -5.0429371750045958e-017
		 26 -5.0429371750045958e-017;
createNode animCurveTU -n "joint2_scaleX";
	rename -uid "3E540420-4149-B379-DDE9-62BB7D2BF959";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
createNode animCurveTU -n "joint2_scaleY";
	rename -uid "1044B18D-4871-D109-1CB8-1C80B8D76EAF";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "4A63F6C3-40D9-F37C-D9FF-169BE4C0377E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1;
createNode animCurveTA -n "joint13_rotateX";
	rename -uid "53F1DF73-4639-03B1-4DA3-9B91F863BF4D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -357.31759901614026;
createNode animCurveTA -n "joint13_rotateY";
	rename -uid "A8D273AB-4C1B-431A-84BB-28B547CAB3CE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint13_rotateZ";
	rename -uid "B880D74B-4F1D-441B-936D-05A785CABF08";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint13_visibility";
	rename -uid "399BC9A1-46AC-38AC-CE55-E3B0794B453B";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint13_translateX";
	rename -uid "FCF14451-4A24-A0E5-C686-0E8C8986E8BF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.01152174817034636;
createNode animCurveTL -n "joint13_translateY";
	rename -uid "AECA3650-42E3-00C4-A89B-E395C984E60F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.76292788668233547;
createNode animCurveTL -n "joint13_translateZ";
	rename -uid "CE39413A-4F82-AFFD-6432-598A798143D2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -2.9363798716399867e-017;
createNode animCurveTU -n "joint13_scaleX";
	rename -uid "149E2527-41F8-5FC6-6E61-66A7CAC2ACDA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint13_scaleY";
	rename -uid "49C48190-445F-D21E-6F0A-2BBC7F1F9959";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint13_scaleZ";
	rename -uid "BCB2061D-400A-25F8-FC24-92A865329492";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "joint11_rotateX";
	rename -uid "F2E92C3F-49A5-989C-08BF-4B89C8A55F08";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 6 0.51735816489915321 9 3.9245663769855446
		 12 6.6285035005536077 15 15.835482700591236 20 -1.1672574867584737 23 -1.1672574867584737
		 26 -1.1672574867584737 30 31.760200345423645 32 6.6395609325758125 35 7.406941231547389;
createNode animCurveTA -n "joint11_rotateY";
	rename -uid "5D89F2B1-432B-32BD-8B29-BEA17802C74D";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 6 2.1923376648626864 9 7.1339784084058699
		 12 12.336088918617291 15 11.783241739539763 20 27.300155601203574 23 27.300155601203574
		 26 27.300155601203574 30 5.9832818514656969 32 5.020303428056434 35 3.7936456820188709;
createNode animCurveTA -n "joint11_rotateZ";
	rename -uid "0749AEDA-45F0-4A17-6BF2-7F8F82BA8E0D";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 -15.735888204491312 6 -22.466521478520086
		 9 -19.892327959203861 12 -23.095019266890588 15 -17.42292509903162 20 -125.36069767200453
		 23 -125.36069767200453 26 -125.36069767200453 30 10.980165537850171 32 19.848079178304577
		 35 29.809168463181827;
createNode animCurveTU -n "joint11_visibility";
	rename -uid "9C0DD957-45AD-E19B-9585-0D8296E6E1DC";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTL -n "joint11_translateX";
	rename -uid "47F06920-41D3-DA75-91AD-9C8AC49AA9CF";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1.3040115420553062 3 1.3040115420553062
		 6 1.29318816513044 9 1.2646592005049178 12 1.2342183110697569 15 1.2049629305543459
		 20 1.172714633295586 23 1.172714633295586 26 1.172714633295586 30 1.172714633295586
		 32 1.172714633295586 35 1.172714633295586;
createNode animCurveTL -n "joint11_translateY";
	rename -uid "9E64C060-4DB1-4023-9502-C7A63CBEC07C";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0.0023585375299160906 3 0.0023585375299160906
		 6 -0.0069938984747929273 9 -0.031645661283523224 12 -0.057949510351312378 15 -0.083228965608601657
		 20 -0.11109458761906124 23 -0.11109458761906124 26 -0.11109458761906124 30 -0.11109458761906124
		 32 -0.11109458761906124 35 -0.11109458761906124;
createNode animCurveTL -n "joint11_translateZ";
	rename -uid "D329EB86-4381-8E85-F33D-519CE20775EA";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 -1.3142553119314289e-015 3 -1.3142553119314289e-015
		 6 -0.0023804117904731702 9 -0.0086548569393060035 12 -0.015349796278155301 15 -0.021784003749594251
		 20 -0.028876450652486396 23 -0.028876450652486396 26 -0.028876450652486396 30 -0.028876450652486396
		 32 -0.028876450652486396 35 -0.028876450652486396;
createNode animCurveTU -n "joint11_scaleX";
	rename -uid "F065C123-4505-FC5D-5559-56800A8C9C44";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTU -n "joint11_scaleY";
	rename -uid "6A865EE7-4CE3-62FC-B273-66B16FFEBE10";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTU -n "joint11_scaleZ";
	rename -uid "008A6ACB-41EA-51EB-AD1D-A8ABE4F7524B";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTA -n "joint12_rotateX";
	rename -uid "B0971602-4A43-385C-C667-81B93EA8DCB8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 26 0 30 31.016672073336188
		 32 31.016672073336188;
createNode animCurveTA -n "joint12_rotateY";
	rename -uid "1A7DA9F9-4315-5FCD-9252-3F99D3DB9A77";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 107.79901496168868 23 107.79901496168868
		 26 107.79901496168868 30 2.6555582582025017 32 2.6555582582025017;
createNode animCurveTA -n "joint12_rotateZ";
	rename -uid "7FD74318-4941-62A4-A56B-C880821B46A5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 26 0 30 -9.9499184695299296e-017
		 32 -9.9499184695299296e-017;
createNode animCurveTU -n "joint12_visibility";
	rename -uid "CAA1F7AE-48DD-28C4-614F-49BCA495D6D3";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 32 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "joint12_translateX";
	rename -uid "2F6F0210-4A35-C955-A138-2BA48DD2FEB7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.7434690721885939 20 1.7434690721885939
		 23 1.7434690721885939 26 1.7434690721885939 30 1.7434690721885939 32 1.7434690721885939;
createNode animCurveTL -n "joint12_translateY";
	rename -uid "B3AC7693-40F3-C904-4A7D-078B00B23BE3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -4.4894643558279697e-015 20 -4.4894643558279697e-015
		 23 -4.4894643558279697e-015 26 -4.4894643558279697e-015 30 -4.4894643558279697e-015
		 32 -4.4894643558279697e-015;
createNode animCurveTL -n "joint12_translateZ";
	rename -uid "B67E7D70-40AD-E59D-03F6-2189CFCED7EC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -4.1632620444824435e-016 20 -4.1632620444824435e-016
		 23 -4.1632620444824435e-016 26 -4.1632620444824435e-016 30 -4.1632620444824435e-016
		 32 -4.1632620444824435e-016;
createNode animCurveTU -n "joint12_scaleX";
	rename -uid "3B8ED2A8-4F4B-A09D-B01A-478C35DC04C0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 32 1;
createNode animCurveTU -n "joint12_scaleY";
	rename -uid "6804AACA-446C-C0C2-6C96-0F88C1146766";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 32 1;
createNode animCurveTU -n "joint12_scaleZ";
	rename -uid "F53D2254-4843-3A54-4D88-EE872DB22181";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 26 1 30 1 32 1;
createNode animCurveTA -n "joint14_rotateX";
	rename -uid "2F69CB36-416B-1194-E96C-6EAEB415BA28";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint14_rotateY";
	rename -uid "B3F9EAFB-4EA5-0D2E-97F0-28B965CE53E9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint14_rotateZ";
	rename -uid "6C4BCF4B-4291-1E32-F386-D0A471A759BA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint14_visibility";
	rename -uid "AFBAA95D-4313-F34D-18BC-898B91EBE8DC";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint14_translateX";
	rename -uid "4B02242A-4848-C9C9-2FA8-D78736730D17";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.80986017708994129;
createNode animCurveTL -n "joint14_translateY";
	rename -uid "B5663CAD-4786-E029-2C2B-99864C748AC9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1.7347234759768071e-017;
createNode animCurveTL -n "joint14_translateZ";
	rename -uid "2B77FB7B-4275-B62D-A9CC-2588C6767659";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -3.2907131264878071e-017;
createNode animCurveTU -n "joint14_scaleX";
	rename -uid "D473FB67-404F-3A23-7126-A59FB5455303";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint14_scaleY";
	rename -uid "9A9BE9AD-4A4E-2F61-FE1A-53AD3E9655AB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint14_scaleZ";
	rename -uid "40BE8AD6-4816-E976-17C5-ED8365FC5EBD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "joint16_rotateX";
	rename -uid "2D908CA5-418F-D70E-3DFF-C4B317AE860C";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 6 -1.803925378315437e-015 9 8.2047490292575869e-016
		 12 0 15 0 20 -3.2063705343829945 23 -3.2063705343829945 26 -3.2063705343829945 30 4.6973852689194233
		 32 4.6973852689194233 35 4.6973852689194233;
createNode animCurveTA -n "joint16_rotateY";
	rename -uid "EAB986CC-4035-963C-D840-7BA5E49D9F64";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 6 28.168280591282301 9 -14.275783810135037
		 12 -41.764381846841118 15 -5.0149380470658107 20 -42.555875036856257 23 -42.555875036856257
		 26 -42.555875036856257 30 -13.509541082212001 32 -13.509541082212001 35 -13.509541082212001;
createNode animCurveTA -n "joint16_rotateZ";
	rename -uid "4246C9D9-4C30-3042-D088-5A9E5924C519";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 -59.635347316383864 6 -59.635347316383985
		 9 -59.635347316384042 12 -59.635347316384063 15 -59.635347316384092 20 -29.436671787418828
		 23 -29.436671787418828 26 -29.436671787418828 30 -55.159231460389385 32 -55.159231460389385
		 35 -55.159231460389385;
createNode animCurveTU -n "joint16_visibility";
	rename -uid "845C0CDF-4A4B-E87A-958B-D1B350B471A4";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTL -n "joint16_translateX";
	rename -uid "BC159B43-4C41-96A1-122A-488CAB53B76E";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0.75523166626771121 3 0.75523166626771121
		 6 0.75523166626771121 9 0.75523166626771121 12 0.75523166626771121 15 0.75523166626771121
		 20 0.75523166626771121 23 0.75523166626771121 26 0.75523166626771121 30 0.75523166626771121
		 32 0.75523166626771121 35 0.75523166626771121;
createNode animCurveTL -n "joint16_translateY";
	rename -uid "C21B5417-4363-CA03-7574-659893B8BD2F";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0.013726249668128451 3 0.013726249668128451
		 6 0.013726249668128451 9 0.013726249668128451 12 0.013726249668128451 15 0.013726249668128451
		 20 0.013726249668128451 23 0.013726249668128451 26 0.013726249668128451 30 0.013726249668128451
		 32 0.013726249668128451 35 0.013726249668128451;
createNode animCurveTL -n "joint16_translateZ";
	rename -uid "FBBDB7E2-4266-CD60-4BEF-D596586928AF";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 -1.816294260080383e-016 3 -1.816294260080383e-016
		 6 -1.816294260080383e-016 9 -1.816294260080383e-016 12 -1.816294260080383e-016 15 -1.816294260080383e-016
		 20 -1.816294260080383e-016 23 -1.816294260080383e-016 26 -1.816294260080383e-016
		 30 -1.816294260080383e-016 32 -1.816294260080383e-016 35 -1.816294260080383e-016;
createNode animCurveTU -n "joint16_scaleX";
	rename -uid "5DF18718-4E08-E917-B9BA-1BAB337B2EE0";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTU -n "joint16_scaleY";
	rename -uid "B84BA22E-4B31-49E0-824B-9183418726DB";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTU -n "joint16_scaleZ";
	rename -uid "F4BF569E-4495-9001-5A72-24B5BAB1D916";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTL -n "joint15_translateX";
	rename -uid "2697ED72-4007-46A1-4FB5-84B285A296EB";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 -0.91307191512230101 3 -0.91307191512230101
		 6 -0.91307191512230101 9 -0.91307191512230101 12 -0.91307191512230101 15 -0.91307191512230101
		 20 -0.91307191512230101 23 -0.91307191512230101 26 -0.91307191512230101 30 -0.91307191512230101
		 32 -0.91307191512230101 35 -0.91307191512230101;
createNode animCurveTL -n "joint15_translateY";
	rename -uid "7C912925-4795-34A8-F585-45B219046733";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0.051212648823100219 3 0.051212648823100219
		 6 0.051212648823100219 9 0.051212648823100219 12 0.051212648823100219 15 0.051212648823100219
		 20 0.051212648823100219 23 0.051212648823100219 26 0.051212648823100219 30 0.051212648823100219
		 32 0.051212648823100219 35 0.051212648823100219;
createNode animCurveTL -n "joint15_translateZ";
	rename -uid "2DEB2082-4260-AA5E-CD82-41A167E3FE69";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 2.1722503900083125e-016 3 2.1722503900083125e-016
		 6 2.1722503900083125e-016 9 2.1722503900083125e-016 12 2.1722503900083125e-016 15 2.1722503900083125e-016
		 20 2.1722503900083125e-016 23 2.1722503900083125e-016 26 2.1722503900083125e-016
		 30 2.1722503900083125e-016 32 2.1722503900083125e-016 35 2.1722503900083125e-016;
createNode animCurveTU -n "joint15_visibility";
	rename -uid "3D124B35-4888-C7AC-C97C-588A6C6ED20F";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "joint15_rotateX";
	rename -uid "3AF61254-4D0E-D45A-F26A-799ECB9E2E21";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 6 3.3523680074986858e-015 9 0 12 -1.8598120575574845e-015
		 15 6.2120267425281869e-017 20 14.906821512419745 23 14.906821512419745 26 14.906821512419745
		 30 13.948525801244086 32 24.442460486175701 35 14.654453790096936;
createNode animCurveTA -n "joint15_rotateY";
	rename -uid "7C9EE3B8-486D-8553-CC46-4B8298BDFE76";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 0 6 18.423101099041027 9 -2.9819550413699125
		 12 -31.232064965558518 15 0.07883526905785411 20 22.035406801665179 23 22.035406801665179
		 26 22.035406801665179 30 -22.635488941921704 32 -10.282576393143014 35 -22.199249283031538;
createNode animCurveTA -n "joint15_rotateZ";
	rename -uid "5ED555C3-470F-BB75-CC12-1488F41A9EED";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0 3 -71.970301657293078 6 -71.970301657293049
		 9 -71.970301657293007 12 -71.970301657292964 15 -71.970301657293135 20 -36.612866890488199
		 23 -36.612866890488199 26 -36.612866890488199 30 75.193522576003673 32 39.471312609726553
		 35 73.34254778971632;
createNode animCurveTU -n "joint15_scaleX";
	rename -uid "516D7A72-4C04-F2E7-B104-C98E161252DB";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTU -n "joint15_scaleY";
	rename -uid "296B775E-4209-D556-6273-EEA45F2914A3";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTU -n "joint15_scaleZ";
	rename -uid "42A083E9-45F5-EDD1-5A52-8CA8EF3A012C";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 3 1 6 1 9 1 12 1 15 1 20 1 23 1 26 1
		 30 1 32 1 35 1;
createNode animCurveTL -n "joint8_translateX";
	rename -uid "A1011EBC-43DA-7915-A8BB-D6B360FF6CD5";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.51342715124739013 20 -0.51342715124739013
		 30 -0.51342715124739013 32 -0.51342715124739013 35 -0.51342715124739013;
createNode animCurveTL -n "joint8_translateY";
	rename -uid "EDDF9267-43EA-67AF-9089-8CA143030ABC";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1.6549644547730773 20 1.6549644547730773
		 30 1.6549644547730773 32 1.6549644547730773 35 1.6549644547730773;
createNode animCurveTL -n "joint8_translateZ";
	rename -uid "0B6219A2-4BC2-5F5D-7A18-4E96636A1A95";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 6.2876691737046041e-017 20 6.2876691737046041e-017
		 30 6.2876691737046041e-017 32 6.2876691737046041e-017 35 6.2876691737046041e-017;
createNode animCurveTU -n "joint8_visibility";
	rename -uid "26845E5F-46F1-A702-0FBD-7CB750D49AE4";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 32 1 35 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "joint8_rotateX";
	rename -uid "34E7BDAD-44C0-2BE9-00DE-D28B02B3CB3F";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 30 0 32 0 35 0;
createNode animCurveTA -n "joint8_rotateY";
	rename -uid "873DCAE9-4672-8C9D-B2D9-228930B07796";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 30 0 32 0 35 0;
createNode animCurveTA -n "joint8_rotateZ";
	rename -uid "698F4ED8-4102-182B-1A06-4CB6B10BDD11";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 30 -11.073120828230294 32 5.6105378687168805
		 35 -3.6155576759923194;
createNode animCurveTU -n "joint8_scaleX";
	rename -uid "316A58D2-4A46-6AB7-B5EB-008413F42152";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 32 1 35 1;
createNode animCurveTU -n "joint8_scaleY";
	rename -uid "36971689-4F3E-BFFB-BA1D-A9B842287264";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 32 1 35 1;
createNode animCurveTU -n "joint8_scaleZ";
	rename -uid "66DEDA3A-4D3B-01A4-87C6-4FB0F7736E97";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 32 1 35 1;
createNode animCurveTU -n "polySurface43_visibility";
	rename -uid "160DFD12-44FE-629B-8223-7A9C95EBB179";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
select -ne :time1;
	setAttr ".o" 35;
	setAttr ".unw" 35;
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
	setAttr -s 44 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 44 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "groupId1.id" "polySurface40Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface40Shape.iog.og[0].gco";
connectAttr "polySurface43_visibility.o" "|polySurface43.v";
connectAttr ":initialShadingGroup.mwc" "polySurface43Shape.iog.og[0].gco";
connectAttr "groupId44.id" "polySurface43Shape.iog.og[0].gid";
connectAttr "skinCluster1GroupId.id" "polySurface43Shape.iog.og[7].gid";
connectAttr "skinCluster1Set.mwc" "polySurface43Shape.iog.og[7].gco";
connectAttr "groupId46.id" "polySurface43Shape.iog.og[8].gid";
connectAttr "tweakSet1.mwc" "polySurface43Shape.iog.og[8].gco";
connectAttr "skinCluster1.og[0]" "polySurface43Shape.i";
connectAttr "tweak1.vl[0].vt[0]" "polySurface43Shape.twl";
connectAttr "groupParts43.og" "polySurface43ShapeOrig.i";
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
connectAttr "joint2_rotateX.o" "joint2.rx";
connectAttr "joint2_rotateY.o" "joint2.ry";
connectAttr "joint2_rotateZ.o" "joint2.rz";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_scaleX.o" "joint2.sx";
connectAttr "joint2_scaleY.o" "joint2.sy";
connectAttr "joint2_scaleZ.o" "joint2.sz";
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
connectAttr "joint5_rotateX.o" "joint5.rx";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint5_rotateZ.o" "joint5.rz";
connectAttr "joint1.s" "joint5.is";
connectAttr "joint5_scaleX.o" "joint5.sx";
connectAttr "joint5_scaleY.o" "joint5.sy";
connectAttr "joint5_scaleZ.o" "joint5.sz";
connectAttr "joint5_visibility.o" "joint5.v";
connectAttr "joint5_translateX.o" "joint5.tx";
connectAttr "joint5_translateY.o" "joint5.ty";
connectAttr "joint5_translateZ.o" "joint5.tz";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6_scaleX.o" "joint6.sx";
connectAttr "joint6_scaleY.o" "joint6.sy";
connectAttr "joint6_scaleZ.o" "joint6.sz";
connectAttr "joint6_rotateX.o" "joint6.rx";
connectAttr "joint6_rotateY.o" "joint6.ry";
connectAttr "joint6_rotateZ.o" "joint6.rz";
connectAttr "joint6_visibility.o" "joint6.v";
connectAttr "joint6_translateX.o" "joint6.tx";
connectAttr "joint6_translateY.o" "joint6.ty";
connectAttr "joint6_translateZ.o" "joint6.tz";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7_rotateX.o" "joint7.rx";
connectAttr "joint7_rotateY.o" "joint7.ry";
connectAttr "joint7_rotateZ.o" "joint7.rz";
connectAttr "joint7_visibility.o" "joint7.v";
connectAttr "joint7_translateX.o" "joint7.tx";
connectAttr "joint7_translateY.o" "joint7.ty";
connectAttr "joint7_translateZ.o" "joint7.tz";
connectAttr "joint7_scaleX.o" "joint7.sx";
connectAttr "joint7_scaleY.o" "joint7.sy";
connectAttr "joint7_scaleZ.o" "joint7.sz";
connectAttr "joint1.s" "joint8.is";
connectAttr "joint8_scaleX.o" "joint8.sx";
connectAttr "joint8_scaleY.o" "joint8.sy";
connectAttr "joint8_scaleZ.o" "joint8.sz";
connectAttr "joint8_translateX.o" "joint8.tx";
connectAttr "joint8_translateY.o" "joint8.ty";
connectAttr "joint8_translateZ.o" "joint8.tz";
connectAttr "joint8_visibility.o" "joint8.v";
connectAttr "joint8_rotateX.o" "joint8.rx";
connectAttr "joint8_rotateY.o" "joint8.ry";
connectAttr "joint8_rotateZ.o" "joint8.rz";
connectAttr "joint8.s" "joint13.is";
connectAttr "joint13_scaleX.o" "joint13.sx";
connectAttr "joint13_scaleY.o" "joint13.sy";
connectAttr "joint13_scaleZ.o" "joint13.sz";
connectAttr "joint13_rotateX.o" "joint13.rx";
connectAttr "joint13_rotateY.o" "joint13.ry";
connectAttr "joint13_rotateZ.o" "joint13.rz";
connectAttr "joint13_visibility.o" "joint13.v";
connectAttr "joint13_translateX.o" "joint13.tx";
connectAttr "joint13_translateY.o" "joint13.ty";
connectAttr "joint13_translateZ.o" "joint13.tz";
connectAttr "joint13.s" "joint14.is";
connectAttr "joint14_rotateX.o" "joint14.rx";
connectAttr "joint14_rotateY.o" "joint14.ry";
connectAttr "joint14_rotateZ.o" "joint14.rz";
connectAttr "joint14_visibility.o" "joint14.v";
connectAttr "joint14_translateX.o" "joint14.tx";
connectAttr "joint14_translateY.o" "joint14.ty";
connectAttr "joint14_translateZ.o" "joint14.tz";
connectAttr "joint14_scaleX.o" "joint14.sx";
connectAttr "joint14_scaleY.o" "joint14.sy";
connectAttr "joint14_scaleZ.o" "joint14.sz";
connectAttr "joint8.s" "joint15.is";
connectAttr "joint15_scaleX.o" "joint15.sx";
connectAttr "joint15_scaleY.o" "joint15.sy";
connectAttr "joint15_scaleZ.o" "joint15.sz";
connectAttr "joint15_translateX.o" "joint15.tx";
connectAttr "joint15_translateY.o" "joint15.ty";
connectAttr "joint15_translateZ.o" "joint15.tz";
connectAttr "joint15_visibility.o" "joint15.v";
connectAttr "joint15_rotateX.o" "joint15.rx";
connectAttr "joint15_rotateY.o" "joint15.ry";
connectAttr "joint15_rotateZ.o" "joint15.rz";
connectAttr "joint15.s" "joint11.is";
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
connectAttr "joint12_scaleX.o" "joint12.sx";
connectAttr "joint12_scaleY.o" "joint12.sy";
connectAttr "joint12_scaleZ.o" "joint12.sz";
connectAttr "joint12_rotateX.o" "joint12.rx";
connectAttr "joint12_rotateY.o" "joint12.ry";
connectAttr "joint12_rotateZ.o" "joint12.rz";
connectAttr "joint12_visibility.o" "joint12.v";
connectAttr "joint12_translateX.o" "joint12.tx";
connectAttr "joint12_translateY.o" "joint12.ty";
connectAttr "joint12_translateZ.o" "joint12.tz";
connectAttr "joint8.s" "joint16.is";
connectAttr "joint16_scaleX.o" "joint16.sx";
connectAttr "joint16_scaleY.o" "joint16.sy";
connectAttr "joint16_scaleZ.o" "joint16.sz";
connectAttr "joint16_rotateX.o" "joint16.rx";
connectAttr "joint16_rotateY.o" "joint16.ry";
connectAttr "joint16_rotateZ.o" "joint16.rz";
connectAttr "joint16_visibility.o" "joint16.v";
connectAttr "joint16_translateX.o" "joint16.tx";
connectAttr "joint16_translateY.o" "joint16.ty";
connectAttr "joint16_translateZ.o" "joint16.tz";
connectAttr "joint16.s" "joint9.is";
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
connectAttr "joint10_scaleX.o" "joint10.sx";
connectAttr "joint10_scaleY.o" "joint10.sy";
connectAttr "joint10_scaleZ.o" "joint10.sz";
connectAttr "joint10_rotateX.o" "joint10.rx";
connectAttr "joint10_rotateY.o" "joint10.ry";
connectAttr "joint10_rotateZ.o" "joint10.rz";
connectAttr "joint10_visibility.o" "joint10.v";
connectAttr "joint10_translateX.o" "joint10.tx";
connectAttr "joint10_translateY.o" "joint10.ty";
connectAttr "joint10_translateZ.o" "joint10.tz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurface40Shape.o" "polySeparate1.ip";
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
connectAttr "polyUnite1.out" "groupParts43.ig";
connectAttr "groupId44.id" "groupParts43.gi";
connectAttr "polySurfaceShape3.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape5.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape6.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[3]";
connectAttr "polySurfaceShape2.o" "polyUnite1.ip[4]";
connectAttr "polySurfaceShape1.o" "polyUnite1.ip[5]";
connectAttr "polySurfaceShape15.o" "polyUnite1.ip[6]";
connectAttr "polySurfaceShape14.o" "polyUnite1.ip[7]";
connectAttr "polySurfaceShape13.o" "polyUnite1.ip[8]";
connectAttr "polySurfaceShape21.o" "polyUnite1.ip[9]";
connectAttr "polySurfaceShape20.o" "polyUnite1.ip[10]";
connectAttr "polySurfaceShape19.o" "polyUnite1.ip[11]";
connectAttr "polySurfaceShape24.o" "polyUnite1.ip[12]";
connectAttr "polySurfaceShape23.o" "polyUnite1.ip[13]";
connectAttr "polySurfaceShape22.o" "polyUnite1.ip[14]";
connectAttr "polySurfaceShape42.o" "polyUnite1.ip[15]";
connectAttr "polySurfaceShape41.o" "polyUnite1.ip[16]";
connectAttr "polySurfaceShape9.o" "polyUnite1.ip[17]";
connectAttr "polySurfaceShape8.o" "polyUnite1.ip[18]";
connectAttr "polySurfaceShape7.o" "polyUnite1.ip[19]";
connectAttr "polySurfaceShape12.o" "polyUnite1.ip[20]";
connectAttr "polySurfaceShape11.o" "polyUnite1.ip[21]";
connectAttr "polySurfaceShape10.o" "polyUnite1.ip[22]";
connectAttr "polySurfaceShape40.o" "polyUnite1.ip[23]";
connectAttr "polySurfaceShape39.o" "polyUnite1.ip[24]";
connectAttr "polySurfaceShape38.o" "polyUnite1.ip[25]";
connectAttr "polySurfaceShape37.o" "polyUnite1.ip[26]";
connectAttr "polySurfaceShape36.o" "polyUnite1.ip[27]";
connectAttr "polySurfaceShape35.o" "polyUnite1.ip[28]";
connectAttr "polySurfaceShape31.o" "polyUnite1.ip[29]";
connectAttr "polySurfaceShape30.o" "polyUnite1.ip[30]";
connectAttr "polySurfaceShape29.o" "polyUnite1.ip[31]";
connectAttr "polySurfaceShape28.o" "polyUnite1.ip[32]";
connectAttr "polySurfaceShape34.o" "polyUnite1.ip[33]";
connectAttr "polySurfaceShape33.o" "polyUnite1.ip[34]";
connectAttr "polySurfaceShape32.o" "polyUnite1.ip[35]";
connectAttr "polySurfaceShape27.o" "polyUnite1.ip[36]";
connectAttr "polySurfaceShape26.o" "polyUnite1.ip[37]";
connectAttr "polySurfaceShape25.o" "polyUnite1.ip[38]";
connectAttr "polySurfaceShape18.o" "polyUnite1.ip[39]";
connectAttr "polySurfaceShape17.o" "polyUnite1.ip[40]";
connectAttr "polySurfaceShape16.o" "polyUnite1.ip[41]";
connectAttr "polySurfaceShape3.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape5.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape6.wm" "polyUnite1.im[2]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[3]";
connectAttr "polySurfaceShape2.wm" "polyUnite1.im[4]";
connectAttr "polySurfaceShape1.wm" "polyUnite1.im[5]";
connectAttr "polySurfaceShape15.wm" "polyUnite1.im[6]";
connectAttr "polySurfaceShape14.wm" "polyUnite1.im[7]";
connectAttr "polySurfaceShape13.wm" "polyUnite1.im[8]";
connectAttr "polySurfaceShape21.wm" "polyUnite1.im[9]";
connectAttr "polySurfaceShape20.wm" "polyUnite1.im[10]";
connectAttr "polySurfaceShape19.wm" "polyUnite1.im[11]";
connectAttr "polySurfaceShape24.wm" "polyUnite1.im[12]";
connectAttr "polySurfaceShape23.wm" "polyUnite1.im[13]";
connectAttr "polySurfaceShape22.wm" "polyUnite1.im[14]";
connectAttr "polySurfaceShape42.wm" "polyUnite1.im[15]";
connectAttr "polySurfaceShape41.wm" "polyUnite1.im[16]";
connectAttr "polySurfaceShape9.wm" "polyUnite1.im[17]";
connectAttr "polySurfaceShape8.wm" "polyUnite1.im[18]";
connectAttr "polySurfaceShape7.wm" "polyUnite1.im[19]";
connectAttr "polySurfaceShape12.wm" "polyUnite1.im[20]";
connectAttr "polySurfaceShape11.wm" "polyUnite1.im[21]";
connectAttr "polySurfaceShape10.wm" "polyUnite1.im[22]";
connectAttr "polySurfaceShape40.wm" "polyUnite1.im[23]";
connectAttr "polySurfaceShape39.wm" "polyUnite1.im[24]";
connectAttr "polySurfaceShape38.wm" "polyUnite1.im[25]";
connectAttr "polySurfaceShape37.wm" "polyUnite1.im[26]";
connectAttr "polySurfaceShape36.wm" "polyUnite1.im[27]";
connectAttr "polySurfaceShape35.wm" "polyUnite1.im[28]";
connectAttr "polySurfaceShape31.wm" "polyUnite1.im[29]";
connectAttr "polySurfaceShape30.wm" "polyUnite1.im[30]";
connectAttr "polySurfaceShape29.wm" "polyUnite1.im[31]";
connectAttr "polySurfaceShape28.wm" "polyUnite1.im[32]";
connectAttr "polySurfaceShape34.wm" "polyUnite1.im[33]";
connectAttr "polySurfaceShape33.wm" "polyUnite1.im[34]";
connectAttr "polySurfaceShape32.wm" "polyUnite1.im[35]";
connectAttr "polySurfaceShape27.wm" "polyUnite1.im[36]";
connectAttr "polySurfaceShape26.wm" "polyUnite1.im[37]";
connectAttr "polySurfaceShape25.wm" "polyUnite1.im[38]";
connectAttr "polySurfaceShape18.wm" "polyUnite1.im[39]";
connectAttr "polySurfaceShape17.wm" "polyUnite1.im[40]";
connectAttr "polySurfaceShape16.wm" "polyUnite1.im[41]";
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
connectAttr "joint15.wm" "skinCluster1.ma[15]";
connectAttr "joint16.wm" "skinCluster1.ma[16]";
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
connectAttr "joint15.liw" "skinCluster1.lw[15]";
connectAttr "joint16.liw" "skinCluster1.lw[16]";
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
connectAttr "joint15.obcc" "skinCluster1.ifcl[15]";
connectAttr "joint16.obcc" "skinCluster1.ifcl[16]";
connectAttr "skinBinding1.uw" "skinCluster1.bc";
connectAttr "groupParts45.og" "tweak1.ip[0].ig";
connectAttr "groupId46.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurface43Shape.iog.og[7]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId46.msg" "tweakSet1.gn" -na;
connectAttr "polySurface43Shape.iog.og[8]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurface43ShapeOrig.w" "groupParts45.ig";
connectAttr "groupId46.id" "groupParts45.gi";
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
connectAttr "joint15.msg" "bindPose1.m[18]";
connectAttr "joint16.msg" "bindPose1.m[19]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[0]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[0]" "bindPose1.p[7]";
connectAttr "bindPose1.w" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.w" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[7]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[7]" "bindPose1.p[18]";
connectAttr "bindPose1.m[7]" "bindPose1.p[19]";
connectAttr "bindPose1.m[7]" "bindPose1.p[20]";
connectAttr "bindPose1.m[7]" "bindPose1.p[21]";
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
connectAttr "joint15.bps" "bindPose1.wm[18]";
connectAttr "joint16.bps" "bindPose1.wm[19]";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "polySurface40Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "polySurface43Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
// End of squaremann 1.ma
