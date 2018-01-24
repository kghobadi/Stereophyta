//Maya ASCII 2016 scene
//Name: tree4_young.ma
//Last modified: Thu, Nov 09, 2017 03:11:08 PM
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
createNode transform -s -n "persp";
	rename -uid "043ED502-0B43-491A-246E-FF97FB6C5528";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.2292612637970555 2.4511393730799371 -1.4512875561665712 ;
	setAttr ".r" -type "double3" -16.53835272975887 -245.79999999987763 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1724BCAB-F14D-8403-B480-1C84DD230844";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 3.6931793838645914;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 1.3998496504746565 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3666552C-9946-37AE-8FAE-958904B5E3C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ADEBDC07-2C45-F83E-5868-4092FEE3B532";
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
	rename -uid "D5731E72-B84E-81C9-5D51-4A82B32989DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "463CF1CA-214C-57C2-94B3-6DBC413BEF24";
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
	rename -uid "58D593D4-E642-6364-DA0E-7AA3D8F2C8B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "58EB6EC4-034E-4432-F5FF-36AC8E9B7E87";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "CF9F8C0C-F64D-B66F-1E56-1BAB124D1C66";
	setAttr -av ".v";
	setAttr ".t" -type "double3" 0 0.59254851677481146 0 ;
createNode transform -n "transform6" -p "pCylinder1";
	rename -uid "15AE7148-F640-31B8-4933-6EB2E499E3C0";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform6";
	rename -uid "14B79EC1-3147-8A1B-78F9-7AA55DD0B1C1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41145835816860199 0.76609492301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[47]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[102]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[157]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[212]" -type "float3" 0 -0.081604563 0 ;
createNode transform -n "pPyramid1";
	rename -uid "3EB85D91-ED45-A660-4281-86B71615C3F4";
	setAttr ".t" -type "double3" 0 1 -0.26479318737983704 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform4" -p "pPyramid1";
	rename -uid "B5B3808F-1A42-1CB2-4740-A6AE1F6F28F5";
	setAttr ".v" no;
createNode mesh -n "pPyramidShape1" -p "transform4";
	rename -uid "09E4C9A5-C84D-C36A-C483-FD80DAA7AAD7";
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
createNode transform -n "group";
	rename -uid "39FFFD9E-584C-DA41-BA91-41B8E2BAE38E";
createNode transform -n "pasted__pPyramid1" -p "group";
	rename -uid "7A5296E3-C64B-434F-9BC3-B6BB83375E72";
	setAttr ".t" -type "double3" 0.26479318737983704 1 0 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform1" -p "|group|pasted__pPyramid1";
	rename -uid "3F2113AC-CB4F-3CAA-788D-D18A390B8982";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform1";
	rename -uid "5C04F4A7-B745-9B9B-1A39-30A51A14F0E6";
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
createNode transform -n "group1";
	rename -uid "5B8BC803-C24A-0086-8F2B-0683B9FE0AF7";
createNode transform -n "pasted__pPyramid1" -p "group1";
	rename -uid "B6E959BE-F641-0A26-5326-13AD0CA0638F";
	setAttr ".t" -type "double3" 0 1 0.26479318737983704 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform2" -p "|group1|pasted__pPyramid1";
	rename -uid "A016D081-F348-334E-1638-3AB153336827";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform2";
	rename -uid "A6C2BC73-5E42-D210-A042-11A614924984";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group2";
	rename -uid "0B340949-EC48-FE3F-ACA1-F7BB60D8DDF1";
createNode transform -n "group3";
	rename -uid "5F4DD425-D548-87A9-F918-67871F3A676B";
	setAttr ".t" -type "double3" -0.25 0 0 ;
createNode transform -n "pasted__pPyramid1" -p "group3";
	rename -uid "1B122170-C54D-D5EE-A666-148BF6AFA5A8";
	setAttr ".t" -type "double3" -0.014793187379837036 1 0 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform3" -p "|group3|pasted__pPyramid1";
	rename -uid "F3A4B976-654C-7ADC-A6B2-F48276D45B84";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform3";
	rename -uid "EA2F2BE2-674D-2EE9-619A-03A0929DFB83";
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
createNode transform -n "pPyramid2";
	rename -uid "CE8AA6CE-B44E-7CC5-7BB3-7F9F24A0D289";
createNode transform -n "transform5" -p "pPyramid2";
	rename -uid "D73C7BB1-7149-D9D8-7B87-F68D23E105E5";
	setAttr ".v" no;
createNode mesh -n "pPyramid2Shape" -p "transform5";
	rename -uid "60CEC357-7F4F-0F84-53EB-5DB1ADBC3E0A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[19]" -type "float3" 0 0.0109905 0 ;
createNode transform -n "pCylinder2";
	rename -uid "5224EED6-0243-62FC-E38E-0CBFC29DB530";
	setAttr ".s" -type "double3" 1.7044239652665925 1.7044239652665925 1.7044239652665925 ;
createNode mesh -n "pCylinder2Shape" -p "pCylinder2";
	rename -uid "5ED51F2A-F440-2E7E-1BDD-CF80D66B3CE4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[299:318]" -type "float3"  -5.5879354e-09 2.0061467 
		-6.519258e-09 0.35978937 2.0061467 4.6566129e-10 -5.5879354e-09 2.0061464 6.519258e-09 
		-0.35978937 2.0061467 2.1200403e-19 -2.5165921e-08 1.7671347 0.021328211 -0.14929737 
		1.7671347 -6.519258e-09 9.3806052e-10 1.7671347 -0.021328202 0.14929737 1.7671347 
		-1.3969839e-08 0.35978934 1.7671347 0.021328177 0.21049199 1.7671347 -6.519258e-09 
		0.35978937 1.7671347 -0.021328188 0.50908685 1.7671347 -4.6546877e-09 -2.0974968e-08 
		1.7671345 0.021328196 -0.14929737 1.7671345 8.3819032e-09 -4.6498752e-09 1.7671345 
		-0.0213282 0.14929737 1.7671345 1.2107193e-08 -0.3597894 1.7671347 0.021328196 -0.50908685 
		1.7671347 8.465871e-18 -0.35978937 1.7671347 -0.021328196 -0.21049199 1.7671347 2.2138162e-09;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "83ACF9E1-E141-CC75-20CA-D78FC72061C7";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "3CC45DE1-A84F-C4C1-E018-A7AF564FC0E8";
