//Maya ASCII 2018 scene
//Name: CRYSTAL_PENTA.ma
//Last modified: Fri, Mar 02, 2018 05:29:08 PM
//Codeset: UTF-8
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.6";
fileInfo "license" "student";
createNode transform -n "Crystal_1";
	rename -uid "16D20E81-BB46-AD57-FA02-7D8500FD2EF6";
	setAttr ".t" -type "double3" -2.6683789286341733 0.54617327123114379 -1.3322676295501878e-15 ;
	setAttr ".s" -type "double3" 0.25 0.25 0.25 ;
createNode mesh -n "Crystal_Shape1" -p "Crystal_1";
	rename -uid "F3DC2722-4C4D-DC06-3E37-DDBE72E9A86B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51492053270339966 0.8403962254524231 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809146 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.52414191 0.91492629 0.43679553 0.88654572 0.43679553 0.79470426 0.52414197 0.76632369
		 0.578125 0.84062499;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 2.3841858e-07 0 0 2.3841858e-07 
		0 0 2.3841858e-07 0 0 2.3841858e-07 0 0 2.3841858e-07 0 0 3.3853834 0 0 3.3853834 
		0 0 3.3853834 0 0 3.3853834 0 0 3.3853834 0 0 -1.9649702 0 -0.010053071 3.4459569 
		0.044777006 0.042585462 3.4459569 0.027673714 0.042585462 3.4459569 -0.02767371 -0.010053064 
		3.4459569 -0.044777006 -0.042585462 3.4459569 -1.4031328e-09;
	setAttr -s 16 ".vt[0:15]"  0.30901712 -2.1221993 -0.9510566 -0.809017 -2.1221993 -0.58778536
		 -0.80901706 -2.1221993 0.58778524 0.30901697 -2.1221993 0.95105654 1 -2.1221993 0
		 0.30901712 0.34513205 -0.9510566 -0.809017 0.34513205 -0.58778536 -0.80901706 0.34513205 0.58778524
		 0.30901697 0.34513205 0.95105654 1 0.34513205 0 0 -1 0 0.07725428 1.19145989 -0.23776415
		 -0.20225425 1.19145989 -0.14694634 -0.20225427 1.19145989 0.14694631 0.077254243 1.19145989 0.23776414
		 0.25 1.19145989 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 15 11 1 11 12 1 12 13 1 13 14 1 14 15 1;
	setAttr -s 16 -ch 60 ".fc[0:15]" -type "polyFaces" 
		f 4 0 11 -6 -11
		mu 0 4 5 6 12 11
		f 4 1 12 -7 -12
		mu 0 4 6 7 13 12
		f 4 2 13 -8 -13
		mu 0 4 7 8 14 13
		f 4 3 14 -9 -14
		mu 0 4 8 9 15 14
		f 4 4 10 -10 -15
		mu 0 4 9 10 16 15
		f 3 -1 -16 16
		mu 0 3 1 0 22
		f 3 -2 -17 17
		mu 0 3 2 1 22
		f 3 -3 -18 18
		mu 0 3 3 2 22
		f 3 -4 -19 19
		mu 0 3 4 3 22
		f 3 -5 -20 15
		mu 0 3 0 4 22
		f 5 25 26 27 28 29
		mu 0 5 27 23 24 25 26
		f 4 9 20 -26 -25
		mu 0 4 21 20 23 27
		f 4 5 21 -27 -21
		mu 0 4 20 19 24 23
		f 4 6 22 -28 -22
		mu 0 4 19 18 25 24
		f 4 7 23 -29 -23
		mu 0 4 18 17 26 25
		f 4 8 24 -30 -24
		mu 0 4 17 21 27 26;
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
connectAttr "Crystal_Shape1.iog" ":initialShadingGroup.dsm" -na;
// End of CRYSTAL_PENTA.ma
