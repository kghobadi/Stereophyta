//Maya ASCII 2018 scene
//Name: CRYSTAL_SEXA.ma
//Last modified: Fri, Mar 02, 2018 05:29:28 PM
//Codeset: UTF-8
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.6";
fileInfo "license" "student";
createNode transform -n "Crystal_2";
	rename -uid "A130B24C-AA41-24AC-2290-4183661C2C6C";
	setAttr ".t" -type "double3" -4.3184753021008522 0.95305441549129866 0 ;
createNode mesh -n "Crystal_Shape2" -p "Crystal_2";
	rename -uid "0412C0B6-2E47-28C0-45FB-84A997ABE0B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.83375316858291626 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5390625 0.90828323
		 0.4609375 0.90828323 0.421875 0.84062499 0.4609375 0.77296674 0.5390625 0.77296674
		 0.578125 0.84062499;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[6]" -type "float3" 0 -0.35290885 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.35290885 0 ;
	setAttr ".pt[8]" -type "float3" 0 -0.35290885 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.35290885 0 ;
	setAttr ".pt[10]" -type "float3" 0 -0.35290885 0 ;
	setAttr ".pt[11]" -type "float3" 0 -0.35290885 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.31091031 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.31091031 0 ;
	setAttr ".pt[15]" -type "float3" 0 -0.31091031 0 ;
	setAttr ".pt[16]" -type "float3" 0 -0.31091031 0 ;
	setAttr ".pt[17]" -type "float3" 0 -0.31091031 0 ;
	setAttr ".pt[18]" -type "float3" 0 -0.31091031 0 ;
	setAttr -s 19 ".vt[0:18]"  0.12500006 -1 -0.21650633 -0.12499996 -1 -0.21650638
		 -0.25 -1 -3.7252903e-08 -0.12500003 -1 0.21650635 0.12499999 -1 0.21650636 0.25 -1 0
		 0.12500006 1 -0.21650633 -0.12499996 1 -0.21650638 -0.25 1 -3.7252903e-08 -0.12500003 1 0.21650635
		 0.12499999 1 0.21650636 0.25 1 0 0 -1.28449893 0 0.031250015 1.1815455 -0.054126583
		 -0.031249991 1.1815455 -0.054126594 -0.0625 1.1815455 -9.3132257e-09 -0.031250007 1.1815455 0.054126587
		 0.031249998 1.1815455 0.05412659 0.0625 1.1815455 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 14 1 8 15 1 9 16 1 10 17 1 11 18 1 18 13 1 13 14 1
		 14 15 1 15 16 1 16 17 1 17 18 1;
	setAttr -s 19 -ch 72 ".fc[0:18]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 6 30 31 32 33 34 35
		mu 0 6 32 27 28 29 30 31
		f 4 11 24 -31 -30
		mu 0 4 25 24 27 32
		f 4 6 25 -32 -25
		mu 0 4 24 23 28 27
		f 4 7 26 -33 -26
		mu 0 4 23 22 29 28
		f 4 8 27 -34 -27
		mu 0 4 22 21 30 29
		f 4 9 28 -35 -28
		mu 0 4 21 20 31 30
		f 4 10 29 -36 -29
		mu 0 4 20 25 32 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "Crystal_Shape2.iog" ":initialShadingGroup.dsm" -na;
// End of CRYSTAL_SEXA.ma