createNode displayLayer -n "defaultLayer";
	rename -uid "519C68C2-9140-F030-7B88-28B4F09FD83F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F0425304-A845-B823-378E-0BB58AA077E4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7B324D7C-AB48-9865-0F55-AFA975EC4A78";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "DA021801-124B-3FD2-3B3E-3D9E10ED9F6A";
	setAttr ".r" 0.25;
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyPyramid -n "polyPyramid1";
	rename -uid "52A72198-2342-A3A7-76AB-BDB61E684318";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid1";
	rename -uid "86A1EC5A-5842-BCF6-B4D8-9BB04FF0E1C1";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid2";
	rename -uid "6807AF11-B749-B350-8F63-E58E6756BA3C";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid4";
	rename -uid "F532E980-1C46-E5D6-E538-DA9CE724CFFF";
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "7CCA8E36-FD48-7D58-EDC8-6EA0E0AD625E";
	setAttr ".ics" -type "componentList" 4 "f[25:26]" "f[28:29]" "f[31:32]" "f[34:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1810986 0 ;
	setAttr ".rs" 1501611852;
	setAttr ".lt" -type "double3" 0 -5.1105969181501879e-18 0.10198391762377801 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.080690085887908936 1.1810986075646064 -0.080690085887908936 ;
	setAttr ".cbx" -type "double3" 0.080690085887908936 1.1810986075646064 0.080690085887908936 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "02A00EA7-D54B-20BF-FD60-9B9CC6CEE94F";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  -0.14662659 0.41144994 0.084654957
		 -0.084654957 0.41144994 0.14662659 0 0.41144994 0.16930991 0.084654957 0.41144994
		 0.14662659 0.14662659 0.41144994 0.084654957 0.16930991 0.41144994 0 0.14662659 0.41144994
		 -0.084654957 0.084654957 0.41144994 -0.14662659 0 0.41144994 -0.16930991 -0.084654957
		 0.41144994 -0.14662659 -0.14662659 0.41144994 -0.084654957 -0.16930991 0.41144994
		 0 -0.14662659 -0.41144994 0.084654957 -0.084654957 -0.41144994 0.14662659 0 -0.41144994
		 0.16930991 0.084654957 -0.41144994 0.14662659 0.14662659 -0.41144994 0.084654957
		 0.16930991 -0.41144994 0 0.14662659 -0.41144994 -0.084654957 0.084654957 -0.41144994
		 -0.14662659 0 -0.41144994 -0.16930991 -0.084654957 -0.41144994 -0.14662659 -0.14662659
		 -0.41144994 -0.084654957 -0.16930991 -0.41144994 0 0 0.41144994 0 0 -0.41144994 0;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "59F3E29E-4E42-268F-E3DE-5CB7CC1170CE";
	setAttr ".ics" -type "componentList" 5 "vtx[25]" "vtx[28]" "vtx[32]" "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak2";
	rename -uid "CCDBD524-C747-9876-0B3C-388539E68E51";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[25]" -type "float3" 0 -0.069881916 4.8572257e-18 ;
	setAttr ".tk[28]" -type "float3" 0 -0.17186593 -9.0205617e-18 ;
	setAttr ".tk[32]" -type "float3" -6.9388939e-18 -0.17186595 -3.4694478e-19 ;
	setAttr ".tk[36]" -type "float3" 0 -0.17186593 4.8572257e-18 ;
	setAttr ".tk[40]" -type "float3" 6.9388939e-18 -0.17186593 -3.4694478e-19 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "7964CAF4-3540-1C64-33F3-138D84861D96";
	setAttr ".ics" -type "componentList" 8 "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[46]" "f[48]" "f[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.2320906 0 ;
	setAttr ".rs" 47275921;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 -2.3370467311040173e-17 0.19083434772631264 ;
	setAttr ".ls" -type "double3" -0.27603111311813489 1 1 ;
	setAttr ".off" 0.039999999105930328;
	setAttr ".d" 10;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.080690085887908936 1.1810986075646064 -0.080690085887908936 ;
	setAttr ".cbx" -type "double3" 0.080690085887908936 1.2830826316124579 0.080690085887908936 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "7BA6F0A7-0145-755D-E290-2586FEA5887E";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  0 0.11503879 0;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "46F3F041-9C40-8A06-B67E-E08D9F993F2A";
	setAttr ".ics" -type "componentList" 6 "vtx[227]" "vtx[237]" "vtx[247]" "vtx[257]" "vtx[267]" "vtx[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "7A9FDD1F-C24E-304B-96A4-669B5D1C8BB7";
	setAttr ".uopa" yes;
	setAttr -s 265 ".tk";
	setAttr ".tk[12]" -type "float3" -0.0053235893 0.011600192 2.910383e-11 ;
	setAttr ".tk[13]" -type "float3" 9.3132257e-10 0.011600199 0.0053235893 ;
	setAttr ".tk[14]" -type "float3" 0 0.024127787 0.011867993 ;
	setAttr ".tk[15]" -type "float3" 9.3132257e-10 0.011600199 0.0053235893 ;
	setAttr ".tk[16]" -type "float3" 0.0053235902 0.011600192 0 ;
	setAttr ".tk[17]" -type "float3" 0.011867998 0.024127753 0 ;
	setAttr ".tk[18]" -type "float3" 0.0053235912 0.011600195 0 ;
	setAttr ".tk[19]" -type "float3" 7.4214768e-10 0.011600192 -0.0053235907 ;
	setAttr ".tk[20]" -type "float3" -4.6202331e-10 0.024127757 -0.011867997 ;
	setAttr ".tk[21]" -type "float3" 3.5652192e-10 0.011600192 -0.0053235907 ;
	setAttr ".tk[22]" -type "float3" -0.0053235893 0.011600195 0 ;
	setAttr ".tk[23]" -type "float3" -0.011867994 0.024127753 0 ;
	setAttr ".tk[25]" -type "float3" 0 -1.1175871e-08 0 ;
	setAttr ".tk[26]" -type "float3" -0.00050622202 0.029502412 -0.00072674517 ;
	setAttr ".tk[27]" -type "float3" -9.3132257e-10 0.035907321 -0.0035247761 ;
	setAttr ".tk[28]" -type "float3" -0.00055096817 0.030255347 0.00050761527 ;
	setAttr ".tk[29]" -type "float3" -0.00072673877 0.029502412 0.00050622132 ;
	setAttr ".tk[30]" -type "float3" -0.0035247654 0.035907291 0 ;
	setAttr ".tk[31]" -type "float3" 0.00050762098 0.030255347 0.000550967 ;
	setAttr ".tk[32]" -type "float3" 0.00050622091 0.029502412 0.00072673912 ;
	setAttr ".tk[33]" -type "float3" -2.3646862e-10 0.035907298 0.0035247663 ;
	setAttr ".tk[34]" -type "float3" -0.00050622132 0.029502412 0.00072673912 ;
	setAttr ".tk[35]" -type "float3" -0.00050761551 0.030255347 0.000550967 ;
	setAttr ".tk[36]" -type "float3" 0.0035247745 0.035907283 0 ;
	setAttr ".tk[37]" -type "float3" -0.00050761551 0.03025534 -0.00055096787 ;
	setAttr ".tk[38]" -type "float3" 0 0.025999315 0.014803422 ;
	setAttr ".tk[39]" -type "float3" 0 0.043225296 0.023068007 ;
	setAttr ".tk[40]" -type "float3" 0 0.058582056 0.024554042 ;
	setAttr ".tk[41]" -type "float3" -3.7252903e-09 0.066141024 0.017434746 ;
	setAttr ".tk[42]" -type "float3" 3.7252903e-09 0.060181789 0.0051972987 ;
	setAttr ".tk[43]" -type "float3" 0 0.041135635 -0.0057433597 ;
	setAttr ".tk[44]" -type "float3" 0 0.014550813 -0.010166062 ;
	setAttr ".tk[45]" -type "float3" 3.7252903e-09 -0.014480265 -0.0062945597 ;
	setAttr ".tk[46]" -type "float3" 0 -0.043857019 0.0032171737 ;
	setAttr ".tk[47]" -type "float3" 0 -0.070161596 0.017660409 ;
	setAttr ".tk[48]" -type "float3" 0 0.040854666 0.020553552 ;
	setAttr ".tk[49]" -type "float3" 0 0.058126979 0.025226993 ;
	setAttr ".tk[50]" -type "float3" 3.7252903e-09 0.068830878 0.02270373 ;
	setAttr ".tk[51]" -type "float3" -3.7252903e-09 0.07068222 0.013177009 ;
	setAttr ".tk[52]" -type "float3" 0 0.062063824 0.00027937524 ;
	setAttr ".tk[53]" -type "float3" -3.7252903e-09 0.043964718 -0.010973187 ;
	setAttr ".tk[54]" -type "float3" 0 0.019574238 -0.016711248 ;
	setAttr ".tk[55]" -type "float3" -1.8626451e-09 -0.0072609326 -0.015459862 ;
	setAttr ".tk[56]" -type "float3" -1.8626451e-09 -0.033378668 -0.0078513743 ;
	setAttr ".tk[57]" -type "float3" 9.3132257e-10 -0.056824941 0.0043237498 ;
	setAttr ".tk[58]" -type "float3" -4.6566129e-10 0.04588398 -0.011239817 ;
	setAttr ".tk[59]" -type "float3" -9.3132257e-10 0.050851051 -0.022883238 ;
	setAttr ".tk[60]" -type "float3" 1.3969839e-09 0.049002454 -0.036751628 ;
	setAttr ".tk[61]" -type "float3" -1.3969839e-09 0.040170949 -0.050481644 ;
	setAttr ".tk[62]" -type "float3" -1.3969839e-09 0.025012881 -0.061221182 ;
	setAttr ".tk[63]" -type "float3" -1.8626451e-09 0.0050211013 -0.065932639 ;
	setAttr ".tk[64]" -type "float3" 9.3132257e-10 -0.018086812 -0.063373931 ;
	setAttr ".tk[65]" -type "float3" -9.3132257e-10 -0.042236749 -0.053650685 ;
	setAttr ".tk[66]" -type "float3" 9.3132257e-10 -0.062732562 -0.037828751 ;
	setAttr ".tk[67]" -type "float3" 0 -0.07880909 -0.017660409 ;
	setAttr ".tk[68]" -type "float3" -0.00017369911 0.039920088 -0.0048726024 ;
	setAttr ".tk[69]" -type "float3" 9.3132257e-10 0.047164071 -0.013815459 ;
	setAttr ".tk[70]" -type "float3" -9.3132257e-10 0.048561182 -0.027741786 ;
	setAttr ".tk[71]" -type "float3" 9.3132257e-10 0.040788867 -0.042506218 ;
	setAttr ".tk[72]" -type "float3" 0 0.025052924 -0.054794937 ;
	setAttr ".tk[73]" -type "float3" -9.3132257e-10 0.0029754399 -0.060177166 ;
	setAttr ".tk[74]" -type "float3" -9.3132257e-10 -0.022642046 -0.056621999 ;
	setAttr ".tk[75]" -type "float3" -9.3132257e-10 -0.049052462 -0.044409543 ;
	setAttr ".tk[76]" -type "float3" 1.8626451e-09 -0.073050365 -0.02677436 ;
	setAttr ".tk[77]" -type "float3" -1.8626451e-09 -0.092145681 -0.0043236911 ;
	setAttr ".tk[78]" -type "float3" 0.0002364439 0.026465354 0.014803422 ;
	setAttr ".tk[79]" -type "float3" 0.00028429282 0.044360261 0.023068007 ;
	setAttr ".tk[80]" -type "float3" 0 0.058582049 0.024554042 ;
	setAttr ".tk[81]" -type "float3" 0 0.066141024 0.017434746 ;
	setAttr ".tk[82]" -type "float3" 0 0.060181789 0.0051972987 ;
	setAttr ".tk[83]" -type "float3" 0 0.041135635 -0.0057433597 ;
	setAttr ".tk[84]" -type "float3" 0 0.014550813 -0.010166062 ;
	setAttr ".tk[85]" -type "float3" -1.7462298e-09 -0.014480265 -0.0062945597 ;
	setAttr ".tk[86]" -type "float3" 9.3132257e-10 -0.043857012 0.0032171737 ;
	setAttr ".tk[87]" -type "float3" 9.3132257e-10 -0.070161648 0.01766035 ;
	setAttr ".tk[88]" -type "float3" -0.00023263197 0.03923199 -0.0040543661 ;
	setAttr ".tk[89]" -type "float3" -1.6298145e-09 0.047164071 -0.013815459 ;
	setAttr ".tk[90]" -type "float3" 1.3969839e-09 0.048561182 -0.027741786 ;
	setAttr ".tk[91]" -type "float3" -9.3132257e-10 0.040788867 -0.042506218 ;
	setAttr ".tk[92]" -type "float3" 1.8626451e-09 0.025052939 -0.054794937 ;
	setAttr ".tk[93]" -type "float3" 1.8626451e-09 0.0029754399 -0.060177166 ;
	setAttr ".tk[94]" -type "float3" 3.7252903e-09 -0.022642046 -0.056621999 ;
	setAttr ".tk[95]" -type "float3" 0 -0.049052462 -0.044409543 ;
	setAttr ".tk[96]" -type "float3" 0 -0.073050365 -0.02677436 ;
	setAttr ".tk[97]" -type "float3" 0 -0.092145681 -0.0043236911 ;
	setAttr ".tk[98]" -type "float3" 0.014803427 0.025999319 0 ;
	setAttr ".tk[99]" -type "float3" 0.023068033 0.043225259 0 ;
	setAttr ".tk[100]" -type "float3" 0.024554055 0.058582049 0 ;
	setAttr ".tk[101]" -type "float3" 0.017434768 0.066141039 0 ;
	setAttr ".tk[102]" -type "float3" 0.0051973239 0.060181819 0 ;
	setAttr ".tk[103]" -type "float3" -0.0057433876 0.041135605 0 ;
	setAttr ".tk[104]" -type "float3" -0.010166088 0.014550813 0 ;
	setAttr ".tk[105]" -type "float3" -0.0062944605 -0.014480265 0 ;
	setAttr ".tk[106]" -type "float3" 0.0032172329 -0.043856915 0 ;
	setAttr ".tk[107]" -type "float3" 0.017660376 -0.070161574 0 ;
	setAttr ".tk[108]" -type "float3" 0.020553559 0.040854696 0 ;
	setAttr ".tk[109]" -type "float3" 0.025227005 0.058127008 0 ;
	setAttr ".tk[110]" -type "float3" 0.022703748 0.068830863 0 ;
	setAttr ".tk[111]" -type "float3" 0.013177026 0.070682265 0 ;
	setAttr ".tk[112]" -type "float3" 0.00027939695 0.062063824 0 ;
	setAttr ".tk[113]" -type "float3" -0.010973252 0.043964777 0 ;
	setAttr ".tk[114]" -type "float3" -0.016711149 0.019574208 0 ;
	setAttr ".tk[115]" -type "float3" -0.01545993 -0.0072608879 0 ;
	setAttr ".tk[116]" -type "float3" -0.0078514256 -0.033378609 0 ;
	setAttr ".tk[117]" -type "float3" 0.0043237205 -0.056824964 0 ;
	setAttr ".tk[118]" -type "float3" -0.01123983 0.045884017 0 ;
	setAttr ".tk[119]" -type "float3" -0.022883199 0.050851043 0 ;
	setAttr ".tk[120]" -type "float3" -0.036751606 0.049002454 0 ;
	setAttr ".tk[121]" -type "float3" -0.050481584 0.040170979 0 ;
	setAttr ".tk[122]" -type "float3" -0.0612211 0.025012895 0 ;
	setAttr ".tk[123]" -type "float3" -0.065932609 0.0050211609 0 ;
	setAttr ".tk[124]" -type "float3" -0.063373722 -0.018086782 0 ;
	setAttr ".tk[125]" -type "float3" -0.053650752 -0.042236734 0 ;
	setAttr ".tk[126]" -type "float3" -0.037828811 -0.062732488 0 ;
	setAttr ".tk[127]" -type "float3" -0.017660318 -0.078809015 0 ;
	setAttr ".tk[128]" -type "float3" -0.0048726131 0.039920103 0.00017369865 ;
	setAttr ".tk[129]" -type "float3" -0.013815413 0.047164042 0 ;
	setAttr ".tk[130]" -type "float3" -0.027741766 0.048561182 0 ;
	setAttr ".tk[131]" -type "float3" -0.042506199 0.040788881 0 ;
	setAttr ".tk[132]" -type "float3" -0.054794915 0.025052968 0 ;
	setAttr ".tk[133]" -type "float3" -0.060177203 0.0029754697 0 ;
	setAttr ".tk[134]" -type "float3" -0.056622032 -0.022642046 0 ;
	setAttr ".tk[135]" -type "float3" -0.044409443 -0.049052455 0 ;
	setAttr ".tk[136]" -type "float3" -0.026774298 -0.073050283 0 ;
	setAttr ".tk[137]" -type "float3" -0.0043237181 -0.092145704 0 ;
	setAttr ".tk[138]" -type "float3" 0.014803426 0.026465369 -0.00023644372 ;
	setAttr ".tk[139]" -type "float3" 0.023068035 0.044360254 -0.00028429891 ;
	setAttr ".tk[140]" -type "float3" 0.024554087 0.058582056 0 ;
	setAttr ".tk[141]" -type "float3" 0.017434729 0.066141039 0 ;
	setAttr ".tk[142]" -type "float3" 0.0051973262 0.060181804 0 ;
	setAttr ".tk[143]" -type "float3" -0.0057433313 0.041135635 0 ;
	setAttr ".tk[144]" -type "float3" -0.010166082 0.014550813 0 ;
	setAttr ".tk[145]" -type "float3" -0.0062944605 -0.014480265 0 ;
	setAttr ".tk[146]" -type "float3" 0.0032172319 -0.043856908 0 ;
	setAttr ".tk[147]" -type "float3" 0.017660376 -0.070161588 0 ;
	setAttr ".tk[148]" -type "float3" -0.0040543573 0.039231997 0.00023263266 ;
	setAttr ".tk[149]" -type "float3" -0.013815414 0.047164042 0 ;
	setAttr ".tk[150]" -type "float3" -0.027741764 0.048561182 0 ;
	setAttr ".tk[151]" -type "float3" -0.042506199 0.040788881 0 ;
	setAttr ".tk[152]" -type "float3" -0.054794911 0.025052968 0 ;
	setAttr ".tk[153]" -type "float3" -0.060177147 0.0029754697 0 ;
	setAttr ".tk[154]" -type "float3" -0.056622032 -0.022642046 0 ;
	setAttr ".tk[155]" -type "float3" -0.044409458 -0.049052432 0 ;
	setAttr ".tk[156]" -type "float3" -0.02677436 -0.073050298 0 ;
	setAttr ".tk[157]" -type "float3" -0.0043237153 -0.092145696 0 ;
	setAttr ".tk[158]" -type "float3" -8.4401108e-10 0.025999311 -0.014803426 ;
	setAttr ".tk[159]" -type "float3" -3.4124241e-09 0.043225281 -0.023068035 ;
	setAttr ".tk[160]" -type "float3" -1.1859811e-09 0.058582049 -0.024554087 ;
	setAttr ".tk[161]" -type "float3" -2.910383e-11 0.066141039 -0.017434768 ;
	setAttr ".tk[162]" -type "float3" -8.7311491e-10 0.060181804 -0.0051973243 ;
	setAttr ".tk[163]" -type "float3" -2.233719e-09 0.041135605 0.0057433732 ;
	setAttr ".tk[164]" -type "float3" -4.0745363e-10 0.014550813 0.01016609 ;
	setAttr ".tk[165]" -type "float3" -1.0841177e-09 -0.014480265 0.0062944707 ;
	setAttr ".tk[166]" -type "float3" -1.2369128e-10 -0.043856945 -0.0032172631 ;
	setAttr ".tk[167]" -type "float3" -4.9476512e-10 -0.070161611 -0.017660379 ;
	setAttr ".tk[168]" -type "float3" -1.0404619e-09 0.040854696 -0.020553559 ;
	setAttr ".tk[169]" -type "float3" 1.0550139e-09 0.058127001 -0.025227005 ;
	setAttr ".tk[170]" -type "float3" 3.6525307e-09 0.068830848 -0.022703748 ;
	setAttr ".tk[171]" -type "float3" -1.3533281e-09 0.07068225 -0.013176987 ;
	setAttr ".tk[172]" -type "float3" 8.2945917e-10 0.062063795 -0.00027949249 ;
	setAttr ".tk[173]" -type "float3" 9.6042641e-10 0.043964747 0.010973159 ;
	setAttr ".tk[174]" -type "float3" -1.8480932e-09 0.019574253 0.016711088 ;
	setAttr ".tk[175]" -type "float3" -7.1304385e-10 -0.0072609028 0.015459833 ;
	setAttr ".tk[176]" -type "float3" -8.7311491e-11 -0.033378623 0.0078514041 ;
	setAttr ".tk[177]" -type "float3" 1.7826096e-10 -0.056824956 -0.0043237209 ;
	setAttr ".tk[178]" -type "float3" 1.2732926e-09 0.045884017 0.011239804 ;
	setAttr ".tk[179]" -type "float3" -1.0477379e-09 0.050851081 0.022883222 ;
	setAttr ".tk[180]" -type "float3" -3.6525307e-09 0.049002424 0.036751606 ;
	setAttr ".tk[181]" -type "float3" 1.3533281e-09 0.040170979 0.050481666 ;
	setAttr ".tk[182]" -type "float3" -8.2945917e-10 0.025012895 0.0612211 ;
	setAttr ".tk[183]" -type "float3" 4.3655746e-10 0.0050211311 0.065932609 ;
	setAttr ".tk[184]" -type "float3" 1.8480932e-09 -0.018086782 0.063373782 ;
	setAttr ".tk[185]" -type "float3" 7.1304385e-10 -0.042236704 0.053650655 ;
	setAttr ".tk[186]" -type "float3" 8.7311491e-11 -0.062732518 0.037828781 ;
	setAttr ".tk[187]" -type "float3" -1.7826096e-10 -0.078809053 0.017660379 ;
	setAttr ".tk[188]" -type "float3" 0.00017369982 0.039920088 0.0048725926 ;
	setAttr ".tk[189]" -type "float3" -6.4028427e-10 0.047164056 0.013815414 ;
	setAttr ".tk[190]" -type "float3" 1.6007107e-10 0.048561182 0.027741726 ;
	setAttr ".tk[191]" -type "float3" 1.0622898e-09 0.040788881 0.042506196 ;
	setAttr ".tk[192]" -type "float3" 1.1641532e-09 0.025052954 0.054794911 ;
	setAttr ".tk[193]" -type "float3" 4.6784407e-09 0.0029754548 0.060177196 ;
	setAttr ".tk[194]" -type "float3" 1.4042598e-09 -0.022642031 0.056622028 ;
	setAttr ".tk[195]" -type "float3" 1.5279511e-10 -0.049052455 0.04440945 ;
	setAttr ".tk[196]" -type "float3" 1.2296368e-09 -0.073050305 0.02677427 ;
	setAttr ".tk[197]" -type "float3" -9.3859853e-10 -0.092145696 0.0043237209 ;
	setAttr ".tk[198]" -type "float3" -4.4383341e-10 0.025999311 -0.014803426 ;
	setAttr ".tk[199]" -type "float3" 2.750312e-09 0.043225281 -0.023068035 ;
	setAttr ".tk[200]" -type "float3" -1.0913936e-09 0.058582049 -0.024554087 ;
	setAttr ".tk[201]" -type "float3" -1.0622898e-09 0.066141039 -0.017434768 ;
	setAttr ".tk[202]" -type "float3" -1.1641532e-09 0.060181804 -0.0051973243 ;
	setAttr ".tk[203]" -type "float3" -4.6784407e-09 0.041135605 0.0057433732 ;
	setAttr ".tk[204]" -type "float3" -1.4042598e-09 0.014550813 0.01016609 ;
	setAttr ".tk[205]" -type "float3" -1.5279511e-10 -0.01448025 0.0062944707 ;
	setAttr ".tk[206]" -type "float3" -1.2296368e-09 -0.043856952 -0.0032172631 ;
	setAttr ".tk[207]" -type "float3" 9.3859853e-10 -0.070161618 -0.017660379 ;
	setAttr ".tk[208]" -type "float3" -0.00017369929 0.039920088 0.0048725926 ;
	setAttr ".tk[209]" -type "float3" 1.4551915e-10 0.047164056 0.013815414 ;
	setAttr ".tk[210]" -type "float3" 1.1859811e-09 0.048561197 0.027741726 ;
	setAttr ".tk[211]" -type "float3" 1.193257e-09 0.040788881 0.042506196 ;
	setAttr ".tk[212]" -type "float3" 8.7311491e-10 0.025052954 0.054794911 ;
	setAttr ".tk[213]" -type "float3" 2.233719e-09 0.0029754548 0.060177196 ;
	setAttr ".tk[214]" -type "float3" 4.0745363e-10 -0.022642031 0.056622028 ;
	setAttr ".tk[215]" -type "float3" 1.0841177e-09 -0.049052447 0.04440945 ;
	setAttr ".tk[216]" -type "float3" 1.2369128e-10 -0.073050313 0.02677427 ;
	setAttr ".tk[217]" -type "float3" 4.9476512e-10 -0.092145704 0.0043237209 ;
	setAttr ".tk[218]" -type "float3" -0.014803422 0.026465369 -0.00023644372 ;
	setAttr ".tk[219]" -type "float3" -0.023068026 0.044360261 -0.00028429891 ;
	setAttr ".tk[220]" -type "float3" -0.024554072 0.058582056 0 ;
	setAttr ".tk[221]" -type "float3" -0.017434707 0.066141024 0 ;
	setAttr ".tk[222]" -type "float3" -0.0051972992 0.060181804 0 ;
	setAttr ".tk[223]" -type "float3" 0.0057434086 0.041135605 0 ;
	setAttr ".tk[224]" -type "float3" 0.010166123 0.014550784 0 ;
	setAttr ".tk[225]" -type "float3" 0.0062945536 -0.014480295 0 ;
	setAttr ".tk[226]" -type "float3" -0.0032172024 -0.043856982 0 ;
	setAttr ".tk[227]" -type "float3" -0.006668333 -0.065716021 -0.025358398 ;
	setAttr ".tk[228]" -type "float3" -0.020553552 0.040854696 0 ;
	setAttr ".tk[229]" -type "float3" -0.025226992 0.058127016 0 ;
	setAttr ".tk[230]" -type "float3" -0.02270373 0.068830848 0 ;
	setAttr ".tk[231]" -type "float3" -0.013177005 0.070682265 0 ;
	setAttr ".tk[232]" -type "float3" -0.00027946683 0.062063765 0 ;
	setAttr ".tk[233]" -type "float3" 0.010973188 0.043964732 0 ;
	setAttr ".tk[234]" -type "float3" 0.016711175 0.019574208 0 ;
	setAttr ".tk[235]" -type "float3" 0.01545989 -0.0072609028 0 ;
	setAttr ".tk[236]" -type "float3" 0.0078514647 -0.033378623 0 ;
	setAttr ".tk[237]" -type "float3" 0.0066683274 -0.065716013 -5.1028901e-19 ;
	setAttr ".tk[238]" -type "float3" 0.011239817 0.045884017 0 ;
	setAttr ".tk[239]" -type "float3" 0.022883212 0.050851036 0 ;
	setAttr ".tk[240]" -type "float3" 0.036751632 0.049002424 0 ;
	setAttr ".tk[241]" -type "float3" 0.050481614 0.040170979 0 ;
	setAttr ".tk[242]" -type "float3" 0.061221134 0.025012881 0 ;
	setAttr ".tk[243]" -type "float3" 0.065932631 0.0050211311 0 ;
	setAttr ".tk[244]" -type "float3" 0.063373819 -0.018086797 0 ;
	setAttr ".tk[245]" -type "float3" 0.053650714 -0.042236734 0 ;
	setAttr ".tk[246]" -type "float3" 0.037828892 -0.062732555 0 ;
	setAttr ".tk[247]" -type "float3" 0.0066683292 -0.087700151 5.1028901e-19 ;
	setAttr ".tk[248]" -type "float3" 0.0040543666 0.039232004 0.00023263266 ;
	setAttr ".tk[249]" -type "float3" 0.013815429 0.047164042 0 ;
	setAttr ".tk[250]" -type "float3" 0.027741786 0.048561182 0 ;
	setAttr ".tk[251]" -type "float3" 0.042506266 0.040788867 0 ;
	setAttr ".tk[252]" -type "float3" 0.054794937 0.025052939 0 ;
	setAttr ".tk[253]" -type "float3" 0.060177237 0.0029754548 0 ;
	setAttr ".tk[254]" -type "float3" 0.056622062 -0.022642076 0 ;
	setAttr ".tk[255]" -type "float3" 0.044409536 -0.049052507 0 ;
	setAttr ".tk[256]" -type "float3" 0.02677433 -0.073050305 0 ;
	setAttr ".tk[257]" -type "float3" -0.0066683255 -0.087700151 -0.025358398 ;
	setAttr ".tk[258]" -type "float3" -0.014803422 0.026465362 0.00023644381 ;
	setAttr ".tk[259]" -type "float3" -0.023068026 0.044360232 0.00028429451 ;
	setAttr ".tk[260]" -type "float3" -0.024554042 0.058582049 0 ;
	setAttr ".tk[261]" -type "float3" -0.017434748 0.066141024 0 ;
	setAttr ".tk[262]" -type "float3" -0.0051972992 0.060181804 0 ;
	setAttr ".tk[263]" -type "float3" 0.0057434104 0.041135605 0 ;
	setAttr ".tk[264]" -type "float3" 0.010166123 0.014550784 0 ;
	setAttr ".tk[265]" -type "float3" 0.0062945536 -0.014480295 0 ;
	setAttr ".tk[266]" -type "float3" -0.0032172024 -0.043856982 0 ;
	setAttr ".tk[267]" -type "float3" -0.006668333 -0.065716021 0.025358398 ;
	setAttr ".tk[268]" -type "float3" 0.0040543666 0.039231997 -0.00023263282 ;
	setAttr ".tk[269]" -type "float3" 0.013815429 0.047164042 0 ;
	setAttr ".tk[270]" -type "float3" 0.027741786 0.048561167 0 ;
	setAttr ".tk[271]" -type "float3" 0.042506214 0.040788867 0 ;
	setAttr ".tk[272]" -type "float3" 0.054794934 0.025052939 0 ;
	setAttr ".tk[273]" -type "float3" 0.060177237 0.0029754548 0 ;
	setAttr ".tk[274]" -type "float3" 0.056622062 -0.022642076 0 ;
	setAttr ".tk[275]" -type "float3" 0.044409536 -0.049052507 0 ;
	setAttr ".tk[276]" -type "float3" 0.02677433 -0.073050313 0 ;
	setAttr ".tk[277]" -type "float3" -0.0066683255 -0.087700143 0.025358398 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "72674B5B-5044-2E21-9AB9-D9AAAC032CE6";
	setAttr ".ics" -type "componentList" 6 "vtx[47]" "vtx[57]" "vtx[67]" "vtx[77]" "vtx[87]" "vtx[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak5";
	rename -uid "F043154D-974D-DD77-433D-489F37834C1C";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[12]" -type "float3" 0 2.3283064e-10 0 ;
	setAttr ".tk[13]" -type "float3" 0 -2.910383e-11 0 ;
	setAttr ".tk[21]" -type "float3" 0 -2.910383e-11 0 ;
	setAttr ".tk[22]" -type "float3" 0 2.3283064e-10 0 ;
	setAttr ".tk[23]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[38]" -type "float3" 0 -7.2759576e-12 0 ;
	setAttr ".tk[47]" -type "float3" -0.025358383 0.0044455528 -0.01099208 ;
	setAttr ".tk[57]" -type "float3" -1.086543e-09 -0.0088911057 -0.01099208 ;
	setAttr ".tk[67]" -type "float3" -1.5522043e-10 -0.008891046 0.01099208 ;
	setAttr ".tk[77]" -type "float3" -0.025358381 0.0044455528 0.01099202 ;
	setAttr ".tk[87]" -type "float3" 0.025358383 0.0044456124 -0.01099202 ;
	setAttr ".tk[97]" -type "float3" 0.025358383 0.0044455528 0.01099202 ;
	setAttr ".tk[198]" -type "float3" 0 -7.2759576e-12 0 ;
	setAttr ".tk[218]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[221]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[222]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[226]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[227]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[229]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[231]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[234]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[235]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[237]" -type "float3" 0 5.8207661e-11 0 ;
	setAttr ".tk[239]" -type "float3" 0 4.6566129e-10 0 ;
	setAttr ".tk[241]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[242]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[244]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[247]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[248]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[251]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[252]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[254]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[255]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[258]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[259]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[263]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[265]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[266]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[269]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[270]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[272]" -type "float3" 0 -3.7252903e-09 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "D1BCC3D0-5840-C866-FE08-E497762E3177";
	setAttr ".ics" -type "componentList" 6 "vtx[102]" "vtx[112]" "vtx[122]" "vtx[132]" "vtx[142]" "vtx[152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak6";
	rename -uid "31328A76-BE41-0C98-8557-AA829429FEDE";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[102]" -type "float3" -0.01099205 0.0044455528 0.025358398 ;
	setAttr ".tk[112]" -type "float3" -0.01099205 -0.008891046 -5.1028901e-19 ;
	setAttr ".tk[122]" -type "float3" 0.010991991 -0.0088911057 5.1028901e-19 ;
	setAttr ".tk[132]" -type "float3" 0.01099205 0.0044455528 0.025358398 ;
	setAttr ".tk[142]" -type "float3" -0.01099205 0.0044455528 -0.025358398 ;
	setAttr ".tk[152]" -type "float3" 0.01099205 0.0044455528 -0.025358398 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "FB9F65FA-8245-E19E-6CAF-C988C5B0EA19";
	setAttr ".ics" -type "componentList" 6 "vtx[157]" "vtx[167]" "vtx[177]" "vtx[187]" "vtx[197]" "vtx[207]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak7";
	rename -uid "16584325-7E4B-A09E-8BC4-2983E5827913";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[157]" -type "float3" 0.025358383 0.0044455528 0.01099205 ;
	setAttr ".tk[167]" -type "float3" -1.7826096e-10 -0.008891046 0.01099205 ;
	setAttr ".tk[177]" -type "float3" 1.7826096e-10 -0.0088911057 -0.01099205 ;
	setAttr ".tk[187]" -type "float3" 0.025358384 0.0044455528 -0.01099205 ;
	setAttr ".tk[197]" -type "float3" -0.025358384 0.0044456124 0.01099205 ;
	setAttr ".tk[207]" -type "float3" -0.025358383 0.0044455528 -0.01099205 ;
createNode lambert -n "lambert2";
	rename -uid "133B641A-5E4D-4F52-1FF8-F59C77CB8303";
	setAttr ".c" -type "float3" 0.88919997 1 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "7E0A0E97-DC4B-E3DA-DD8C-42AF875381C4";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "97EF4802-D048-D7B1-690C-B3895FABA461";
createNode polyUnite -n "polyUnite1";
	rename -uid "E45D3C58-0F4F-560F-9A3A-C5BD61D4798C";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId1";
	rename -uid "604CE6DE-6E49-A374-885D-87871CA5BE89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "AD026E9F-9348-D5EE-5544-EE951EE50CDE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId2";
	rename -uid "51A81E58-4A4C-EF6B-9DDD-54B9DE9E6BED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "BD9DCB98-7742-BC33-0A03-B0A66C322F6F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4D506036-0245-E588-CA4F-B0A9277844B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId4";
	rename -uid "46CFA7D1-F645-7BB1-72CD-7EA14C13D356";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "F4E7BCA8-DE45-D4C5-0C39-4588E7E4EC6A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "F85333CD-A54A-F66E-EB0E-40A7099FDA5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId6";
	rename -uid "7D7E93DA-B24B-A2D6-040C-5E9F629E744A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "8909D006-BC4A-64EF-2458-55A0D9F7D51A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "B010D6AC-2649-1E86-ECC7-8D94DAFD701F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId8";
	rename -uid "6F583A60-B847-20B5-E9EB-FA8EB0838B66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "45DEFA88-DC4F-19AB-85DF-4888F30AD858";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "7B64AF2B-804F-298F-0311-19BEEA770F77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode polyUnite -n "polyUnite2";
	rename -uid "A834E181-074B-D265-C0FE-7B8F79671673";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId10";
	rename -uid "8C381081-8841-A6F0-8BAA-E9A93811D67C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "2E555AD4-9D42-7967-9DAE-D49160F83276";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:283]";
createNode groupId -n "groupId11";
	rename -uid "7C095DB6-354D-F9C3-F5D9-F0953F56C102";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "762CEAF4-D345-E09A-63A5-0A8C2EF36186";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "40D04BD8-804E-0B6A-719E-15894DFCB0C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:283]";
createNode groupId -n "groupId13";
	rename -uid "031CCB71-F34D-F65F-2C8D-2A9388545931";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "55F39AF2-4841-8C5D-24C1-35B4EACE51E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[284:303]";
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "6C59D268-144C-E21D-4D81-6482996D903A";
	setAttr ".ics" -type "componentList" 2 "vtx[212]" "vtx[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "E8FE3507-9F45-F3A8-9B5A-068AF8238678";
	setAttr ".ics" -type "componentList" 2 "vtx[157]" "vtx[272]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "3B1CF97A-EF40-5C1B-045C-6DA26E4CDED8";
	setAttr ".ics" -type "componentList" 2 "vtx[47]" "vtx[262]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "E4433309-5C42-E883-1871-FDB012722563";
	setAttr ".ics" -type "componentList" 2 "vtx[102]" "vtx[266]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4149041C-2C45-F080-B3BF-A9A426BAAA1C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1122\n                -height 633\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1122\n            -height 633\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5C7C74B2-414E-4808-4952-08B484370F61";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "67C478B6-FA4B-F394-CAB0-72BB6477BB14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.56794548034667969;
	setAttr ".dr" no;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMirror -n "polyMirror1";
	rename -uid "A5ED5C7B-1742-B643-F768-8B8D916DACE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[284:303]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 0.0068148143173495327 0 ;
	setAttr ".d" 3;
createNode polyTweak -n "polyTweak8";
	rename -uid "549D8C50-1348-5DF3-874D-6687F9906747";
	setAttr ".uopa" yes;
	setAttr -s 286 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.022404967 -8.9406967e-08 0.012935508
		 -0.012935508 -8.9406967e-08 0.022404967 0 -8.9406967e-08 0.025871016 0.012935508
		 -8.9406967e-08 0.022404967 0.022404967 -8.9406967e-08 0.012935508 0.025871016 -8.9406967e-08
		 0 0.022404967 -8.9406967e-08 -0.012935508 0.012935508 -8.9406967e-08 -0.022404967
		 0 -8.9406967e-08 -0.025871016 -0.012935508 -8.9406967e-08 -0.022404967 -0.022404967
		 -8.9406967e-08 -0.012935508 -0.025871016 -8.9406967e-08 0 -0.020698121 -8.9406967e-08
		 0.012935508 -0.012935508 -8.9406967e-08 0.020698121 0 8.9406967e-08 0.02206588 0.012935508
		 -8.9406967e-08 0.020698121 0.020698121 -8.9406967e-08 0.012935508 0.022065878 8.9406967e-08
		 0 0.020698121 -8.9406967e-08 -0.012935508 0.012935508 -8.9406967e-08 -0.020698121
		 1.4813485e-10 8.9406967e-08 -0.022065878 -0.012935508 -8.9406967e-08 -0.020698121
		 -0.020698121 -8.9406967e-08 -0.012935508 -0.02206588 8.9406967e-08 0 0 0 0 0 0 -1.5573331e-18
		 -0.012773207 0 0.022637991 2.9860248e-10 0 0.027001131 0.013112155 0 0.022242229
		 0.022637991 0 0.012773207 0.027001128 0 -1.6685714e-18 0.022242228 0 -0.013112155
		 0.012773207 0 -0.022637991 7.5817033e-11 0 -0.027001128 -0.012773207 0 -0.022637991
		 -0.022242229 0 -0.013112155 -0.027001131 0 -1.6685714e-18 -0.022242229 0 0.013112155
		 -0.012454996 0 0.024121853 -0.011974492 0 0.027935192 -0.011493997 0 0.033921879
		 -0.011013486 0 0.042667631 -0.010532977 0 0.053054415 -0.010052473 0 0.063025363
		 -0.0095719732 0 0.070906542 -0.0090914695 0 0.076128393 -0.0086109601 0 0.079541884
		 2.587007e-11 0 0.084898509 0 0 0.024970042 0 0 0.029160582 -1.1944099e-09 0 0.035658538
		 1.1944099e-09 0 0.044401959 0 0 0.054226156 1.1944099e-09 0 0.06352295 0 0 0.071051627
		 5.9720495e-10 0 0.076339364 5.9720495e-10 0 0.07958889 1.4930124e-10 0 0.035163693
		 2.9860248e-10 0 0.044585772 -4.4790371e-10 0 0.054721281 4.4790371e-10 0 0.064812317
		 4.4790371e-10 0 0.073944613 5.9720495e-10 0 0.081144139 -2.9860248e-10 0 0.086012729
		 2.9860248e-10 0 0.088584207 -2.9860248e-10 0 0.089200281 -0.01239931 0 0.030430403
		 -0.011974492 0 0.039760835 -0.011493997 0 0.050689083 -0.011013486 0 0.061886027
		 -0.01053298 0 0.072289221 -0.010052473 0 0.08047802 -0.0095719723 0 0.085801303 -0.0090914676
		 0 0.088348933 -0.0086109601 0 0.08915782 0.01237919 0 0.024121853 0.011883347 0 0.027935192
		 0.011493997 0 0.033921879 0.011013486 0 0.042667631 0.01053298 0 0.053054415 0.010052473
		 0 0.063025363 0.0095719732 0 0.070906542 0.0090914685 0 0.076128393 0.0086109601
		 0 0.079541884 0.012529586 0 0.030168053 0.011974492 0 0.039760835 0.011493997 0 0.050689083
		 0.011013486 0 0.061886027 0.01053298 0 0.072289221 0.010052471 0 0.08047802 0.0095719704
		 0 0.085801303 0.0090914676 0 0.088348933 0.0086109601 0 0.08915782 0.024121853 0
		 0.012454996 0.027935185 0 0.011974494 0.033921875 0 0.011493997 0.042667624 0 0.011013489
		 0.053054385 0 0.010532981 0.063025363 0 0.010052474 0.070906557 0 0.0095719788 0.076128341
		 0 0.0090914741 0.079541832 0 0.0086109648 0.084898509 0 0 0.024970038 0 -1.6360978e-20
		 0.029160576 0 -3.2721956e-20 0.035658538 0 -4.9082959e-20 0.044401951 0 -6.5443913e-20
		 0.054226149 0 -8.1804931e-20 0.063522965 0 -9.8165918e-20 0.071051598 0 -1.1452687e-19
		 0.076339386 0 -1.3088783e-19 0.079588905 0 -1.4724885e-19 0.035163693 0 1.6360978e-20
		 0.044585753 0 3.2721956e-20 0.054721251 0 4.9082959e-20 0.064812243 0 6.5443913e-20
		 0.073944584 0 8.1804931e-20 0.081144132 0 9.8165918e-20 0.086012676 0 1.1452687e-19
		 0.088584214 0 1.3088783e-19 0.089200303 0 1.4724885e-19 0.03043041 0 0.01239931 0.039760821
		 0 0.011974494 0.050689068 0 0.011493997 0.061886027 0 0.011013489 0.072289214 0 0.010532981
		 0.08047802 0 0.010052474 0.085801311 0 0.0095719788 0.088348873 0 0.0090914741 0.089157797
		 0 0.0086109648 0.024121853 0 -0.01237919 0.027935185 0 -0.011883347 0.033921868 0
		 -0.011493997 0.042667639 0 -0.011013489 0.053054385 0 -0.010532981 0.063025348 0
		 -0.010052474 0.07090655 0 -0.0095719788 0.076128341 0 -0.0090914741 0.079541832 0
		 -0.0086109648 0.030168049 0 -0.012529586 0.039760821 0 -0.011974494 0.050689068 0
		 -0.011493997 0.061886027 0 -0.011013489 0.072289199 0 -0.010532981 0.080478005 0
		 -0.010052474 0.085801311 0 -0.0095719788 0.088348873 0 -0.0090914741 0.089157812
		 0 -0.0086109648 0.012454996 0 -0.024121853 0.011974493 0 -0.027935185 0.011493997
		 0 -0.033921868 0.011013486 0 -0.042667624 0.01053298 0 -0.053054385 0.010052474 0
		 -0.063025363 0.0095719732 0 -0.070906557 0.0090914685 0 -0.076128341 0.0086109601
		 0 -0.079541832 0 0 -0.084898509 3.3359487e-10 0 -0.024970038 -3.3826064e-10 0 -0.029160576
		 -1.1710815e-09 0 -0.035658538 4.3390663e-10 0 -0.044401966 -2.6594274e-10 0 -0.054226138
		 -3.079339e-10 0 -0.063522942 5.925393e-10 0 -0.07105159 2.2861764e-10 0 -0.076339357;
	setAttr ".tk[166:285]" 2.7993982e-11 0 -0.079588905 -4.0824538e-10 0 -0.035163689
		 3.3592787e-10 0 -0.044585768 1.1710815e-09 0 -0.054721251 -4.3390663e-10 0 -0.06481231
		 2.6594274e-10 0 -0.073944584 -1.399699e-10 0 -0.081144132 -5.925393e-10 0 -0.086012684
		 -2.2861764e-10 0 -0.088584207 -2.7993982e-11 0 -0.089200303 0.01239931 0 -0.030430399
		 0.011974492 0 -0.039760821 0.011493997 0 -0.05068906 0.011013486 0 -0.061886027 0.01053298
		 0 -0.072289199 0.010052471 0 -0.080478027 0.0095719723 0 -0.085801311 0.0090914676
		 0 -0.088348873 0.0086109592 0 -0.089157797 -0.012454996 0 -0.024121853 -0.011974493
		 0 -0.027935185 -0.011493997 0 -0.033921868 -0.011013486 0 -0.042667624 -0.01053298
		 0 -0.053054385 -0.010052471 0 -0.063025363 -0.0095719723 0 -0.070906557 -0.0090914676
		 0 -0.076128341 -0.0086109592 0 -0.079541832 -0.01239931 0 -0.030430399 -0.011974492
		 0 -0.039760821 -0.011493997 0 -0.05068906 -0.011013486 0 -0.061886027 -0.01053298
		 0 -0.072289199 -0.010052474 0 -0.080478027 -0.0095719732 0 -0.085801311 -0.0090914685
		 0 -0.088348873 -0.0086109601 0 -0.089157797 -0.024121853 0 -0.01237919 -0.027935185
		 0 -0.011883347 -0.033921871 0 -0.011493997 -0.04266765 0 -0.011013489 -0.053054415
		 0 -0.010532981 -0.06302537 0 -0.010052474 -0.070906572 0 -0.0095719788 -0.076128386
		 0 -0.0090914741 -0.079541847 0 -0.0086109648 -0.084898509 0 0 -0.024970042 0 -1.6360978e-20
		 -0.029160576 0 -3.2721956e-20 -0.035658538 0 -4.9082959e-20 -0.044401955 0 -6.5443913e-20
		 -0.054226138 0 -8.1804931e-20 -0.06352295 0 -9.8165918e-20 -0.071051598 0 -1.1452687e-19
		 -0.076339364 0 -1.3088783e-19 -0.07958892 0 -1.4724885e-19 -0.035163693 0 1.6360978e-20
		 -0.044585757 0 3.2721956e-20 -0.054721281 0 4.9082959e-20 -0.064812273 0 6.5443913e-20
		 -0.073944598 0 8.1804931e-20 -0.081144139 0 9.8165918e-20 -0.086012714 0 1.1452687e-19
		 -0.088584207 0 1.3088783e-19 -0.08920034 0 1.4724885e-19 -0.030168053 0 -0.012529586
		 -0.039760824 0 -0.011974494 -0.050689083 0 -0.011493997 -0.061886042 0 -0.011013489
		 -0.072289221 0 -0.010532981 -0.080478042 0 -0.010052474 -0.085801326 0 -0.0095719788
		 -0.088348933 0 -0.0090914741 -0.089157805 0 -0.0086109648 -0.024121853 0 0.01237919
		 -0.027935185 0 0.011883349 -0.033921879 0 0.011493997 -0.042667631 0 0.011013489
		 -0.053054415 0 0.010532981 -0.06302537 0 0.010052474 -0.070906572 0 0.0095719788
		 -0.076128386 0 0.0090914741 -0.079541847 0 0.0086109648 -0.030168053 0 0.012529586
		 -0.039760824 0 0.011974494 -0.050689083 0 0.011493997 -0.061886027 0 0.011013489
		 -0.072289221 0 0.010532981 -0.080478042 0 0.010052474 -0.085801326 0 0.0095719788
		 -0.088348933 0 0.0090914741 -0.089157805 0 0.0086109648 -5.2797295e-09 0 0.12516053
		 0.040262062 0 0.084898509 1.7599102e-09 0 0.044636454 -0.040262062 0 0.084898509
		 0.084898502 0 0.040262062 0.12516053 0 3.5198204e-09 0.084898509 0 -0.040262062 0.044636454
		 0 0 -5.2797295e-09 0 -0.044636454 0.040262062 0 -0.084898509 1.7599102e-09 0 -0.12516053
		 -0.040262062 0 -0.084898509 -0.084898517 0 0.040262062 -0.044636454 0 3.5198204e-09
		 -0.084898509 0 -0.040262062 -0.12516053 0 0 0.031280857 0 5.24777e-13 0.028280275
		 0 0.017066022 0.017066022 0 0.028280275 0 0 0.031280857 -0.017066022 0 0.028280275
		 -0.028280275 0 0.017066022 -0.031280857 0 0 -0.028280275 0 -0.017066022 -0.017066022
		 0 -0.028280275 1.1099735e-10 0 -0.031280857 0.017066022 0 -0.028280275 0.028280275
		 0 -0.017066022;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "8D2F4A54-DD48-10DB-A88A-B385743A0FDF";
	setAttr ".dc" -type "componentList" 1 "f[316:327]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "7D1BE433-A240-EE37-2120-F7AA25B87569";
	setAttr ".dc" -type "componentList" 1 "f[608:619]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "01C81EB3-534C-3B86-786F-C19DDB3ECFE0";
	setAttr ".dc" -type "componentList" 3 "f[328:459]" "f[461:479]" "f[481:587]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "F83016B7-434A-FAAC-9810-D79D3DD3244E";
	setAttr ".dc" -type "componentList" 1 "f[328:329]";
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId10.id" "pCylinderShape1.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[2].gco";
connectAttr "groupParts6.og" "pCylinderShape1.i";
connectAttr "groupId11.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pPyramidShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPyramidShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pPyramidShape1.i";
connectAttr "groupId2.id" "pPyramidShape1.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.i"
		;
connectAttr "groupId7.id" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts3.og" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.i"
		;
connectAttr "groupId5.id" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts2.og" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.i"
		;
connectAttr "groupId3.id" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId4.id" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts5.og" "pPyramid2Shape.i";
connectAttr "groupId9.id" "pPyramid2Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPyramid2Shape.iog.og[0].gco";
connectAttr "deleteComponent4.og" "pCylinder2Shape.i";
connectAttr "groupId12.id" "pCylinder2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder2Shape.iog.og[0].gco";
connectAttr "groupId13.id" "pCylinder2Shape.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCylinder2Shape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyMergeVert1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak7.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPyramidShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "pPyramid2Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCylinder2Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "groupId5.msg" "lambert2SG.gn" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "groupId13.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "pPyramidShape1.o" "polyUnite1.ip[0]";
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.o" "polyUnite1.ip[1]"
		;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.o" "polyUnite1.ip[2]"
		;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.o" "polyUnite1.ip[3]"
		;
connectAttr "pPyramidShape1.wm" "polyUnite1.im[0]";
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.wm" "polyUnite1.im[1]"
		;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.wm" "polyUnite1.im[2]"
		;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.wm" "polyUnite1.im[3]"
		;
connectAttr "polyPyramid1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pasted__polyPyramid4.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "pasted__polyPyramid2.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pasted__polyPyramid1.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyUnite1.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "pCylinderShape1.o" "polyUnite2.ip[0]";
connectAttr "pPyramid2Shape.o" "polyUnite2.ip[1]";
connectAttr "pCylinderShape1.wm" "polyUnite2.im[0]";
connectAttr "pPyramid2Shape.wm" "polyUnite2.im[1]";
connectAttr "polyMergeVert5.out" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "polyUnite2.out" "groupParts7.ig";
connectAttr "groupId12.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId13.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyMergeVert6.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polySplitRing1.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing1.mp";
connectAttr "polyTweak8.out" "polyMirror1.ip";
connectAttr "pCylinder2Shape.wm" "polyMirror1.mp";
connectAttr "polySplitRing1.out" "polyTweak8.ip";
connectAttr "polyMirror1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
// End of tree4_young.ma
