//Maya ASCII 2016 scene
//Name: animal1.ma
//Last modified: Wed, Nov 01, 2017 11:31:32 PM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "790D3539-CE49-37F7-EA57-1684107979BA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 23.770166978205797 1.412431175674739 3.8351998550162922 ;
	setAttr ".r" -type "double3" 354.2616472713247 448.19999999984145 359.99999999974278 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-16 0 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" 4.5475065127840691e-16 6.4153003493828046e-15 -1.0159305394445383e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FE835BAE-3740-7305-C2CD-B686B35D5D6F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 20.345658666980306;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.5364522146108159 -0.62184576479235609 3.1993297517529822 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6A002850-5B43-4342-B634-4292619EEFDD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E3885787-B64F-4A12-1E52-C684E71B40D4";
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
	rename -uid "B9DEC6A8-524B-1C4A-1A5C-B78742FF0AA0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0C5674CD-7D49-5D11-90E7-80951502A2E3";
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
	rename -uid "31A49467-3E48-22F1-958C-3BAEDD1D4C0E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.25140627703307 3.6957213623814313 4.1568736580884362 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7974C46A-0C45-3FE9-0370-FBAD3A3B4C53";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 20.611432754985859;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere1";
	rename -uid "70FF4640-9D48-7263-26BD-038792BD0464";
	setAttr ".t" -type "double3" 0 3.6375109155348335 6.1345859709049826 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 14.999999999999998 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1.4633069404788532 1.4633069404788532 1.4633069404788532 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "C0CD3DA9-AD43-DEDA-6BFC-57B3FE2B06BF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.15000000223517418 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pSphereShape1Orig" -p "pSphere1";
	rename -uid "9526CB0E-614D-DACB-4A71-9F93D4C76664";
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
	rename -uid "95940E54-C840-F66E-66B2-EFBA01CA1EC1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 2.8997837667866033 3.2598876332502762 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -42.954591511112781 90.000000000000014 ;
	setAttr ".bps" -type "matrix" 0 0.73189397443134985 0.68141852791884283 0 -2.7755575615628909e-16 0.68141852791884294 -0.73189397443134985 0
		 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0 0 2.8997837667866033 3.2598876332502762 1;
	setAttr ".radi" 0.62471150588373225;
createNode joint -n "joint2" -p "joint1";
	rename -uid "816BEB52-4B4A-913C-2738-C1A280EA0236";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.8532531356332438 0.066246692711167635 -1.8387150888301466e-17 ;
	setAttr ".r" -type "double3" -0.038430672294884886 0.25050337116998322 0.069483967015381259 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.2127851737873204e-15 -1.3919852118921863e-14 -61.081651956813687 ;
	setAttr ".bps" -type "matrix" 2.4294725086589572e-16 -0.2425356250363328 0.9701425001453321 0
		 -1.3421561411472569e-16 0.97014250014533221 0.24253562503633269 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 9.2444637330587321e-33 4.3013102936793155 4.4742431015731521 1;
	setAttr ".radi" 0.52737833328648165;
createNode joint -n "joint3" -p "joint2";
	rename -uid "B418C8EF-244C-6D98-7882-71A3DC340E0D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.4744097226985291 0.027008698872468095 1.0834205522716341e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -14.036243467926461 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 1.6984830207341299e-16 2.0878521140647348e-16 0 -7.8109332312904156e-17 1.0000000000000002 -2.4651903288156619e-32 0
		 -2.4094782435053762e-16 -5.551115123125795e-17 1 0 4.0367491634356463e-31 3.2423088215657918 8.8216087082889381 1;
	setAttr ".radi" 0.69551069534392951;
createNode joint -n "joint16" -p "joint2";
	rename -uid "0EC10D87-3F45-0BC5-70D8-818429229BA7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.2530816098468109 -1.1390623792574848 4.573126889699171e-16 ;
	setAttr ".r" -type "double3" 2.7034714792439894e-14 2.3257806108201967e-14 -4.7708320221952696e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2513349982733192e-16 -1.4054568710067028e-14 -1.0202279594613426 ;
	setAttr ".bps" -type "matrix" 2.4529849893849337e-16 -0.25977094765097358 0.96567026191993477 0
		 -1.2986856507258175e-16 0.96567026191993488 0.25977094765097347 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 4.0367491634356463e-31 2.8923405377792379 5.4136476213274882 1;
	setAttr ".radi" 0.5939862779196905;
createNode joint -n "joint17" -p "joint16";
	rename -uid "8FC62CEB-3A43-41DF-B57E-85AD4D70DB10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.8170680397806818 -9.7630237227974703e-15 6.9102256156580633e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.0202279594613426 ;
	setAttr ".bps" -type "matrix" 2.4294725086589572e-16 -0.24253562503633277 0.9701425001453321 0
		 -1.3421561411472569e-16 0.97014250014533221 0.24253562503633269 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 5.0228252949619111e-31 2.1605481034881304 8.1340064531487748 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint1";
	rename -uid "A6BB70FD-7C45-4B2F-9CC5-89A349465702";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.73375270771774637 -1.7707643572171452 -1.9472935832616947 ;
	setAttr ".r" -type "double3" 0.25147057775822734 0.0021840476551079954 -0.012927851923925426 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -135.85191906490519 ;
	setAttr ".bps" -type "matrix" 1.9332179800939367e-16 -0.99978305672811218 0.020828813681835756 0
		 1.9915792776062066e-16 0.020828813681835645 0.99978305672811207 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 1.9472935832616951 1.1561229396992347 4.055906706485815 1;
	setAttr ".radi" 0.54240691251507955;
createNode joint -n "joint5" -p "joint4";
	rename -uid "F4F2043E-974C-58BA-040A-608EE409303D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.8198669752915377 0 3.5181995580127681e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 135.85191906490519 ;
	setAttr ".bps" -type "matrix" -2.4651903288156619e-32 0.73189397443134974 0.68141852791884261 0
		 -2.7755575615628904e-16 0.68141852791884283 -0.73189397443134985 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 1.9472935832616951 -0.66334922769628268 4.0938123766398888 1;
	setAttr ".radi" 0.63183389733727324;
createNode joint -n "joint6" -p "joint1";
	rename -uid "6AD70536-7342-75C6-E901-9CA666EDDCC4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.8852648845850393 1.8195536506899013 -5.0502758938417187e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 1.0514816269055328e-14 138.60901233375347 ;
	setAttr ".bps" -type "matrix" -1.8351816413728138e-16 -0.098528145012853452 -0.99513426462981713 0
		 3.5832737558571648e-16 0.99513426462981691 -0.09852814501285323 0 1 -2.862414323079656e-16 -1.6622310111668916e-16 0
		 0 2.0279533532429181 -0.037905670154095183 1;
	setAttr ".radi" 0.64726855711684406;
createNode joint -n "joint7" -p "joint6";
	rename -uid "0BDF94FB-FF40-E5CA-CCAD-0689214845EB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.8471921042589834 -1.1102230246251561e-15 7.0602963205705364e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622637 -1.0120645697074225e-14 -126.85602625536021 ;
	setAttr ".bps" -type "matrix" -1.7663859176333339e-16 -0.73715414020074088 0.6757246285173476 0
		 1.490116123399133e-08 0.67572462851734727 0.73715414020074133 0 -1 1.0069081681101636e-08 1.0984452596979665e-08 0
		 1.9721522630525295e-31 1.648896651702183 -3.8663783557154976 1;
	setAttr ".radi" 0.55673300346622845;
createNode joint -n "joint8" -p "joint7";
	rename -uid "5649E464-FD4D-DEB1-A01C-598ADA62F33E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.2341192080261789 3.8664943706258587e-08 -2.5947604617246331 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999959588558 0 -58.219084907016828 ;
	setAttr ".bps" -type "matrix" -1.2667002982303314e-08 -0.96265094015389829 -0.27074557691828721 0
		 -1.490116134245518e-08 0.27074557691828716 -0.96265094015389885 0 1 -8.1594787170068955e-09 -1.7774152024872004e-08 0
		 2.5947604617246336 0.73916056800442553 -3.0324536123258845 1;
	setAttr ".radi" 0.51345049281864552;
createNode joint -n "joint9" -p "joint8";
	rename -uid "F4E66DC2-D246-91DD-3CF8-0BA4D992AE56";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.2600428611604797 -5.5666393638541146e-16 1.5960966680149787e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999964072231 1.1848489498583662e-23 -152.7540463179032 ;
	setAttr ".bps" -type "matrix" 1.8083509867108254e-08 0.73189397443135074 0.68141852791884272 0
		 -1.1781958722156197e-09 0.68141852791884228 -0.73189397443135107 0 -1 1.2432367323037056e-08 1.3184753151728487e-08 0
		 2.5947604617246336 -0.47382087692591868 -3.3736046437125475 1;
	setAttr ".radi" 0.51345049281864552;
createNode joint -n "joint10" -p "joint7";
	rename -uid "FA8F5C56-1044-11EC-48E5-72895C7CCA92";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -1.0478370634184562 -1.8162509099253177 -2.7064247465092179e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999874786471 7.5514066780918022e-07 -117.81312779848899 ;
	setAttr ".bps" -type "matrix" -1.3179690968978959e-08 -0.25371268836493988 -0.96727962439133242 0
		 -1.4901161075933584e-08 0.96727962439133164 -0.25371268836493982 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 1.9852334898487891e-23 1.1940286098533048 -5.913284544035454 1;
	setAttr ".radi" 0.57192048538224072;
createNode joint -n "joint11" -p "joint10";
	rename -uid "A1C9F979-794F-598E-BF4F-209BC1D912A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.3904627173899864 -5.7749653967967588e-16 3.1505559888065698e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.3501232555873446e-08 -7.8408664687995319e-07 1.9729635940893735 ;
	setAttr ".bps" -type "matrix" -1.3684893608978004e-08 -0.2202608714346467 -0.97544100206770701 0
		 -1.4438578266562697e-08 0.97544100206770623 -0.22026087143464662 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 2.6469779798912112e-23 0.58753788738813162 -8.2255304234339235 1;
	setAttr ".radi" 0.57289596994859338;
createNode joint -n "joint12" -p "joint11";
	rename -uid "252C1DBB-C044-5BD4-C153-D5B94269111F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.4093220856728039 4.1658769933464879e-15 3.2971316412193403e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.0279326945572301e-08 -8.2383986214588853e-07 2.8201724724486033 ;
	setAttr ".bps" -type "matrix" -1.4378718103622074e-08 -0.17200102348021096 -0.98509677084120129 0
		 -1.3747775134372635e-08 0.98509677084120051 -0.17200102348021085 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 6.617444920145744e-23 0.056858505231103695 -10.575681972986462 1;
	setAttr ".radi" 0.57366476260696087;
createNode joint -n "joint13" -p "joint12";
	rename -uid "E1BFAED5-CE4E-CBBA-1205-EEA27F2EB403";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.4241854104012437 1.4704150857099295e-15 3.4856678647072955e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1140315602209299e-08 -8.0163285006245611e-07 -1.5923798046118023 ;
	setAttr ".bps" -type "matrix" -1.3991132625735986e-08 -0.19930915164897561 -0.9799366622741329 0
		 -1.4142031795246741e-08 0.97993666227413212 -0.19930915164897553 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 1.3896634310612388e-22 -0.36010386646370363 -12.963739192693081 1;
	setAttr ".radi" 0.56632190833606322;
createNode joint -n "joint14" -p "joint13";
	rename -uid "BBA7E926-4845-CC22-3029-7AB3D8D66344";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.2822235611638879 3.9358798525501725e-16 3.1930892525823371e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.3098791439736445e-09 -8.042679277596546e-07 0.18663054356281902 ;
	setAttr ".bps" -type "matrix" -1.4037123407791925e-08 -0.19611613513823073 -0.98058067569091201 0
		 -1.4096383290870172e-08 0.98058067569091123 -0.19611613513823065 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 7.2791894101881662e-23 -0.81497190831258148 -15.200173731783408 1;
	setAttr ".radi" 0.5582465139502969;
createNode joint -n "joint15" -p "joint14";
	rename -uid "7A5660CC-6548-D7DA-8326-F9BEBECC2A62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 2.1260992697057395 9.6333803752258878e-14 2.9844317826077151e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999941576706 0 -121.20051460397788 ;
	setAttr ".bps" -type "matrix" 1.9329193776936785e-08 -0.7371541402007421 0.67572462851734649 0
		 1.4901161218796575e-08 0.67572462851734616 0.73715414020074266 0 -1.0000000000000002 -4.1795136787870844e-09 2.4045664989598262e-08 0
		 1.1911400840485121e-22 -1.2319342800073911 -17.284985590257435 1;
	setAttr ".radi" 0.5582465139502969;
createNode joint -n "joint20" -p "joint7";
	rename -uid "C7062AEA-5348-39FE-308D-A2818A192BC4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.23412133051642 2.9160860934851485e-06 2.5947600000000435 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999653936052 -1.4515316199312134e-06 121.78091509298322 ;
	setAttr ".bps" -type "matrix" -1.2667002982303321e-08 0.96265094015389852 0.2707455769182866 0
		 -5.2551518788533886e-08 -0.27074557691828671 0.96265094015389763 0 0.99999999999999878 -2.0341888540631559e-09 5.4018303979663585e-08 0
		 -2.5947600000000004 0.73916099999999962 -3.0324499999999999 1;
	setAttr ".radi" 0.51345049281864552;
createNode joint -n "joint21" -p "joint20";
	rename -uid "AEE75C8B-E941-E0C0-45BC-CFBB29E67F35";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.2600431162554286 1.1431479958190494e-06 -1.5960909482970465e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999383362024 9.875931819002332e-07 -152.7540463179032 ;
	setAttr ".bps" -type "matrix" 3.5320262561514551e-08 -0.73189397443135062 -0.68141852791884183 0
		 6.6701824446060832e-08 -0.6814185279188385 0.7318939744313514 0 -0.99999999999999745 -7.1302546456065588e-08 2.4750782094178785e-08 0
		 -2.59476 -0.47382100000000038 -3.3735999999999997 1;
	setAttr ".radi" 0.51345049281864552;
createNode joint -n "joint18" -p "joint1";
	rename -uid "42DD9E12-724C-A3C6-4328-CA9B7EDA280E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.73375261500431499 -1.7707687708858559 1.9472900000000004 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377365523532335e-07 2.2153046264805949e-14 44.148080935094796 ;
	setAttr ".bps" -type "matrix" -1.9332179800939362e-16 0.99978305672811218 -0.020828813681835534 0
		 -1.9915792776062068e-16 -0.020828813681835479 -0.99978305672811207 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 -1.94729 1.1561199999999998 4.0559100000000008 1;
	setAttr ".radi" 0.54240691251507955;
createNode joint -n "joint19" -p "joint18";
	rename -uid "D1FC3529-F747-93BF-ED08-309FB0BE8FFF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.8198636904805827 5.6029508801458405e-06 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.9659423521986429e-30 -2.8249000307521015e-30 135.85191906490522 ;
	setAttr ".bps" -type "matrix" 1.2325951644078309e-31 -0.73189397443135007 -0.6814185279188425 0
		 2.7755575615628904e-16 -0.68141852791884261 0.73189397443135007 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 -1.9472899999999997 -0.66334899999999997 4.0938100000000004 1;
	setAttr ".radi" 0.63183389733727324;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C6548CA5-014C-C11C-6C67-1FA3879A962C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "74EC0F43-9F43-ABFB-151A-56A93FE2FCE3";
createNode displayLayer -n "defaultLayer";
	rename -uid "AA004BB4-A142-746E-3D42-458944071040";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0BCD0549-0044-3865-6B52-89944CD02DB4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9035C161-EB41-6CBA-D5F2-7A80DA33A941";
	setAttr ".g" yes;
createNode polySphere -n "polySphere1";
	rename -uid "3188AFFD-684F-78A1-0B79-A5B908E20EBC";
	setAttr ".sa" 10;
	setAttr ".sh" 8;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "C8D50867-6A4C-874C-B186-2C915A28CDEB";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[11]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.6165966e-07 3.4083142 3.6222975 ;
	setAttr ".rs" 67277411;
	setAttr ".lt" -type "double3" 1.3234889800848443e-23 4.4408920985006262e-16 1.2086562024879115 ;
	setAttr ".off" -0.20000000298023224;
	setAttr ".d" 2;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.69965066083961669 2.8057845143039994 2.7685592849089393 ;
	setAttr ".cbx" -type "double3" 0.69965013752027438 4.0108440011467215 4.4760358714874728 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "64519AF4-2545-0EAE-D7C3-54BDAFC78513";
	setAttr ".uopa" yes;
	setAttr -s 82 ".tk[0:81]" -type "float3"  0.20889845 0.081506453 -0.36077234
		 0.079792023 0.081506453 -0.58374202 -0.079792157 0.081506453 -0.58374214 -0.20889854
		 0.081506453 -0.36077231 -0.25821286 0.081506453 3.6584318e-08 -0.20889845 0.081506453
		 0.36077231 -0.079792023 0.081506453 0.58374214 0.079792053 0.081506453 0.58374214
		 0.20889863 0.081506453 0.36077231 0.25821286 0.081506453 1.7644654e-20 0.38599387
		 0.062383022 -0.66662079 0.14743662 0.062383022 -1.078614831 -0.14743644 0.062383022
		 -1.078614831 -0.38599381 0.062383022 -0.66662049 -0.47711477 0.062383022 6.7598961e-08
		 -0.38599387 0.062383022 0.66662073 -0.14743671 0.062383022 1.078614831 0.14743665
		 0.062383022 1.078614831 0.38599387 0.062383022 0.66662049 0.47711474 0.062383022
		 1.1027914e-20 0.50432503 0.033761602 -0.87098318 0.19263504 0.033761602 -1.40927768
		 -0.19263518 0.033761602 -1.40927768 -0.50432521 0.033761602 -0.87098175 -0.62338161
		 0.033761602 8.8322295e-08 -0.50432503 0.033761602 0.87098193 -0.19263501 0.033761602
		 1.40927768 0.19263512 0.033761602 1.40927792 0.50432462 0.033761602 0.87098175 0.62338173
		 0.033761602 4.8522819e-20 0.54587644 1.3586549e-08 -0.94274366 0.20850678 1.3586549e-08
		 -1.52539074 -0.208507 1.3586549e-08 -1.52539063 -0.54587644 1.3586549e-08 -0.94274324
		 -0.67474145 1.3586549e-08 9.5599425e-08 -0.54587644 1.3586549e-08 0.94274366 -0.20850679
		 1.3586549e-08 1.52539063 0.2085069 1.3586549e-08 1.52539039 0.54587638 1.3586549e-08
		 0.94274324 0.67474121 1.3586549e-08 1.3233495e-20 0.50432366 -0.033761263 -0.87098253
		 0.19263521 -0.033761263 -1.40927768 -0.19263536 -0.033761263 -1.40927756 -0.50432378
		 -0.033761263 -0.87098128 -0.62337935 -0.033761263 8.8322402e-08 -0.50432366 -0.033761263
		 0.87098163 -0.19263518 -0.033761263 1.40927756 0.1926353 -0.033761263 1.4092772 0.5043236
		 -0.033761263 0.87098128 0.62337929 -0.033761263 -1.7644654e-20 0.38599381 -0.062383022
		 -0.66662145 0.14743641 -0.062383022 -1.078614354 -0.14743654 -0.062383022 -1.078614473
		 -0.38599399 -0.062383022 -0.66662091 -0.4771159 -0.062383022 6.7599004e-08 -0.38599381
		 -0.062383022 0.66662109 -0.14743638 -0.062383022 1.078614473 0.14743647 -0.062383022
		 1.078614473 0.38599339 -0.062383022 0.66662091 0.47711602 -0.062383022 1.1469025e-19
		 0.20889841 -0.081507139 -0.3607724 0.079792187 -0.081507139 -0.58374244 -0.079791948
		 -0.081507139 -0.58374256 -0.20889831 -0.081507139 -0.36077219 -0.25821272 -0.081507139
		 3.6584435e-08 -0.20889841 -0.081507139 0.36077225 -0.079792276 -0.081507139 0.58374256
		 0.079792202 -0.081507139 0.58374256 0.20889841 -0.081507139 0.36077219 0.25821272
		 -0.081507139 -9.7045637e-20 2.4955586e-08 0.088222742 1.5520402e-07 -2.4955586e-08
		 -0.088222265 1.5520402e-07 -2.9802322e-08 3.5762787e-07 0 -2.9802322e-08 3.5762787e-07
		 2.9802322e-08 -2.0861626e-07 3.5762787e-07 6.750156e-14 -1.4901161e-08 3.5762787e-07
		 -2.9802322e-08 2.2351742e-08 3.5762787e-07 0 -7.4505806e-09 3.5762787e-07 0 1.1920929e-07
		 3.5762787e-07 -2.9802322e-08 2.3841858e-07 3.5762787e-07 6.7762636e-21 0 5.9604645e-07
		 1.6940659e-21 0 -5.9604645e-07 1.0164395e-20;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6DC251F5-C742-2185-C8C6-4C99B215090E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 892\n                -height 515\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 892\n            -height 515\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 892\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 892\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7E2483F3-A44E-297F-273E-1284FEEE4238";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "873B33B6-C247-678D-29C9-6D9C6815F85B";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[11]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.4641478 3.296073 ;
	setAttr ".rs" 916917700;
	setAttr ".lt" -type "double3" 6.6174449004242214e-24 5.5511151231257827e-16 1.7725044670094756 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1132503752490504 1.65042911182755 1.9116058426708538 ;
	setAttr ".cbx" -type "double3" 2.1132503752490504 3.2778663936217045 4.6805398759504957 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "09E32EBF-4F44-FE2C-56A1-16A3AA7B03E7";
	setAttr ".uopa" yes;
	setAttr -s 84 ".tk[0:83]" -type "float3"  0.011607579 0.064831868 0.24195585
		 0.019171454 0.098753594 0.36855361 -0.019171458 0.098753594 0.36855361 -0.011607574
		 0.064831816 0.24195564 7.4505806e-09 -0.0022218926 -0.0082922149 3.7252903e-09 -0.069083825
		 -0.25782433 2.7939677e-09 -0.10270702 -0.3833077 -8.3819032e-09 -0.10270702 -0.3833077
		 1.8626451e-08 -0.069083825 -0.25782433 -1.4901161e-08 -0.0022218926 -0.0082922149
		 0.097626157 0.080371208 0.29994944 0.15632802 0.099586964 0.37166366 -0.15632793
		 0.099586964 0.37166366 -0.09762615 0.080371171 0.29994926 -2.9802322e-08 -0.0067254845
		 -0.025099857 1.3038516e-08 -0.091751732 -0.34242222 3.4924597e-09 -0.1080727 -0.40333268
		 -1.071021e-08 -0.1080727 -0.40333268 -5.5879354e-09 -0.09175168 -0.34242204 2.2351742e-08
		 -0.0067254845 -0.025099857 0.063352913 0.062807828 0.2344019 0.081174806 0.056257829
		 0.20995709 -0.081174858 0.056257829 0.20995709 -0.06335295 0.062807739 0.23440167
		 2.2351742e-08 -0.010410725 -0.038853358 6.519258e-09 -0.077805184 -0.29037288 5.5511151e-17
		 -0.064198062 -0.23959044 0 -0.064198062 -0.23959044 -6.519258e-09 -0.077805184 -0.29037288
		 7.4505806e-09 -0.01041071 -0.038853299 2.9802322e-08 0.044685211 0.16676743 0.0027326785
		 0.031427994 0.11729088 -0.0027326816 0.031427994 0.11729086 -2.9802322e-08 0.044685196
		 0.16676736 1.4901161e-08 -0.013061082 -0.048744634 -3.0267984e-08 -0.061660577 -0.23012036
		 0 -0.038307652 -0.14296618 9.3132257e-10 -0.038307637 -0.14296609 3.7718564e-08 -0.061660554
		 -0.23012029 -7.4505806e-09 -0.013061082 -0.048744634 0 0.035553582 0.13268772 0 0.029941317
		 0.11174254 -3.7252903e-09 0.029941319 0.11174254 7.4505806e-09 0.03555353 0.13268764
		 7.4505806e-09 -0.016299762 -0.060831524 -7.21775e-09 -0.057872597 -0.21598344 9.3132257e-10
		 -0.04031419 -0.15045464 -5.5511151e-17 -0.040314194 -0.15045464 -6.9849193e-10 -0.057872567
		 -0.21598329 -7.4505806e-09 -0.016299732 -0.060831435 2.2351742e-08 0.027241535 0.10166679
		 1.8626451e-09 0.037254963 0.13903743 0 0.037254978 0.13903743 -7.4505806e-09 0.027241491
		 0.10166665 1.1175871e-08 -0.021097152 -0.078735664 -8.3819032e-09 -0.061401717 -0.22915433
		 0 -0.060548946 -0.22597179 1.8626451e-09 -0.060548957 -0.22597186 -5.5879354e-09
		 -0.061401717 -0.22915433 -1.1175871e-08 -0.021097152 -0.078735664 3.7252903e-09 0.0060904655
		 0.022729928 -9.3132257e-10 0.022834243 0.085218564 9.3132257e-10 0.022834264 0.085218623
		 -3.7252903e-09 0.0060904655 0.022729928 2.9802322e-08 -0.026221914 -0.097861543 -7.4505806e-09
		 -0.055581067 -0.20743136 2.7939677e-09 -0.067771353 -0.25292617 0 -0.06777133 -0.25292605
		 7.4505806e-09 -0.055581067 -0.20743136 0 -0.026221914 -0.097861543 2.220446e-16 -5.5511151e-16
		 -8.4654506e-16 3.8857806e-16 -0.028540244 -0.10651368 0.024593564 0.10888596 0.40636808
		 0.013320431 0.10823514 0.40393919 -0.024593588 0.10888596 0.40636808 -0.013320435
		 0.10823514 0.40393919 -0.23489213 0.098808803 0.36875966 -0.94392657 0.047684003
		 0.17795908 0.23489213 0.098808803 0.36875966 0.94392657 0.047684003 0.17795908 -0.070506357
		 0.041793287 0.1559747 -0.0093242778 0.022051536 0.082297422 0.070506305 0.041793302
		 0.15597473 0.0093242619 0.022051536 0.082297422;
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "9CF55714-B74B-8257-67A3-D5AD42F69E1F";
	setAttr ".ics" -type "componentList" 2 "f[95]" "f[97]";
createNode polyTweak -n "polyTweak3";
	rename -uid "8C4254EF-B74E-329C-163F-819047E6933C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[73]" -type "float3" 0.18609191 -0.055456083 0.098251335 ;
	setAttr ".tk[75]" -type "float3" -0.18609184 -0.055456143 0.098251306 ;
	setAttr ".tk[84]" -type "float3" 0.48022252 0.055456072 -0.098251291 ;
	setAttr ".tk[85]" -type "float3" -0.48022449 0.055456009 -0.098251306 ;
	setAttr ".tk[86]" -type "float3" 1.0531822 -1.5260839 -4.3831334 ;
	setAttr ".tk[87]" -type "float3" -1.0531822 -1.5260839 -4.3831334 ;
	setAttr ".tk[88]" -type "float3" -5.9604645e-07 -0.83595759 -3.801234 ;
	setAttr ".tk[89]" -type "float3" 5.9604645e-07 -0.83595759 -3.801234 ;
createNode polyTriangulate -n "polyTriangulate2";
	rename -uid "ED50BF5B-C54E-8EA8-CB25-F2BBB43BDC42";
	setAttr ".ics" -type "componentList" 1 "f[93:94]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "A60EB376-F24E-1C86-4B24-E6B1F95B3E60";
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.2017326 3.6964035 ;
	setAttr ".rs" 488960253;
	setAttr ".d" 30;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2600137148411994 0.14885217425190689 3.0052916198764188 ;
	setAttr ".cbx" -type "double3" 2.2600137148411994 2.4021103154591432 4.7984100079539189 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "7C8B83A2-9240-277A-9A93-6B93AF4D18DD";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[73]" -type "float3" 0.10029564 0 0 ;
	setAttr ".tk[75]" -type "float3" -0.10029564 0 0 ;
	setAttr ".tk[77]" -type "float3" -0.10029564 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.10029564 0 0 ;
	setAttr ".tk[84]" -type "float3" 0.10029564 0 0 ;
	setAttr ".tk[85]" -type "float3" -0.10029564 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "09BAA152-1A49-0523-B1E5-67B8B1E074B0";
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.3609944e-07 1.2017328 3.6964035 ;
	setAttr ".rs" 2015286222;
	setAttr ".d" 30;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2600144126003228 0.14885219682607564 3.0052917101730938 ;
	setAttr ".cbx" -type "double3" 2.260013540401419 2.4021106524509221 4.7984099237059743 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "D8F519CD-8C48-F048-5BCD-C3AD74220768";
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.2017328 3.6964035 ;
	setAttr ".rs" 1592159859;
	setAttr ".lt" -type "double3" 5.5511151231257827e-16 3.8857805861880479e-16 1.3534631190577673 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2600137148411994 0.14885219682607564 3.0052913731813149 ;
	setAttr ".cbx" -type "double3" 2.2600137148411994 2.4021107427475972 4.7984100079539189 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "81CF2207-794B-A67F-A32D-5193BACFE4FD";
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.43642256 4.7618585 ;
	setAttr ".rs" 1313151745;
	setAttr ".lt" -type "double3" -1.0685896612017132e-15 1.609823385706477e-15 1.012336440548796 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0680482596871368 0.021039127313052575 4.1657349796928429 ;
	setAttr ".cbx" -type "double3" 3.0680482596871368 1.1551497875756565 5.627234722186147 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "8D655D46-A444-B842-7945-668F6A22E145";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[119]" -type "float3" -1.4901161e-07 -1.4901161e-08 -1.7881393e-07 ;
	setAttr ".tk[149]" -type "float3" -4.7683716e-07 1.4901161e-08 1.1920929e-07 ;
	setAttr ".tk[179]" -type "float3" 1.3969845e-09 -1.3038516e-08 -1.8626451e-08 ;
	setAttr ".tk[209]" -type "float3" -1.4901161e-08 3.7252903e-09 -6.7055225e-08 ;
	setAttr ".tk[239]" -type "float3" -1.4435501e-08 1.3038516e-08 5.2154064e-08 ;
	setAttr ".tk[269]" -type "float3" -1.4901161e-07 1.1175871e-08 1.2665987e-07 ;
	setAttr ".tk[450]" -type "float3" 0.13201661 -0.40380612 0.15896058 ;
	setAttr ".tk[451]" -type "float3" 0.20442295 -0.63208872 0.45474672 ;
	setAttr ".tk[452]" -type "float3" 0.51096499 -0.029818272 -0.25253654 ;
	setAttr ".tk[453]" -type "float3" -0.13201709 -0.40380573 0.15895993 ;
	setAttr ".tk[454]" -type "float3" -0.51096481 -0.02981675 -0.25253719 ;
	setAttr ".tk[455]" -type "float3" -0.20442343 -0.63208824 0.45474601 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "922CD120-6843-E70F-71B8-C8A58081004F";
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7443978e-07 -0.0093873236 5.213192 ;
	setAttr ".rs" 38045478;
	setAttr ".lt" -type "double3" -1.0570971181733668e-15 -4.8572257327350599e-16 0.7719234735118401 ;
	setAttr ".off" -0.20000000298023224;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.9440639059364244 -0.092540848823458699 4.4490009806024968 ;
	setAttr ".cbx" -type "double3" 3.9440635570568632 0.13816383189952974 5.9773835056318116 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "F7712858-2D4B-1EA4-261B-C0914CD1E0B5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[456:461]" -type "float3"  -0.054859582 0.065124996 0.0075912164
		 -0.17675091 -0.1591358 0.14280365 0.084607534 0.39595178 -0.17092748 0.054859202
		 0.065125801 0.0075907502 -0.084607385 0.39595306 -0.17092763 0.17675079 -0.15913497
		 0.14280342;
createNode polyQuad -n "polyQuad1";
	rename -uid "CA82438C-B04B-F5DC-C24E-CBA39248F3B9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "FEED923C-1747-26FD-5166-558B941F9D92";
	setAttr ".uopa" yes;
	setAttr -s 464 ".tk";
	setAttr ".tk[0]" -type "float3" -0.1448561 0.084116288 0.086811781 ;
	setAttr ".tk[1]" -type "float3" -0.059972446 0.07074704 0.15670538 ;
	setAttr ".tk[2]" -type "float3" 0.059972506 0.07074704 0.15670538 ;
	setAttr ".tk[3]" -type "float3" 0.14485601 0.084116168 0.086811543 ;
	setAttr ".tk[4]" -type "float3" 0.1756648 0.1096218 -0.010513902 ;
	setAttr ".tk[5]" -type "float3" 0.21268961 0.16759038 -0.097023726 ;
	setAttr ".tk[6]" -type "float3" 0.1090868 0.20938861 -0.20452619 ;
	setAttr ".tk[7]" -type "float3" -0.10908678 0.20938861 -0.20452619 ;
	setAttr ".tk[8]" -type "float3" -0.21268962 0.16759038 -0.097023726 ;
	setAttr ".tk[9]" -type "float3" -0.17566484 0.1096218 -0.010513902 ;
	setAttr ".tk[10]" -type "float3" 0.008459989 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[11]" -type "float3" 0 0.0066929981 0.024978518 ;
	setAttr ".tk[12]" -type "float3" 0 0.0066929981 0.024978518 ;
	setAttr ".tk[13]" -type "float3" -0.0084599713 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[14]" -type "float3" -0.015774202 0.0016878769 0.00092685223 ;
	setAttr ".tk[15]" -type "float3" 0.27830273 0.06843736 -0.1008842 ;
	setAttr ".tk[16]" -type "float3" 0.14545508 0.11718122 -0.12769771 ;
	setAttr ".tk[17]" -type "float3" -0.14545508 0.11718122 -0.12769771 ;
	setAttr ".tk[18]" -type "float3" -0.27830267 0.06843736 -0.1008842 ;
	setAttr ".tk[19]" -type "float3" 0.015774202 0.0016878769 0.00092685223 ;
	setAttr ".tk[20]" -type "float3" 0.0028405837 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[21]" -type "float3" 0 0.067884371 0.25334793 ;
	setAttr ".tk[22]" -type "float3" 0 0.067884475 0.25334865 ;
	setAttr ".tk[23]" -type "float3" -0.0028406305 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[24]" -type "float3" -0.081168845 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[25]" -type "float3" 0.086895883 -0.0011320189 0.02807653 ;
	setAttr ".tk[26]" -type "float3" 0.045456894 -0.033881649 0.090934515 ;
	setAttr ".tk[27]" -type "float3" -0.045456819 -0.033881649 0.090934515 ;
	setAttr ".tk[28]" -type "float3" -0.086896032 -0.0011318997 0.02807653 ;
	setAttr ".tk[29]" -type "float3" 0.081168905 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[30]" -type "float3" 0 0.00059198588 0.0022097826 ;
	setAttr ".tk[31]" -type "float3" 0 0.097367771 0.36338204 ;
	setAttr ".tk[32]" -type "float3" 0 0.097367734 0.36338213 ;
	setAttr ".tk[33]" -type "float3" 0 0.00059198588 0.0022097826 ;
	setAttr ".tk[34]" -type "float3" -0.097726457 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[35]" -type "float3" -0.015259137 -0.013482437 -0.0061405897 ;
	setAttr ".tk[36]" -type "float3" -0.066434637 -0.10410888 0.18837202 ;
	setAttr ".tk[37]" -type "float3" 0.06643457 -0.10410912 0.18837178 ;
	setAttr ".tk[38]" -type "float3" 0.015259228 -0.013482317 -0.0061405897 ;
	setAttr ".tk[39]" -type "float3" 0.097726457 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[40]" -type "float3" 0.0015515689 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[41]" -type "float3" 0 0.079210117 0.29561609 ;
	setAttr ".tk[42]" -type "float3" 0 0.079210043 0.29561567 ;
	setAttr ".tk[43]" -type "float3" -0.0015515978 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[44]" -type "float3" -0.097726457 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[45]" -type "float3" -0.11422385 -0.0077835247 -0.054073453 ;
	setAttr ".tk[46]" -type "float3" -0.15073253 -0.04267998 0.19118726 ;
	setAttr ".tk[47]" -type "float3" 0.15073256 -0.042679861 0.1911875 ;
	setAttr ".tk[48]" -type "float3" 0.11422376 -0.0077834055 -0.054073453 ;
	setAttr ".tk[49]" -type "float3" 0.097726457 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[50]" -type "float3" 0.0062785163 2.6077032e-07 4.7683716e-07 ;
	setAttr ".tk[51]" -type "float3" 0 0.016199436 0.060456678 ;
	setAttr ".tk[52]" -type "float3" 0 0.016199281 0.060456753 ;
	setAttr ".tk[53]" -type "float3" -0.0062785628 1.2665987e-07 -3.5762787e-07 ;
	setAttr ".tk[54]" -type "float3" -0.072313018 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[55]" -type "float3" -0.14487453 0.026683442 -0.12402964 ;
	setAttr ".tk[56]" -type "float3" -0.17389449 0.06883993 -0.13635874 ;
	setAttr ".tk[57]" -type "float3" 0.17389457 0.068840288 -0.13635874 ;
	setAttr ".tk[58]" -type "float3" 0.14487477 0.026683562 -0.12402987 ;
	setAttr ".tk[59]" -type "float3" 0.072313033 -2.4586916e-07 -5.9604645e-07 ;
	setAttr ".tk[60]" -type "float3" 0.0015515689 -1.4901161e-08 -1.1920929e-07 ;
	setAttr ".tk[61]" -type "float3" 0 4.6566129e-09 -1.1175871e-08 ;
	setAttr ".tk[62]" -type "float3" 0 9.3132257e-10 3.7252903e-09 ;
	setAttr ".tk[63]" -type "float3" -0.0015515978 -1.4901161e-08 -1.1920929e-07 ;
	setAttr ".tk[64]" -type "float3" -0.014084835 -1.4901161e-08 -3.5762787e-07 ;
	setAttr ".tk[65]" -type "float3" -0.015485231 0.0090520829 -0.031636477 ;
	setAttr ".tk[66]" -type "float3" -0.028636146 0.057278804 -0.16057381 ;
	setAttr ".tk[67]" -type "float3" 0.028636156 0.05727914 -0.1605747 ;
	setAttr ".tk[68]" -type "float3" 0.015485264 0.009052407 -0.031637013 ;
	setAttr ".tk[69]" -type "float3" 0.014084835 -1.4901161e-08 -3.5762787e-07 ;
	setAttr ".tk[70]" -type "float3" 0 0.1753976 0.025539756 ;
	setAttr ".tk[71]" -type "float3" 0 -3.4924597e-09 -6.519258e-09 ;
	setAttr ".tk[72]" -type "float3" -0.07045877 0.16849741 0.14166582 ;
	setAttr ".tk[73]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[74]" -type "float3" 0.070458792 0.16849729 0.14166582 ;
	setAttr ".tk[75]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[76]" -type "float3" 0 -0.0074139386 -0.027669668 ;
	setAttr ".tk[77]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[78]" -type "float3" 0 -0.0074139088 -0.027669549 ;
	setAttr ".tk[79]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[80]" -type "float3" 0 -0.046366982 -0.17304362 ;
	setAttr ".tk[81]" -type "float3" 0 -0.15785292 -0.58911514 ;
	setAttr ".tk[82]" -type "float3" 0 -0.046367001 -0.17304403 ;
	setAttr ".tk[83]" -type "float3" 0 -0.15785292 -0.58911514 ;
	setAttr ".tk[84]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[85]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[90]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[91]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[92]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[93]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[94]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[95]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[96]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[97]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[98]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[99]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[100]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[101]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[102]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[103]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[104]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[105]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[106]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[107]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[108]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[109]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[110]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[111]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[112]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[113]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[114]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[115]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[116]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[117]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[118]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[119]" -type "float3" 0.034893259 0.063043937 0.032789558 ;
	setAttr ".tk[120]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[121]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[122]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[123]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[124]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[125]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[126]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[127]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[128]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[129]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[130]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[131]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[132]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[133]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[134]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[135]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[136]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[137]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[138]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[139]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[140]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[141]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[142]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[143]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[144]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[145]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[146]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[147]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[148]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[149]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[150]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[151]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[152]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[153]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[154]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[155]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[156]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[157]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[158]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[159]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[160]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[161]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[162]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[163]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[164]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[165]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[166]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[167]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[168]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[169]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[170]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[171]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[172]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[173]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[174]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[175]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[176]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[177]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[178]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[179]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[180]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[181]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[182]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[183]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[184]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[185]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[186]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[187]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[188]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[189]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[190]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[191]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[192]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[193]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[194]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[195]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[196]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[197]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[198]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[199]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[200]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[201]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[202]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[203]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[204]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[205]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[206]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[207]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[208]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[209]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[210]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[211]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[212]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[213]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[214]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[215]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[216]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[217]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[218]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[219]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[220]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[221]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[222]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[223]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[224]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[225]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[226]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[227]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[228]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[229]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[230]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[231]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[232]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[233]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[234]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[235]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[236]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[237]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[238]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[239]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[240]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[241]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[242]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[243]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[244]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[245]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[246]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[247]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[248]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[249]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[250]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[251]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[252]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[253]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[254]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[255]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[256]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[257]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[258]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[259]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[260]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[261]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[262]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[263]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[264]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[265]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[266]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[267]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[268]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[269]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[270]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[271]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[272]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[273]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[274]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[275]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[276]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[277]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[278]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[279]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[280]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[281]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[282]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[283]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[284]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[285]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[286]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[287]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[288]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[289]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[290]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[291]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[292]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[293]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[294]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[295]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[296]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[297]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[298]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[299]" -type "float3" 0.034893252 0.063043937 0.032789558 ;
	setAttr ".tk[300]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[301]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[302]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[303]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[304]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[305]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[306]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[307]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[308]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[309]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[310]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[311]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[312]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[313]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[314]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[315]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[316]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[317]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[318]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[319]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[320]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[321]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[322]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[323]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[324]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[325]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[326]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[327]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[328]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[329]" -type "float3" 0 -0.0013656468 -0.0050966758 ;
	setAttr ".tk[330]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[331]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[332]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[333]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[334]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[335]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[336]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[337]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[338]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[339]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[340]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[341]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[342]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[343]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[344]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[345]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[346]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[347]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[348]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[349]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[350]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[351]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[352]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[353]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[354]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[355]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[356]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[357]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[358]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[359]" -type "float3" 0.20138849 0.25304392 -0.36243686 ;
	setAttr ".tk[360]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[361]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[362]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[363]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[364]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[365]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[366]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[367]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[368]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[369]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[370]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[371]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[372]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[373]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[374]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[375]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[376]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[377]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[378]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[379]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[380]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[381]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[382]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[383]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[384]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[385]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[386]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[387]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[388]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[389]" -type "float3" -0.034893434 0.063043989 0.032789946 ;
	setAttr ".tk[390]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[391]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[392]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[393]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[394]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[395]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[396]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[397]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[398]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[399]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[400]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[401]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[402]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[403]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[404]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[405]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[406]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[407]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[408]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[409]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[410]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[411]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[412]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[413]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[414]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[415]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[416]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[417]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[418]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[419]" -type "float3" -0.20138887 0.25304368 -0.36243734 ;
	setAttr ".tk[420]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[421]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[422]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[423]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[424]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[425]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[426]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[427]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[428]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[429]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[430]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[431]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[432]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[433]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[434]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[435]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[436]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[437]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[438]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[439]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[440]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[441]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[442]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[443]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[444]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[445]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[446]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[447]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[448]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[449]" -type "float3" 0 -0.0013656402 -0.0050966386 ;
	setAttr ".tk[450]" -type "float3" 0.26740441 -0.097104706 -0.36519688 ;
	setAttr ".tk[451]" -type "float3" 0.11570947 -0.042321112 -0.15794453 ;
	setAttr ".tk[452]" -type "float3" 0.42754737 0.11408354 -0.65607589 ;
	setAttr ".tk[453]" -type "float3" -0.26740521 -0.097105004 -0.36519802 ;
	setAttr ".tk[454]" -type "float3" -0.42754757 0.11408366 -0.65607619 ;
	setAttr ".tk[455]" -type "float3" -0.11570937 -0.042321078 -0.15794443 ;
	setAttr ".tk[456]" -type "float3" 0.54832506 -0.20055164 -0.74846888 ;
	setAttr ".tk[457]" -type "float3" 0.54832506 -0.20055164 -0.74846888 ;
	setAttr ".tk[458]" -type "float3" 0.54832506 -0.056969523 -0.78694153 ;
	setAttr ".tk[459]" -type "float3" -0.54832506 -0.20055164 -0.74846888 ;
	setAttr ".tk[460]" -type "float3" -0.54832506 -0.056969315 -0.78694159 ;
	setAttr ".tk[461]" -type "float3" -0.54832506 -0.20055164 -0.74846888 ;
	setAttr ".tk[462]" -type "float3" 0.40173236 -0.19325826 -0.65970713 ;
	setAttr ".tk[463]" -type "float3" 0.65587151 -0.2624498 -0.87512809 ;
	setAttr ".tk[464]" -type "float3" 0.67182511 0.084872842 -0.65523964 ;
	setAttr ".tk[465]" -type "float3" -0.4017328 -0.19325782 -0.65970701 ;
	setAttr ".tk[466]" -type "float3" -0.67182541 0.084873468 -0.65523976 ;
	setAttr ".tk[467]" -type "float3" -0.65587187 -0.26244938 -0.87512809 ;
createNode polySplit -n "polySplit1";
	rename -uid "348DEC5E-DA49-D3A2-774F-74B21C49A707";
	setAttr -s 2 ".e[0:1]"  0.5 1;
	setAttr -s 2 ".d[0:1]"  -2147483461 -2147483465;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "CC623BE4-0048-7B45-2220-29830FE165C9";
	setAttr -s 2 ".e[0:1]"  0.5 1;
	setAttr -s 2 ".d[0:1]"  -2147483462 -2147483467;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "FA983137-8847-5A8C-BE5C-70BF293732EC";
	setAttr ".ics" -type "componentList" 3 "vtx[79]" "vtx[240:269]" "vtx[420:448]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
createNode polyTweak -n "polyTweak8";
	rename -uid "D0633185-6D40-206B-F926-8A9DA9E3B6FA";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[77]" -type "float3" 0 2.9802322e-08 -1.1920929e-07 ;
	setAttr ".tk[86]" -type "float3" -2.2351742e-08 1.4901161e-07 -5.9604645e-08 ;
	setAttr ".tk[87]" -type "float3" 2.2351742e-08 1.4901161e-07 -5.9604645e-08 ;
	setAttr ".tk[88]" -type "float3" -1.4901161e-08 0 -2.2351742e-08 ;
	setAttr ".tk[89]" -type "float3" -1.4901161e-08 -1.4901161e-08 -2.2351742e-08 ;
	setAttr ".tk[120]" -type "float3" 0 -7.4505806e-08 5.9604645e-08 ;
	setAttr ".tk[121]" -type "float3" 0 1.0430813e-07 0 ;
	setAttr ".tk[328]" -type "float3" 0 5.9604645e-08 -2.3841858e-07 ;
	setAttr ".tk[329]" -type "float3" 0 -0.47571915 0.52926451 ;
	setAttr ".tk[445]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[446]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[447]" -type "float3" 0 4.4703484e-08 -5.9604645e-08 ;
	setAttr ".tk[448]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[449]" -type "float3" 0 -0.47571915 0.52926451 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "2236E48D-DD4A-66BD-BA48-07850A85917D";
	setAttr ".ics" -type "componentList" 3 "vtx[77]" "vtx[120:149]" "vtx[270:298]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
createNode polyTriangulate -n "polyTriangulate3";
	rename -uid "1D1A3A7A-AD42-A678-04B3-71A3F413415C";
	setAttr ".ics" -type "componentList" 2 "f[97]" "f[100]";
createNode polyTweak -n "polyTweak9";
	rename -uid "069EF52B-EE4F-99BF-F927-8C859DCCBD65";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[77]" -type "float3" -2.0861626e-07 4.4703484e-08 2.682209e-07 ;
	setAttr ".tk[120]" -type "float3" 0 1.1920929e-07 -1.1920929e-07 ;
	setAttr ".tk[121]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".tk[149]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".tk[298]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".tk[350]" -type "float3" 0.42450631 0 0 ;
	setAttr ".tk[351]" -type "float3" -0.42450631 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "F0C89A26-3F44-5F18-8153-4793EDC43487";
	setAttr ".ics" -type "componentList" 2 "f[99]" "f[482]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7443978e-07 1.2066628 -3.5709946 ;
	setAttr ".rs" 153187302;
	setAttr ".lt" -type "double3" 1.0269562977782698e-15 -1.2490009027033011e-15 1.469044837613066 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.383855638510914 0.40472158698772942 -4.885734191999056 ;
	setAttr ".cbx" -type "double3" 1.3838552896313525 2.1523383445353321 -1.8328132601236033 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "FE68C346-7747-03D6-DC3C-A0A5F1C54D7E";
	setAttr ".ics" -type "componentList" 2 "f[99]" "f[482]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.95402265 -3.9625659 ;
	setAttr ".rs" 937922661;
	setAttr ".lt" -type "double3" 0 -1.1102230246251565e-16 1.4924321763921715 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3031442410254188 0.03745578706757291 -5.2615200950015932 ;
	setAttr ".cbx" -type "double3" 3.3031442410254188 1.6000366888639066 -2.3490728488403985 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "4611E818-8048-1A52-2959-99A398806E94";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[352:357]" -type "float3"  -0.34714633 0.011527122 -0.20337829
		 0.37632039 0.040607512 0.23786327 0.077325381 -0.24693935 -0.034738868 0.34714639
		 0.011526935 -0.20337841 -0.077325389 -0.24693923 -0.034738827 -0.37632039 0.04060746
		 0.23786326;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "CEB4FF90-7B4E-0FFC-1A59-E0A591589B4C";
	setAttr ".ics" -type "componentList" 2 "f[99]" "f[482]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.4887955e-07 0.12114263 -4.2914619 ;
	setAttr ".rs" 977586241;
	setAttr ".lt" -type "double3" -1.0685896612017132e-15 -6.3837823915946501e-16 0.9857087105013671 ;
	setAttr ".off" 0.10000000149011612;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.8241816780702811 -0.081150092962190001 -5.7085318121420716 ;
	setAttr ".cbx" -type "double3" 4.8241823758294036 0.42269280292390121 -2.803316382432584 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "858F8333-9A4A-2CFC-01E7-7A880A1D066E";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[358:363]" -type "float3"  -0.2424601 -0.45291603 0.073640555
		 0.21866541 0.49220142 -0.086649947 -0.26159334 -0.15063612 -0.002239428 0.24246037
		 -0.45291656 0.073640615 0.2615937 -0.15063649 -0.0022394031 -0.218665 0.49220079
		 -0.08664985;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "C86A8C06-7A4B-E2E3-EB61-75AA6557B8DB";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.9248951e-07 1.4819789 -4.7440557 ;
	setAttr ".rs" 2056289478;
	setAttr ".d" 3;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.95322461205532893 0.81161954315133844 -4.885734191999056 ;
	setAttr ".cbx" -type "double3" 0.95322382707631548 2.1523383445353321 -4.6023770068601237 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "59020ED0-554C-D677-4503-2EAC73480C21";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[86]" -type "float3" -5.5511151e-17 0.28316489 -0.017583828 ;
	setAttr ".tk[87]" -type "float3" 5.5511151e-17 0.28316489 -0.017583828 ;
	setAttr ".tk[350]" -type "float3" 0.18769382 -0.21271175 -0.79385126 ;
	setAttr ".tk[351]" -type "float3" -0.18769382 -0.21271175 -0.79385126 ;
	setAttr ".tk[352]" -type "float3" 0.21317807 -0.25794145 -0.2745418 ;
	setAttr ".tk[353]" -type "float3" -0.21317802 0.21692745 0.12147508 ;
	setAttr ".tk[354]" -type "float3" -0.026572041 -0.060097568 0.35976011 ;
	setAttr ".tk[355]" -type "float3" -0.21317807 -0.25794145 -0.27454147 ;
	setAttr ".tk[356]" -type "float3" 0.026572224 -0.060097679 0.35976011 ;
	setAttr ".tk[357]" -type "float3" 0.21317801 0.21692745 0.12147508 ;
	setAttr ".tk[358]" -type "float3" 1.0615258 0.013860685 -0.013630833 ;
	setAttr ".tk[359]" -type "float3" 0.2730251 0.2126831 0.60210633 ;
	setAttr ".tk[360]" -type "float3" 0.74435848 0.18256074 0.87296462 ;
	setAttr ".tk[361]" -type "float3" -1.0615259 0.013860744 -0.013630773 ;
	setAttr ".tk[362]" -type "float3" -0.74435872 0.18256068 0.8729645 ;
	setAttr ".tk[363]" -type "float3" -0.27302578 0.21268316 0.60210681 ;
	setAttr ".tk[364]" -type "float3" 0.67947221 0.4764035 0.76509929 ;
	setAttr ".tk[365]" -type "float3" 0.69192654 0.51566821 0.76797557 ;
	setAttr ".tk[366]" -type "float3" 0.66234285 0.27690214 0.8006742 ;
	setAttr ".tk[367]" -type "float3" -0.67947209 0.47640327 0.76509929 ;
	setAttr ".tk[368]" -type "float3" -0.66234297 0.27690205 0.80067426 ;
	setAttr ".tk[369]" -type "float3" -0.69192648 0.51566792 0.76797557 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "80121578-8048-AA95-46C7-E1BC14861F8E";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.9248951e-07 1.4819791 -4.7440557 ;
	setAttr ".rs" 2001211492;
	setAttr ".lt" -type "double3" 4.2351647362715017e-22 4.8849813083506888e-15 14.293370427946238 ;
	setAttr ".off" 0.60000002384185791;
	setAttr ".d" 6;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.95322461205532893 0.81161988014311781 -4.885734191999056 ;
	setAttr ".cbx" -type "double3" 0.95322382707631548 2.1523383445353321 -4.6023769165634487 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "82BCD767-1142-1E3E-13A6-AFA6926309D8";
	setAttr ".ics" -type "componentList" 4 "vtx[387]" "vtx[393]" "vtx[399]" "vtx[405]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
createNode polyTweak -n "polyTweak13";
	rename -uid "AA5D8597-DC42-9EA6-9305-729F134074A3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[387]" -type "float3" -0.079419926 0.051888466 -0.026363373 ;
	setAttr ".tk[393]" -type "float3" 0.079419941 0.051888466 -0.026363373 ;
	setAttr ".tk[399]" -type "float3" 0.11179289 -0.051888943 0.026363373 ;
	setAttr ".tk[405]" -type "float3" -0.11179292 -0.051888943 0.026363373 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "28CB069A-5346-22FD-61DE-048C12247492";
	setAttr ".ics" -type "componentList" 3 "f[3:9]" "f[12:18]" "f[62:68]";
	setAttr ".ix" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.7358017 6.5167456 ;
	setAttr ".rs" 1467465606;
	setAttr ".lt" -type "double3" 6.9822619908066486e-16 -8.3266726846886741e-16 0.25756708360136293 ;
	setAttr ".off" 0.30000001192092896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3828929340902092 2.1954845943169157 4.1568717699620006 ;
	setAttr ".cbx" -type "double3" 2.3828929340902092 3.6957211787637161 8.9890518422802259 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "5C5D2645-C148-4CF6-FA46-7F8825F47772";
	setAttr ".uopa" yes;
	setAttr -s 403 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 2.9802322e-08 -4.4703484e-08 0.0035373955
		 -4.7683716e-07 -7.4505806e-08 -0.0035373955 -4.7683716e-07 -7.4505806e-08 0 -2.0861626e-07
		 -2.9802322e-08 0 -3.8743019e-07 1.1920929e-07 0 -5.6624413e-07 -7.4505806e-08 0 2.9802322e-07
		 7.4505806e-08 0 2.9802322e-07 7.4505806e-08 0 -5.6624413e-07 -7.4505806e-08 0 -3.8743019e-07
		 1.1920929e-07 0.05618035 -0.0050114691 -0.027003288 0.18620564 -0.077101536 -0.41550893
		 -0.18620564 -0.077101454 -0.4155086 -0.05618035 -0.0050114393 -0.027003132 0 1.7881393e-07
		 1.7881393e-07 0 2.0861626e-07 -2.9802322e-08 0 -2.3841858e-07 -7.4505806e-08 0 -2.3841858e-07
		 -7.4505806e-08 0 2.0861626e-07 -2.9802322e-08 0 1.7881393e-07 1.7881393e-07 0.044005778
		 -0.025265038 -0.13615593 0.10006147 -0.12203058 -0.65764517 -0.10006135 -0.12203123
		 -0.65764511 -0.044005539 -0.025264949 -0.13615543 0 -5.6624413e-07 1.1920929e-07
		 0 1.4901161e-07 -7.4505806e-08 0 0 0 0 0 0 0 1.4901161e-07 -7.4505806e-08 0 6.5565109e-07
		 -3.7252903e-08 0.0076274313 -0.033842064 -0.1823768 0.0129573 -0.096590966 -0.52054036
		 -0.01295739 -0.096591122 -0.52054101 -0.0076274313 -0.033842057 -0.18237679 0 1.2665987e-07
		 -1.6763806e-08 0 4.4703484e-08 -3.3527613e-08 0 1.4901161e-08 0 0 0 2.7939677e-09
		 0 4.4703484e-08 -3.1664968e-08 0 1.3411045e-07 -1.6763806e-08 0 -0.019440889 -0.10476991
		 0 -0.057467036 -0.30969492 0 -0.057467122 -0.30969521 0 -0.019440889 -0.10476991
		 0 1.7881393e-07 -5.9604645e-08 0 4.4703484e-08 2.9802322e-08 0 1.2107193e-08 4.6566129e-10
		 0 4.6566129e-09 2.7939677e-09 0 4.4703484e-08 2.9802322e-08 0 1.7881393e-07 -5.9604645e-08
		 0 -0.0015437573 -0.0083200242 0 -0.019780142 -0.10660086 0 -0.019780252 -0.10660146
		 0 -0.0015440106 -0.0083198035 0 6.5565109e-07 -7.4505806e-09 -0.15901634 -0.07890109
		 -0.29446289 -0.37930125 1.4901161e-08 -3.7252903e-09 0.37930125 1.4901161e-08 -3.7252903e-09
		 0.15901634 -0.07890109 -0.29446289 0 6.5565109e-07 -7.4505806e-09 0 8.9406967e-08
		 -1.5646219e-07 0 -5.9604645e-07 1.4901161e-08 0 -5.9604645e-07 1.4901161e-08 0 8.9406967e-08
		 -1.5646219e-07 0 8.9406967e-08 -3.7252903e-08 0 0 -2.9802322e-08 -0.29453018 -1.937151e-07
		 -5.5879354e-08 0.29453018 -1.937151e-07 -5.5879354e-08 0 0 -2.9802322e-08 0 8.9406967e-08
		 -3.7252903e-08 0 -3.2782555e-07 4.4703484e-08 0 -5.9604645e-08 -7.4505806e-09 0.17797706
		 -5.9604645e-08 1.0803342e-07 0.0057138889 0.0075742342 -0.0020292287 -0.17797714
		 -5.9604645e-08 1.1175871e-07 -0.0057139792 0.0075743771 -0.0020292671 -0.25245082
		 -0.043534834 -0.23461974 0.12785539 7.1525574e-07 3.5762787e-07 0.25245082 -0.043534897
		 -0.23462014 -0.1278553 7.1525574e-07 3.5762787e-07 0.12483101 -0.035692103 -0.19234288
		 0 -8.3446503e-07 -1.4901161e-07 -0.12483148 -0.035690401 -0.19234225 0 -8.3446503e-07
		 -1.4901161e-07 0.00031839963 0.20160112 -0.054018512 -0.00031836951 0.20160052 -0.054018661
		 0.18589625 0.18631674 -0.049922857 -0.18589625 0.18631674 -0.049922857 0.18589559
		 0.035791263 -0.0095906397 -0.18589559 0.035791263 -0.0095906397 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287;
	setAttr ".tk[166:331]" 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0057139792 0.0075743771 -0.0020292671 -0.0057139792 0.0075743771
		 -0.0020292671 -0.0037290375 0.026839258 -0.0071914871 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951
		 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052
		 -0.054018661 -0.00031836951 0.20160052 -0.054018661 -0.00031836951 0.20160052 -0.054018661
		 -0.00031836951 0.20160052 -0.054018661 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342
		 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287
		 0.0057138889 0.0075742342 -0.0020292287 0.0057138889 0.0075742342 -0.0020292287 0.0057138889
		 0.0075742342 -0.0020292287 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512
		 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963
		 0.20160112 -0.054018512 0.00031839963 0.20160112 -0.054018512 0.00031839963 0.20160112
		 -0.054018512 0.0037290375 0.026838958 -0.0071914061;
	setAttr ".tk[332:402]" 0 0.010970616 -0.0029397123 0 -8.3446503e-07 -3.8743019e-07
		 0 0.1951526 -0.0522907 0 0.010970186 -0.0029396655 0 0.19515252 -0.052290678 0 7.7486038e-07
		 -1.4901161e-07 0 0.01290605 -0.0034581465 0 7.1525574e-07 -2.9802322e-07 0 0.15586217
		 -0.041762758 0 0.012906073 -0.003458285 0 0.15586138 -0.04176322 0 7.7486038e-07
		 -2.0861626e-07 0 -1.847744e-06 0 0 8.3446503e-07 2.9802322e-08 0 0.072434932 -0.019408802
		 0 0 2.0861626e-07 0 0.072436251 -0.019408394 0 8.3446503e-07 2.9802322e-08 -0.072690591
		 0.0063447347 0.023673583 0.072690912 0.0063446984 0.023673549 0.079133838 0.061530434
		 0.22964166 0.12169229 0.096505411 0.1632067 0.13150667 0.045337923 0.14801414 -0.079133838
		 0.061532579 0.2296419 -0.13150671 0.045337901 0.14801399 -0.12169228 0.096505411
		 0.16320661 -0.0021432629 0.011614546 0.043351654 0.12470517 0.057094883 0.16489126
		 0.055763151 0.091896102 0.34295291 0.002141329 0.011614446 0.043351267 -0.055763524
		 0.09189488 0.34295285 -0.12470511 0.05709485 0.16489127 0.18589708 9.5367432e-07
		 1.1920929e-07 0.16974217 0.012486934 0.044221058 0.11150458 0.054761071 0.20438798
		 -0.18589732 9.5367432e-07 1.1920929e-07 -0.11150453 0.05476116 0.20438829 -0.16974199
		 0.012487033 0.044221379 -0.18589625 0.18631674 -0.049922857 -0.18589625 0.18631674
		 -0.049922857 -0.18589625 0.18631674 -0.049922857 0.18589625 0.18631674 -0.049922857
		 0.18589625 0.18631674 -0.049922857 0.18589625 0.18631674 -0.049922857 0.18589559
		 0.035791263 -0.0095906397 0.18589559 0.035791263 -0.0095906397 0.18589559 0.035791263
		 -0.0095906397 -0.18589559 0.035791263 -0.0095906397 -0.18589559 0.035791263 -0.0095906397
		 -0.18589559 0.035791263 -0.0095906397 -0.13292588 9.5367432e-07 -8.9406967e-07 -0.069144763
		 0 1.7881393e-07 0 0 -2.9802322e-07 0 -4.7683716e-07 1.4901161e-08 0 2.9802322e-08
		 4.4703484e-08 0 2.5052577e-07 -1.44355e-08 0.13292588 9.5367432e-07 -8.9406967e-07
		 0.069144763 0 1.7881393e-07 0 0 -2.9802322e-07 0 -5.9604645e-07 2.9802322e-07 0 2.9802322e-08
		 4.4703484e-08 0.13292588 9.5367432e-07 8.9406967e-07 0.069144763 -1.1920929e-07 -1.013279e-06
		 0 5.9604645e-07 2.9802322e-08 0 -2.9802322e-07 -1.4901161e-08 0 -1.1920929e-07 7.4505806e-09
		 -0.13292588 9.5367432e-07 8.9406967e-07 -0.069144763 -1.1920929e-07 -1.013279e-06
		 0 5.9604645e-07 2.9802322e-08 0 -2.9802322e-07 -1.4901161e-08 0 -1.1920929e-07 7.4505806e-09;
createNode polySplit -n "polySplit3";
	rename -uid "45B8FDA3-A748-D7E3-4406-2EA448992B27";
	setAttr -s 8 ".e[0:7]"  1 0.5 0.5 0.5 0.5 0.5 0.5 0;
	setAttr -s 8 ".d[0:7]"  -2147483634 -2147483576 -2147483577 -2147483578 -2147483579 -2147483580 
		-2147483581 -2147483582;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "960E667A-6D4B-231F-2C05-FD98DA14B1D0";
	setAttr -s 8 ".e[0:7]"  0 0.5 0.5 0.5 0.5 0.5 0.5 0;
	setAttr -s 8 ".d[0:7]"  -2147483640 -2147482716 -2147482711 -2147482708 -2147482705 -2147482702 
		-2147482699 -2147482696;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "119DB2A6-2540-CCAB-7E09-E98ECE1B8717";
	setAttr -s 428 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.99895668029785156;
	setAttr ".wl[0].w[3]" 1;
	setAttr ".wl[0].w[4]" 1;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[1]" 0.98707425594329834;
	setAttr ".wl[1].w[3]" 1;
	setAttr ".wl[1].w[4]" 1;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[1]" 0.93687671422958374;
	setAttr ".wl[2].w[3]" 1;
	setAttr ".wl[2].w[4]" 1;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[1]" 0.87516504526138306;
	setAttr ".wl[3].w[3]" 1;
	setAttr ".wl[3].w[4]" 1;
	setAttr -s 4 ".wl[4].w";
	setAttr ".wl[4].w[1]" 0.99809360504150391;
	setAttr ".wl[4].w[3]" 0.81345593929290771;
	setAttr ".wl[4].w[4]" 0.47102189064025879;
	setAttr ".wl[4].w[5]" 1;
	setAttr -s 4 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.91301006078720093;
	setAttr ".wl[5].w[1]" 0.5334094762802124;
	setAttr ".wl[5].w[3]" 0.70285481214523315;
	setAttr ".wl[5].w[5]" 0.94465744495391846;
	setAttr -s 4 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.91301167011260986;
	setAttr ".wl[6].w[1]" 0.081090986728668213;
	setAttr ".wl[6].w[3]" 0.70285570621490479;
	setAttr ".wl[6].w[19]" 0.9446566104888916;
	setAttr -s 4 ".wl[7].w";
	setAttr ".wl[7].w[1]" 0.43702608346939087;
	setAttr ".wl[7].w[3]" 0.81345617771148682;
	setAttr ".wl[7].w[4]" 0.52486062049865723;
	setAttr ".wl[7].w[19]" 1;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[1]" 0.99999368190765381;
	setAttr ".wl[8].w[3]" 0.20482164621353149;
	setAttr ".wl[8].w[5]" 1;
	setAttr -s 2 ".wl[9].w[0:1]"  0.41735249757766724 0.066508293151855469;
	setAttr ".wl[10].w[0]"  0.41735506057739258;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[1]" 0.53512179851531982;
	setAttr ".wl[11].w[3]" 0.20482218265533447;
	setAttr ".wl[11].w[19]" 1;
	setAttr -s 4 ".wl[12].w";
	setAttr ".wl[12].w[1]" 1;
	setAttr ".wl[12].w[2]" 0.99087733030319214;
	setAttr ".wl[12].w[3]" 0.85131257772445679;
	setAttr ".wl[12].w[19]" 0.12632179260253906;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[1]" 1;
	setAttr ".wl[13].w[2]" 0.91472476720809937;
	setAttr ".wl[13].w[3]" 1;
	setAttr ".wl[13].w[19]" 0.00082826614379882812;
	setAttr -s 4 ".wl[14].w[1:4]"  1 0.52981466054916382 1 0.22861027717590332;
	setAttr -s 4 ".wl[15].w[1:4]"  1 0.52981513738632202 1 0.14880931377410889;
	setAttr -s 4 ".wl[16].w";
	setAttr ".wl[16].w[1]" 1;
	setAttr ".wl[16].w[2]" 0.91472458839416504;
	setAttr ".wl[16].w[3]" 1;
	setAttr ".wl[16].w[5]" 0.00082743167877197266;
	setAttr -s 4 ".wl[17].w";
	setAttr ".wl[17].w[1]" 1;
	setAttr ".wl[17].w[2]" 0.99087738990783691;
	setAttr ".wl[17].w[3]" 0.8513108491897583;
	setAttr ".wl[17].w[5]" 0.12631088495254517;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[1]" 0.9926372766494751;
	setAttr ".wl[18].w[3]" 0.018077373504638672;
	setAttr ".wl[18].w[5]" 0.94451415538787842;
	setAttr -s 2 ".wl[19].w[0:1]"  0.64547330141067505 0.23899340629577637;
	setAttr -s 2 ".wl[20].w[0:1]"  0.64547669887542725 0.12316203117370605;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[1]" 0.84146386384963989;
	setAttr ".wl[21].w[3]" 0.018077254295349121;
	setAttr ".wl[21].w[19]" 0.94451522827148438;
	setAttr ".wl[22].w[1]"  0.9067038893699646;
	setAttr -s 3 ".wl[23].w[1:3]"  0.99636191129684448 0.019175171852111816 
		0.21907293796539307;
	setAttr -s 3 ".wl[24].w[1:3]"  0.019215822219848633 0.85364735126495361 
		0.21257823705673218;
	setAttr -s 2 ".wl[25].w[2:3]"  0.85364580154418945 0.21258020401000977;
	setAttr -s 3 ".wl[26].w[1:3]"  0.81869041919708252 0.019175529479980469 
		0.21907258033752441;
	setAttr ".wl[27].w[1]"  0.84082579612731934;
	setAttr -s 3 ".wl[28].w";
	setAttr ".wl[28].w[1]" 0.9451906681060791;
	setAttr ".wl[28].w[3]" 0.0086361169815063477;
	setAttr ".wl[28].w[5]" 0.31686818599700928;
	setAttr -s 2 ".wl[29].w[0:1]"  0.97966450452804565 0.67729669809341431;
	setAttr -s 2 ".wl[30].w[0:1]"  0.97966557741165161 0.71568578481674194;
	setAttr -s 3 ".wl[31].w";
	setAttr ".wl[31].w[1]" 1;
	setAttr ".wl[31].w[3]" 0.0086362957954406738;
	setAttr ".wl[31].w[19]" 0.31687545776367188;
	setAttr ".wl[32].w[1]"  0.99135923385620117;
	setAttr -s 3 ".wl[33].w[1:3]"  0.98589074611663818 0.14103895425796509 
		0.037430882453918457;
	setAttr -s 3 ".wl[34].w[1:3]"  0.016763091087341309 1 0.14111030101776123;
	setAttr -s 2 ".wl[35].w[2:3]"  1 0.14110970497131348;
	setAttr -s 3 ".wl[36].w[1:3]"  0.35277307033538818 0.14103913307189941 
		0.037431001663208008;
	setAttr ".wl[37].w[1]"  0.4737359881401062;
	setAttr -s 3 ".wl[38].w[1:3]"  0.72207915782928467 0.0035414695739746094 
		0.050704360008239746;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.89386260509490967;
	setAttr ".wl[39].w[1]" 0.891013503074646;
	setAttr ".wl[39].w[3]" 0.074189484119415283;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.89386600255966187;
	setAttr ".wl[40].w[1]" 0.9836963415145874;
	setAttr ".wl[40].w[3]" 0.074190020561218262;
	setAttr -s 3 ".wl[41].w[1:3]"  1 0.0035417675971984863 0.050704538822174072;
	setAttr -s 2 ".wl[42].w[1:2]"  0.97291380167007446 0.0090935230255126953;
	setAttr -s 3 ".wl[43].w[1:3]"  0.97321343421936035 0.085195779800415039 
		0.0046974420547485352;
	setAttr -s 3 ".wl[44].w[1:3]"  0.42049092054367065 0.35701590776443481 
		0.089797616004943848;
	setAttr -s 2 ".wl[45].w[2:3]"  0.35701316595077515 0.089796662330627441;
	setAttr -s 3 ".wl[46].w[1:3]"  0.2473597526550293 0.085196077823638916 
		0.0046974420547485352;
	setAttr -s 2 ".wl[47].w[1:2]"  0.24788868427276611 0.0090934038162231445;
	setAttr -s 3 ".wl[48].w[1:3]"  0.46020454168319702 0.086710929870605469 
		0.11151731014251709;
	setAttr -s 3 ".wl[49].w[1:3]"  0.73018300533294678 0.041815817356109619 
		0.18629550933837891;
	setAttr -s 3 ".wl[50].w[1:3]"  0.86649972200393677 0.041815757751464844 
		0.18629574775695801;
	setAttr -s 3 ".wl[51].w[1:3]"  0.85989320278167725 0.086710929870605469 
		0.11151742935180664;
	setAttr -s 3 ".wl[52].w[1:3]"  0.77896201610565186 0.11392402648925781 
		0.088791370391845703;
	setAttr -s 3 ".wl[53].w[1:3]"  0.63257485628128052 0.28274166584014893 
		0.16572177410125732;
	setAttr -s 3 ".wl[54].w[1:3]"  0.45793813467025757 0.19365960359573364 
		0.12810933589935303;
	setAttr -s 3 ".wl[55].w[1:3]"  0.085392653942108154 0.19365811347961426 
		0.12810885906219482;
	setAttr -s 3 ".wl[56].w[1:3]"  0.20013707876205444 0.28274166584014893 
		0.165721595287323;
	setAttr -s 3 ".wl[57].w[1:3]"  0.25703072547912598 0.11392402648925781 
		0.088791370391845703;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[1]" 0.98156780004501343;
	setAttr ".wl[58].w[3]" 1;
	setAttr ".wl[58].w[4]" 1;
	setAttr -s 3 ".wl[59].w[1:3]"  0.44654327630996704 0.15637302398681641 
		0.17985939979553223;
	setAttr -s 4 ".wl[60].w";
	setAttr ".wl[60].w[1]" 0.44439965486526489;
	setAttr ".wl[60].w[3]" 1;
	setAttr ".wl[60].w[4]" 0.42113476991653442;
	setAttr ".wl[60].w[5]" 0.11886680126190186;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[3]" 0.84257888793945312;
	setAttr ".wl[61].w[5]" 0.70091640949249268;
	setAttr -s 4 ".wl[62].w";
	setAttr ".wl[62].w[1]" 0.14869701862335205;
	setAttr ".wl[62].w[3]" 1;
	setAttr ".wl[62].w[4]" 0.3325045108795166;
	setAttr ".wl[62].w[19]" 0.11887496709823608;
	setAttr -s 2 ".wl[63].w";
	setAttr ".wl[63].w[3]" 0.84257817268371582;
	setAttr ".wl[63].w[19]" 0.70092707872390747;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.42928218841552734;
	setAttr ".wl[64].w[3]" 0.36206978559494019;
	setAttr ".wl[64].w[19]" 1;
	setAttr ".wl[65].w[19]"  0.99660289287567139;
	setAttr -s 4 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.42928218841552734;
	setAttr ".wl[66].w[1]" 0.0023401379585266113;
	setAttr ".wl[66].w[3]" 0.36206930875778198;
	setAttr ".wl[66].w[5]" 1;
	setAttr ".wl[67].w[5]"  0.99660420417785645;
	setAttr -s 2 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.079375326633453369;
	setAttr ".wl[68].w[7]" 6.8128108978271484e-05;
	setAttr ".wl[69].w[7]"  0.63959681987762451;
	setAttr -s 2 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.07937312126159668;
	setAttr ".wl[70].w[7]" 6.8068504333496094e-05;
	setAttr ".wl[71].w[7]"  0.63959705829620361;
	setAttr -s 2 ".wl[72].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[73].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr ".wl[74].w[8]"  1;
	setAttr ".wl[75].w[8]"  1;
	setAttr ".wl[76].w[8]"  0.42217952013015747;
	setAttr ".wl[77].w[8]"  0.42217999696731567;
	setAttr -s 2 ".wl[78].w";
	setAttr ".wl[78].w[3]" 0.84257817268371582;
	setAttr ".wl[78].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[79].w";
	setAttr ".wl[79].w[3]" 0.84257817268371582;
	setAttr ".wl[79].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[80].w";
	setAttr ".wl[80].w[3]" 0.84257817268371582;
	setAttr ".wl[80].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[81].w";
	setAttr ".wl[81].w[3]" 0.84257817268371582;
	setAttr ".wl[81].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[82].w";
	setAttr ".wl[82].w[3]" 0.84257817268371582;
	setAttr ".wl[82].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[83].w";
	setAttr ".wl[83].w[3]" 0.84257817268371582;
	setAttr ".wl[83].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[84].w";
	setAttr ".wl[84].w[3]" 0.84257817268371582;
	setAttr ".wl[84].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[85].w";
	setAttr ".wl[85].w[3]" 0.84257817268371582;
	setAttr ".wl[85].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[86].w";
	setAttr ".wl[86].w[3]" 0.84257817268371582;
	setAttr ".wl[86].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[87].w";
	setAttr ".wl[87].w[3]" 0.84257817268371582;
	setAttr ".wl[87].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[88].w";
	setAttr ".wl[88].w[3]" 0.84257817268371582;
	setAttr ".wl[88].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[89].w";
	setAttr ".wl[89].w[3]" 0.84257817268371582;
	setAttr ".wl[89].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[90].w";
	setAttr ".wl[90].w[3]" 0.84257817268371582;
	setAttr ".wl[90].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[91].w";
	setAttr ".wl[91].w[3]" 0.84257817268371582;
	setAttr ".wl[91].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[92].w";
	setAttr ".wl[92].w[3]" 0.84257817268371582;
	setAttr ".wl[92].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[93].w";
	setAttr ".wl[93].w[3]" 0.84257817268371582;
	setAttr ".wl[93].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[94].w";
	setAttr ".wl[94].w[3]" 0.84257817268371582;
	setAttr ".wl[94].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[95].w";
	setAttr ".wl[95].w[3]" 0.84257817268371582;
	setAttr ".wl[95].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[96].w";
	setAttr ".wl[96].w[3]" 0.84257817268371582;
	setAttr ".wl[96].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[97].w";
	setAttr ".wl[97].w[3]" 0.84257817268371582;
	setAttr ".wl[97].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[98].w";
	setAttr ".wl[98].w[3]" 0.84257817268371582;
	setAttr ".wl[98].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[99].w";
	setAttr ".wl[99].w[3]" 0.84257817268371582;
	setAttr ".wl[99].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[100].w";
	setAttr ".wl[100].w[3]" 0.84257817268371582;
	setAttr ".wl[100].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[101].w";
	setAttr ".wl[101].w[3]" 0.84257817268371582;
	setAttr ".wl[101].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[102].w";
	setAttr ".wl[102].w[3]" 0.84257817268371582;
	setAttr ".wl[102].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[103].w";
	setAttr ".wl[103].w[3]" 0.84257817268371582;
	setAttr ".wl[103].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[104].w";
	setAttr ".wl[104].w[3]" 0.84257817268371582;
	setAttr ".wl[104].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[105].w";
	setAttr ".wl[105].w[3]" 0.84257817268371582;
	setAttr ".wl[105].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[106].w";
	setAttr ".wl[106].w[3]" 0.84257817268371582;
	setAttr ".wl[106].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[107].w";
	setAttr ".wl[107].w[3]" 0.84257817268371582;
	setAttr ".wl[107].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[108].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[109].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[110].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[111].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[112].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[113].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[114].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[115].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[116].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[117].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[118].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[119].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[120].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[121].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[122].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[123].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[124].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[125].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[126].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[127].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[128].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[129].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[130].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[131].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[132].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[133].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[134].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[135].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[136].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[137].w[19:20]"  0.96663117408752441 0.14713418483734131;
	setAttr -s 2 ".wl[138].w";
	setAttr ".wl[138].w[3]" 0.84257888793945312;
	setAttr ".wl[138].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[139].w";
	setAttr ".wl[139].w[3]" 0.84257888793945312;
	setAttr ".wl[139].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[140].w";
	setAttr ".wl[140].w[3]" 0.84257888793945312;
	setAttr ".wl[140].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[141].w";
	setAttr ".wl[141].w[3]" 0.84257888793945312;
	setAttr ".wl[141].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[142].w";
	setAttr ".wl[142].w[3]" 0.84257888793945312;
	setAttr ".wl[142].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[143].w";
	setAttr ".wl[143].w[3]" 0.84257888793945312;
	setAttr ".wl[143].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[144].w";
	setAttr ".wl[144].w[3]" 0.84257888793945312;
	setAttr ".wl[144].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[145].w";
	setAttr ".wl[145].w[3]" 0.84257888793945312;
	setAttr ".wl[145].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[146].w";
	setAttr ".wl[146].w[3]" 0.84257888793945312;
	setAttr ".wl[146].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[147].w";
	setAttr ".wl[147].w[3]" 0.84257888793945312;
	setAttr ".wl[147].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[148].w";
	setAttr ".wl[148].w[3]" 0.84257888793945312;
	setAttr ".wl[148].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[149].w";
	setAttr ".wl[149].w[3]" 0.84257888793945312;
	setAttr ".wl[149].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[150].w";
	setAttr ".wl[150].w[3]" 0.84257888793945312;
	setAttr ".wl[150].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[151].w";
	setAttr ".wl[151].w[3]" 0.84257888793945312;
	setAttr ".wl[151].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[152].w";
	setAttr ".wl[152].w[3]" 0.84257888793945312;
	setAttr ".wl[152].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[153].w";
	setAttr ".wl[153].w[3]" 0.84257888793945312;
	setAttr ".wl[153].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[154].w";
	setAttr ".wl[154].w[3]" 0.84257888793945312;
	setAttr ".wl[154].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[155].w";
	setAttr ".wl[155].w[3]" 0.84257888793945312;
	setAttr ".wl[155].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[156].w";
	setAttr ".wl[156].w[3]" 0.84257888793945312;
	setAttr ".wl[156].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[157].w";
	setAttr ".wl[157].w[3]" 0.84257888793945312;
	setAttr ".wl[157].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[158].w";
	setAttr ".wl[158].w[3]" 0.84257888793945312;
	setAttr ".wl[158].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[159].w";
	setAttr ".wl[159].w[3]" 0.84257888793945312;
	setAttr ".wl[159].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[160].w";
	setAttr ".wl[160].w[3]" 0.84257888793945312;
	setAttr ".wl[160].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[161].w";
	setAttr ".wl[161].w[3]" 0.84257888793945312;
	setAttr ".wl[161].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[162].w";
	setAttr ".wl[162].w[3]" 0.84257888793945312;
	setAttr ".wl[162].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[163].w";
	setAttr ".wl[163].w[3]" 0.84257888793945312;
	setAttr ".wl[163].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[164].w";
	setAttr ".wl[164].w[3]" 0.84257888793945312;
	setAttr ".wl[164].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[165].w";
	setAttr ".wl[165].w[3]" 0.84257888793945312;
	setAttr ".wl[165].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[166].w";
	setAttr ".wl[166].w[3]" 0.84257888793945312;
	setAttr ".wl[166].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[167].w";
	setAttr ".wl[167].w[3]" 0.84257888793945312;
	setAttr ".wl[167].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[168].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[169].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[170].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[171].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[172].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[173].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[174].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[175].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[176].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[177].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[178].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[179].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[180].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[181].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[182].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[183].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[184].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[185].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[186].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[187].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[188].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[189].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[190].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[191].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[192].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[193].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[194].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[195].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[196].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[197].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[198].w";
	setAttr ".wl[198].w[3]" 0.84257817268371582;
	setAttr ".wl[198].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[199].w";
	setAttr ".wl[199].w[3]" 0.84257817268371582;
	setAttr ".wl[199].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[200].w";
	setAttr ".wl[200].w[3]" 0.84257817268371582;
	setAttr ".wl[200].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[201].w";
	setAttr ".wl[201].w[3]" 0.84257817268371582;
	setAttr ".wl[201].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[202].w";
	setAttr ".wl[202].w[3]" 0.84257817268371582;
	setAttr ".wl[202].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[203].w";
	setAttr ".wl[203].w[3]" 0.84257817268371582;
	setAttr ".wl[203].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[204].w";
	setAttr ".wl[204].w[3]" 0.84257817268371582;
	setAttr ".wl[204].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[205].w";
	setAttr ".wl[205].w[3]" 0.84257817268371582;
	setAttr ".wl[205].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[206].w";
	setAttr ".wl[206].w[3]" 0.84257817268371582;
	setAttr ".wl[206].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[207].w";
	setAttr ".wl[207].w[3]" 0.84257817268371582;
	setAttr ".wl[207].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[208].w";
	setAttr ".wl[208].w[3]" 0.84257817268371582;
	setAttr ".wl[208].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[209].w";
	setAttr ".wl[209].w[3]" 0.84257817268371582;
	setAttr ".wl[209].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[210].w";
	setAttr ".wl[210].w[3]" 0.84257817268371582;
	setAttr ".wl[210].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[211].w";
	setAttr ".wl[211].w[3]" 0.84257817268371582;
	setAttr ".wl[211].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[212].w";
	setAttr ".wl[212].w[3]" 0.84257817268371582;
	setAttr ".wl[212].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[213].w";
	setAttr ".wl[213].w[3]" 0.84257817268371582;
	setAttr ".wl[213].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[214].w";
	setAttr ".wl[214].w[3]" 0.84257817268371582;
	setAttr ".wl[214].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[215].w";
	setAttr ".wl[215].w[3]" 0.84257817268371582;
	setAttr ".wl[215].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[216].w";
	setAttr ".wl[216].w[3]" 0.84257817268371582;
	setAttr ".wl[216].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[217].w";
	setAttr ".wl[217].w[3]" 0.84257817268371582;
	setAttr ".wl[217].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[218].w";
	setAttr ".wl[218].w[3]" 0.84257817268371582;
	setAttr ".wl[218].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[219].w";
	setAttr ".wl[219].w[3]" 0.84257817268371582;
	setAttr ".wl[219].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[220].w";
	setAttr ".wl[220].w[3]" 0.84257817268371582;
	setAttr ".wl[220].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[221].w";
	setAttr ".wl[221].w[3]" 0.84257817268371582;
	setAttr ".wl[221].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[222].w";
	setAttr ".wl[222].w[3]" 0.84257817268371582;
	setAttr ".wl[222].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[223].w";
	setAttr ".wl[223].w[3]" 0.84257817268371582;
	setAttr ".wl[223].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[224].w";
	setAttr ".wl[224].w[3]" 0.84257817268371582;
	setAttr ".wl[224].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[225].w";
	setAttr ".wl[225].w[3]" 0.84257817268371582;
	setAttr ".wl[225].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[226].w";
	setAttr ".wl[226].w[3]" 0.84257817268371582;
	setAttr ".wl[226].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[227].w";
	setAttr ".wl[227].w[3]" 0.84257817268371582;
	setAttr ".wl[227].w[19]" 0.70092707872390747;
	setAttr -s 2 ".wl[228].w[19:20]"  1 0.10359299182891846;
	setAttr -s 2 ".wl[229].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[230].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[231].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[232].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[233].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[234].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[235].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[236].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[237].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[238].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[239].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[240].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[241].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[242].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[243].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[244].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[245].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[246].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[247].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[248].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[249].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[250].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[251].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[252].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[253].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[254].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[255].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[256].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[257].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[258].w[19:20]"  0.96663141250610352 0.14713448286056519;
	setAttr -s 2 ".wl[259].w";
	setAttr ".wl[259].w[3]" 0.84257888793945312;
	setAttr ".wl[259].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[260].w";
	setAttr ".wl[260].w[3]" 0.84257888793945312;
	setAttr ".wl[260].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[261].w";
	setAttr ".wl[261].w[3]" 0.84257888793945312;
	setAttr ".wl[261].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[262].w";
	setAttr ".wl[262].w[3]" 0.84257888793945312;
	setAttr ".wl[262].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[263].w";
	setAttr ".wl[263].w[3]" 0.84257888793945312;
	setAttr ".wl[263].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[264].w";
	setAttr ".wl[264].w[3]" 0.84257888793945312;
	setAttr ".wl[264].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[265].w";
	setAttr ".wl[265].w[3]" 0.84257888793945312;
	setAttr ".wl[265].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[266].w";
	setAttr ".wl[266].w[3]" 0.84257888793945312;
	setAttr ".wl[266].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[267].w";
	setAttr ".wl[267].w[3]" 0.84257888793945312;
	setAttr ".wl[267].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[268].w";
	setAttr ".wl[268].w[3]" 0.84257888793945312;
	setAttr ".wl[268].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[269].w";
	setAttr ".wl[269].w[3]" 0.84257888793945312;
	setAttr ".wl[269].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[270].w";
	setAttr ".wl[270].w[3]" 0.84257888793945312;
	setAttr ".wl[270].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[271].w";
	setAttr ".wl[271].w[3]" 0.84257888793945312;
	setAttr ".wl[271].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[272].w";
	setAttr ".wl[272].w[3]" 0.84257888793945312;
	setAttr ".wl[272].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[273].w";
	setAttr ".wl[273].w[3]" 0.84257888793945312;
	setAttr ".wl[273].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[274].w";
	setAttr ".wl[274].w[3]" 0.84257888793945312;
	setAttr ".wl[274].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[275].w";
	setAttr ".wl[275].w[3]" 0.84257888793945312;
	setAttr ".wl[275].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[276].w";
	setAttr ".wl[276].w[3]" 0.84257888793945312;
	setAttr ".wl[276].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[277].w";
	setAttr ".wl[277].w[3]" 0.84257888793945312;
	setAttr ".wl[277].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[278].w";
	setAttr ".wl[278].w[3]" 0.84257888793945312;
	setAttr ".wl[278].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[279].w";
	setAttr ".wl[279].w[3]" 0.84257888793945312;
	setAttr ".wl[279].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[280].w";
	setAttr ".wl[280].w[3]" 0.84257888793945312;
	setAttr ".wl[280].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[281].w";
	setAttr ".wl[281].w[3]" 0.84257888793945312;
	setAttr ".wl[281].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[282].w";
	setAttr ".wl[282].w[3]" 0.84257888793945312;
	setAttr ".wl[282].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[283].w";
	setAttr ".wl[283].w[3]" 0.84257888793945312;
	setAttr ".wl[283].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[284].w";
	setAttr ".wl[284].w[3]" 0.84257888793945312;
	setAttr ".wl[284].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[285].w";
	setAttr ".wl[285].w[3]" 0.84257888793945312;
	setAttr ".wl[285].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[286].w";
	setAttr ".wl[286].w[3]" 0.84257888793945312;
	setAttr ".wl[286].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[287].w";
	setAttr ".wl[287].w[3]" 0.84257888793945312;
	setAttr ".wl[287].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[288].w";
	setAttr ".wl[288].w[3]" 0.84257888793945312;
	setAttr ".wl[288].w[5]" 0.70091640949249268;
	setAttr -s 2 ".wl[289].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[290].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[291].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[292].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[293].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[294].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[295].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[296].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[297].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[298].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[299].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[300].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[301].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[302].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[303].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[304].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[305].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[306].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[307].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[308].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[309].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[310].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[311].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[312].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[313].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[314].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[315].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[316].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[317].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[318].w[5:6]"  0.96662843227386475 0.14713042974472046;
	setAttr -s 2 ".wl[319].w[5:6]"  1 0.10359346866607666;
	setAttr -s 2 ".wl[320].w[19:20]"  0.95339995622634888 0.42034000158309937;
	setAttr -s 2 ".wl[321].w[19:20]"  1 0.55546760559082031;
	setAttr -s 2 ".wl[322].w[19:20]"  0.94927859306335449 0.29840242862701416;
	setAttr -s 2 ".wl[323].w[5:6]"  0.95339930057525635 0.42034190893173218;
	setAttr -s 2 ".wl[324].w[5:6]"  0.94927525520324707 0.29839849472045898;
	setAttr -s 2 ".wl[325].w[5:6]"  1 0.55546504259109497;
	setAttr -s 2 ".wl[326].w[19:20]"  1 1;
	setAttr -s 2 ".wl[327].w[19:20]"  0.75688004493713379 0.9921460747718811;
	setAttr -s 2 ".wl[328].w[19:20]"  1 0.84255862236022949;
	setAttr -s 2 ".wl[329].w[5:6]"  1 1;
	setAttr -s 2 ".wl[330].w[5:6]"  1 0.84255480766296387;
	setAttr -s 2 ".wl[331].w[5:6]"  0.75688230991363525 0.99214565753936768;
	setAttr -s 2 ".wl[332].w[19:20]"  0.75622189044952393 1;
	setAttr -s 2 ".wl[333].w[19:20]"  0.07937312126159668 0.99253708124160767;
	setAttr -s 2 ".wl[334].w[19:20]"  0.9487450122833252 0.83721929788589478;
	setAttr -s 2 ".wl[335].w[5:6]"  0.75622677803039551 1;
	setAttr -s 2 ".wl[336].w[5:6]"  0.94874036312103271 0.83721113204956055;
	setAttr -s 2 ".wl[337].w[5:6]"  0.07937312126159668 0.99253618717193604;
	setAttr -s 2 ".wl[338].w";
	setAttr ".wl[338].w[7]" 0.94846832752227783;
	setAttr ".wl[338].w[9]" 1;
	setAttr -s 2 ".wl[339].w";
	setAttr ".wl[339].w[7]" 0.94846832752227783;
	setAttr ".wl[339].w[17]" 1;
	setAttr ".wl[340].w[17]"  1;
	setAttr -s 2 ".wl[341].w[17:18]"  0.10289525985717773 0.74758213758468628;
	setAttr ".wl[342].w[17]"  0.043342351913452148;
	setAttr ".wl[343].w[9]"  1;
	setAttr ".wl[344].w[9]"  0.043342113494873047;
	setAttr -s 2 ".wl[345].w[9:10]"  0.10289537906646729 0.74758237600326538;
	setAttr -s 2 ".wl[346].w[17:18]"  0.99448150396347046 0.92985737323760986;
	setAttr -s 2 ".wl[347].w[17:18]"  0.60980492830276489 0.9935186505317688;
	setAttr -s 2 ".wl[348].w[17:18]"  1 0.99474620819091797;
	setAttr -s 2 ".wl[349].w[9:10]"  0.99448215961456299 0.92985939979553223;
	setAttr -s 2 ".wl[350].w[9:10]"  1 0.99474620819091797;
	setAttr -s 2 ".wl[351].w[9:10]"  0.60980677604675293 0.99351882934570312;
	setAttr ".wl[352].w[18]"  0.89373695850372314;
	setAttr -s 2 ".wl[353].w[17:18]"  0.020472705364227295 0.92656028270721436;
	setAttr -s 2 ".wl[354].w[17:18]"  0.55533826351165771 1;
	setAttr ".wl[355].w[10]"  0.89373773336410522;
	setAttr -s 2 ".wl[356].w[9:10]"  0.55533778667449951 1;
	setAttr -s 2 ".wl[357].w[9:10]"  0.020473361015319824 0.92656314373016357;
	setAttr ".wl[358].w[8]"  1;
	setAttr ".wl[359].w[8]"  1;
	setAttr ".wl[360].w[8]"  1;
	setAttr ".wl[361].w[8]"  1;
	setAttr ".wl[362].w[8]"  1;
	setAttr ".wl[363].w[8]"  1;
	setAttr ".wl[364].w[8]"  0.42217952013015747;
	setAttr ".wl[365].w[8]"  0.42217952013015747;
	setAttr ".wl[366].w[8]"  0.42217952013015747;
	setAttr ".wl[367].w[8]"  0.42217999696731567;
	setAttr ".wl[368].w[8]"  0.42217999696731567;
	setAttr ".wl[369].w[8]"  0.42217999696731567;
	setAttr ".wl[370].w[11]"  1;
	setAttr ".wl[371].w[12]"  1;
	setAttr ".wl[372].w[13]"  1;
	setAttr ".wl[373].w[14]"  1;
	setAttr ".wl[374].w[15]"  1;
	setAttr ".wl[375].w[16]"  1;
	setAttr ".wl[376].w[11]"  1;
	setAttr ".wl[377].w[12]"  1;
	setAttr ".wl[378].w[13]"  1;
	setAttr ".wl[379].w[14]"  1;
	setAttr ".wl[380].w[15]"  1;
	setAttr ".wl[381].w[11]"  1;
	setAttr ".wl[382].w[12]"  1;
	setAttr ".wl[383].w[13]"  1;
	setAttr ".wl[384].w[14]"  1;
	setAttr ".wl[385].w[15]"  1;
	setAttr ".wl[386].w[11]"  1;
	setAttr ".wl[387].w[12]"  1;
	setAttr ".wl[388].w[13]"  1;
	setAttr ".wl[389].w[14]"  1;
	setAttr ".wl[390].w[15]"  1;
	setAttr -s 4 ".wl[391].w";
	setAttr ".wl[391].w[1]" 0.41501259803771973;
	setAttr ".wl[391].w[3]" 1;
	setAttr ".wl[391].w[4]" 0.96900844573974609;
	setAttr ".wl[391].w[19]" 0.00026226043701171875;
	setAttr -s 3 ".wl[392].w";
	setAttr ".wl[392].w[1]" 0.42075055837631226;
	setAttr ".wl[392].w[3]" 1;
	setAttr ".wl[392].w[4]" 0.95735383033752441;
	setAttr -s 4 ".wl[393].w";
	setAttr ".wl[393].w[1]" 0.12337678670883179;
	setAttr ".wl[393].w[3]" 0.56210601329803467;
	setAttr ".wl[393].w[4]" 0.34627234935760498;
	setAttr ".wl[393].w[19]" 0.13272941112518311;
	setAttr -s 4 ".wl[394].w";
	setAttr ".wl[394].w[1]" 0.10135388374328613;
	setAttr ".wl[394].w[3]" 0.47006392478942871;
	setAttr ".wl[394].w[4]" 0.16152024269104004;
	setAttr ".wl[394].w[19]" 1;
	setAttr -s 3 ".wl[395].w";
	setAttr ".wl[395].w[1]" 0.61368513107299805;
	setAttr ".wl[395].w[3]" 1;
	setAttr ".wl[395].w[4]" 1;
	setAttr -s 3 ".wl[396].w";
	setAttr ".wl[396].w[1]" 0.72776401042938232;
	setAttr ".wl[396].w[3]" 1;
	setAttr ".wl[396].w[4]" 1;
	setAttr -s 3 ".wl[397].w";
	setAttr ".wl[397].w[1]" 0.79403603076934814;
	setAttr ".wl[397].w[3]" 1;
	setAttr ".wl[397].w[4]" 1;
	setAttr -s 3 ".wl[398].w";
	setAttr ".wl[398].w[1]" 0.95554423332214355;
	setAttr ".wl[398].w[3]" 1;
	setAttr ".wl[398].w[4]" 1;
	setAttr -s 3 ".wl[399].w";
	setAttr ".wl[399].w[1]" 0.85442310571670532;
	setAttr ".wl[399].w[3]" 1;
	setAttr ".wl[399].w[4]" 1;
	setAttr -s 3 ".wl[400].w";
	setAttr ".wl[400].w[1]" 0.99745291471481323;
	setAttr ".wl[400].w[3]" 1;
	setAttr ".wl[400].w[4]" 1;
	setAttr -s 3 ".wl[401].w";
	setAttr ".wl[401].w[1]" 0.84897470474243164;
	setAttr ".wl[401].w[3]" 1;
	setAttr ".wl[401].w[4]" 1;
	setAttr -s 3 ".wl[402].w";
	setAttr ".wl[402].w[1]" 1;
	setAttr ".wl[402].w[3]" 1;
	setAttr ".wl[402].w[4]" 1;
	setAttr -s 3 ".wl[403].w";
	setAttr ".wl[403].w[1]" 0.80484998226165771;
	setAttr ".wl[403].w[3]" 1;
	setAttr ".wl[403].w[4]" 0.98766708374023438;
	setAttr -s 4 ".wl[404].w";
	setAttr ".wl[404].w[1]" 0.91509032249450684;
	setAttr ".wl[404].w[3]" 0.56210601329803467;
	setAttr ".wl[404].w[4]" 0.44254052639007568;
	setAttr ".wl[404].w[5]" 0.13272178173065186;
	setAttr -s 4 ".wl[405].w";
	setAttr ".wl[405].w[1]" 0.82444775104522705;
	setAttr ".wl[405].w[3]" 1;
	setAttr ".wl[405].w[4]" 0.99433267116546631;
	setAttr ".wl[405].w[5]" 0.00026178359985351562;
	setAttr -s 4 ".wl[406].w";
	setAttr ".wl[406].w[1]" 0.9107511043548584;
	setAttr ".wl[406].w[3]" 0.47006320953369141;
	setAttr ".wl[406].w[4]" 0.20108246803283691;
	setAttr ".wl[406].w[5]" 1;
	setAttr -s 4 ".wl[407].w";
	setAttr ".wl[407].w[1]" 0.25111937522888184;
	setAttr ".wl[407].w[3]" 0.13615953922271729;
	setAttr ".wl[407].w[4]" 0.073960840702056885;
	setAttr ".wl[407].w[19]" 0.081700325012207031;
	setAttr -s 4 ".wl[408].w";
	setAttr ".wl[408].w[1]" 0.17672020196914673;
	setAttr ".wl[408].w[3]" 0.33680295944213867;
	setAttr ".wl[408].w[4]" 0.065959274768829346;
	setAttr ".wl[408].w[19]" 1;
	setAttr -s 3 ".wl[409].w";
	setAttr ".wl[409].w[1]" 0.84278804063796997;
	setAttr ".wl[409].w[3]" 0.89539217948913574;
	setAttr ".wl[409].w[4]" 0.93673866987228394;
	setAttr -s 3 ".wl[410].w";
	setAttr ".wl[410].w[1]" 0.53150355815887451;
	setAttr ".wl[410].w[3]" 1;
	setAttr ".wl[410].w[4]" 1;
	setAttr -s 3 ".wl[411].w";
	setAttr ".wl[411].w[1]" 0.62167149782180786;
	setAttr ".wl[411].w[3]" 1;
	setAttr ".wl[411].w[4]" 1;
	setAttr -s 3 ".wl[412].w";
	setAttr ".wl[412].w[1]" 1;
	setAttr ".wl[412].w[3]" 0.89539259672164917;
	setAttr ".wl[412].w[4]" 0.88369983434677124;
	setAttr -s 4 ".wl[413].w";
	setAttr ".wl[413].w[1]" 0.97878789901733398;
	setAttr ".wl[413].w[3]" 0.13615953922271729;
	setAttr ".wl[413].w[4]" 0.043953180313110352;
	setAttr ".wl[413].w[5]" 0.081694841384887695;
	setAttr -s 4 ".wl[414].w";
	setAttr ".wl[414].w[1]" 0.95939183235168457;
	setAttr ".wl[414].w[3]" 0.33680206537246704;
	setAttr ".wl[414].w[4]" 0.049772977828979492;
	setAttr ".wl[414].w[5]" 1;
	setAttr -s 3 ".wl[415].w";
	setAttr ".wl[415].w[1]" 0.68192458152770996;
	setAttr ".wl[415].w[3]" 1;
	setAttr ".wl[415].w[4]" 0.99990689754486084;
	setAttr ".wl[416].w[1]"  0.96972721815109253;
	setAttr -s 2 ".wl[417].w";
	setAttr ".wl[417].w[1]" 0.99493324756622314;
	setAttr ".wl[417].w[3]" 0.48109978437423706;
	setAttr -s 3 ".wl[418].w[1:3]"  0.15288102626800537 0.46600866317749023 
		0.62619519233703613;
	setAttr -s 3 ".wl[419].w[1:3]"  0.2142333984375 0.46601009368896484 
		0.6261940598487854;
	setAttr -s 2 ".wl[420].w";
	setAttr ".wl[420].w[1]" 0.99990487098693848;
	setAttr ".wl[420].w[3]" 0.48109978437423706;
	setAttr ".wl[421].w[1]"  0.82715487480163574;
	setAttr -s 3 ".wl[422].w";
	setAttr ".wl[422].w[1]" 0.46433049440383911;
	setAttr ".wl[422].w[3]" 0.079373359680175781;
	setAttr ".wl[422].w[19]" 0.027939796447753906;
	setAttr -s 3 ".wl[423].w";
	setAttr ".wl[423].w[1]" 0.94818472862243652;
	setAttr ".wl[423].w[3]" 0.82591903209686279;
	setAttr ".wl[423].w[4]" 0.5785292387008667;
	setAttr -s 3 ".wl[424].w";
	setAttr ".wl[424].w[1]" 0.5254364013671875;
	setAttr ".wl[424].w[3]" 0.99742186069488525;
	setAttr ".wl[424].w[4]" 0.94497048854827881;
	setAttr -s 3 ".wl[425].w";
	setAttr ".wl[425].w[1]" 0.57502484321594238;
	setAttr ".wl[425].w[3]" 0.99742180109024048;
	setAttr ".wl[425].w[4]" 0.90792250633239746;
	setAttr -s 3 ".wl[426].w";
	setAttr ".wl[426].w[1]" 1;
	setAttr ".wl[426].w[3]" 0.82591962814331055;
	setAttr ".wl[426].w[4]" 0.42797815799713135;
	setAttr -s 3 ".wl[427].w";
	setAttr ".wl[427].w[1]" 0.9965355396270752;
	setAttr ".wl[427].w[3]" 0.07937312126159668;
	setAttr ".wl[427].w[5]" 0.027936339378356934;
	setAttr -s 21 ".pm";
	setAttr ".pm[0]" -type "matrix" -5.1836077679189113e-17 -3.5164474317503978e-16 -1 0
		 0.73189397443134974 0.68141852791884272 -1.8913163477541976e-16 -0 0.68141852791884283 -0.73189397443134974 2.0314138549952497e-16 -0
		 -4.3436820982952007 0.40992573045246694 -1.1377724608365352e-16 1;
	setAttr ".pm[1]" -type "matrix" 2.8273206696754979e-16 -2.154149081657523e-16 -1 -0
		 -0.24253562503633258 0.97014250014533165 -1.8913163477541979e-16 0 0.97014250014533177 0.24253562503633269 2.0314138549952497e-16 -0
		 -3.2974324082654576 -5.2580472694154459 -9.5390095195352137e-17 1;
	setAttr ".pm[2]" -type "matrix" 1 -1.6984830207341294e-16 -2.0878521140647348e-16 -0
		 7.8109332312904144e-17 0.99999999999999978 8.3438298283884333e-33 -0 2.4094782435053762e-16 5.5511151231257901e-17 1 -0
		 -2.3788020027387195e-15 -3.2423088215657914 -8.8216087082889381 1;
	setAttr ".pm[3]" -type "matrix" 2.8652279359856504e-16 -2.103466023026677e-16 -1 -0
		 -0.25977094765097336 0.96567026191993433 -1.8913163477541979e-16 0 0.96567026191993444 0.25977094765097347 2.0314138549952495e-16 -0
		 -4.4764524740013076 -4.1993556175196005 -5.5270278416526948e-16 1;
	setAttr ".pm[4]" -type "matrix" 2.8273206696754979e-16 -2.1541490816575232e-16 -1 -0
		 -0.24253562503633258 0.97014250014533165 -1.8913163477541979e-16 0 0.97014250014533177 0.24253562503633266 2.03141385499525e-16 -0
		 -7.367135471955458 -4.0688258779662316 -1.2437253457310753e-15 1;
	setAttr ".pm[5]" -type "matrix" 2.8212046800745751e-16 2.1621527671063346e-16 -1 -0
		 -0.99978305672811207 0.020828813681835756 -1.8913163477541979e-16 0 0.020828813681835645 0.99978305672811218 2.03141385499525e-16 -0
		 1.0713924015056906 -4.0791074741187296 1.9472935832616944 1;
	setAttr ".pm[6]" -type "matrix" -5.183607767918915e-17 -3.5164474317503978e-16 -1 0
		 0.73189397443134985 0.68141852791884261 -1.8913163477541974e-16 0 0.68141852791884283 -0.73189397443134974 2.0314138549952492e-16 -0
		 -2.3040983005712929 3.4482550651481207 1.9472935832616942 1;
	setAttr ".pm[7]" -type "matrix" -1.9361714084537009e-16 2.6847100343506135e-16 1 -0
		 -0.098528145012853161 0.99513426462981647 -3.7466555368883468e-16 0 -0.99513426462981625 -0.098528145012853383 -1.4731988169118275e-16 -0
		 0.16208925087352419 -2.0218206442487139 7.5422000710536046e-16 1;
	setAttr ".pm[8]" -type "matrix" -9.8683016827309877e-17 1.4901161188175553e-08 -0.99999999999999978 0
		 -0.73715414020074044 0.67572462851734671 1.0069081769525748e-08 0 0.67572462851734649 0.73715414020073988 1.0984452578076428e-08 -0
		 3.8280980716887663 1.7359167350632536 2.586717448177151e-08 1;
	setAttr ".pm[9]" -type "matrix" -1.2667002902299712e-08 -1.4901161384592812e-08 0.99999999999999956 -0
		 -0.96265094015389774 0.2707455769182871 -8.1594788054310091e-09 0 -0.27074557691828671 -0.96265094015389707 -1.7774152005968756e-08 0
		 -0.10946975416512635 -3.1193187366332573 -2.5947605095927586 1;
	setAttr ".pm[10]" -type "matrix" 1.8083509815272164e-08 -1.1781959463046046e-09 -0.99999999999999978 -0
		 0.73189397443134996 0.68141852791884183 1.2432367411461168e-08 -0 0.68141852791884117 -0.73189397443134985 1.3184753132825247e-08 -0
		 2.6456233079582527 -2.1462505833376233 2.5947605120954922 1;
	setAttr ".pm[11]" -type "matrix" -1.317969096482932e-08 -1.4901161166260405e-08 0.99999999999999933 -0
		 -0.2537126883649396 0.96727962439133097 1.1069734660964987e-08 0 -0.96727962439133008 -0.25371268836493927 -1.652906016640187e-08 0
		 -5.4168594440831379 -2.6552348639854868 -1.1095861589809326e-07 1;
	setAttr ".pm[12]" -type "matrix" -1.3684893607940589e-08 -1.4438578356978832e-08 0.99999999999999933 -0
		 -0.22026087143464643 0.97544100206770523 1.1069734660964987e-08 0 -0.97544100206770434 -0.22026087143464612 -1.6529060166401867e-08 0
		 -7.8941080316957946 -2.3848710447043713 -1.4246417578615891e-07 1;
	setAttr ".pm[13]" -type "matrix" -1.4378718107034515e-08 -1.3747775224730308e-08 0.99999999999999933 -0
		 -0.17200102348021071 0.98509677084119951 1.1069734660964987e-08 0 -0.98509677084119862 -0.17200102348021043 -1.6529060166401867e-08 0
		 -10.408290439939137 -1.8750392532529003 -1.7543549219835229e-07 1;
	setAttr ".pm[14]" -type "matrix" -1.3991132626636189e-08 -1.4142031885664345e-08 0.99999999999999933 -0
		 -0.19930915164897536 0.97993666227413112 1.1069734660964987e-08 0 -0.97993666227413023 -0.19930915164897506 -1.6529060166401867e-08 0
		 -12.775415311210383 -2.2309128797197757 -2.1029217084542527e-07 1;
	setAttr ".pm[15]" -type "matrix" -1.4037123408986641e-08 -1.4096383381284363e-08 0.99999999999999933 -0
		 -0.19611613513823048 0.98058067569091023 1.1069734660964989e-08 0 -0.98058067569090934 -0.19611613513823017 -1.6529060166401867e-08 0
		 -15.064825769435878 -2.1818536211847497 -2.4222306337124867e-07 1;
	setAttr ".pm[16]" -type "matrix" 1.9329193854892334e-08 1.4901161172980791e-08 -0.99999999999999911 -0
		 -0.73715414020074144 0.67572462851734549 -4.179513590362965e-09 0 0.67572462851734461 0.73715414020074066 2.4045664970694988e-08 -0
		 10.771765011941694 13.574147024884191 4.1048008646089604e-07 1;
	setAttr ".pm[17]" -type "matrix" -1.2667003062306908e-08 -5.2551518746396233e-08 0.99999999999999845 -0
		 0.96265094015389796 -0.2707455769182866 -2.0341889424872649e-09 0 0.27074557691828616 0.96265094015389596 5.4018303998566706e-08 -0
		 0.10946836028292879 3.1193152784916012 2.5947601653113952 1;
	setAttr ".pm[18]" -type "matrix" 3.5320262613350611e-08 6.6701824520149772e-08 -0.99999999999999689 -0
		 -0.73189397443135018 -0.68141852791883828 -7.130254636764145e-08 0 -0.68141852791884061 0.73189397443135029 2.4750782075275541e-08 -0
		 -2.6456201889984334 2.1462472768997976 -2.5947599502853973 1;
	setAttr ".pm[19]" -type "matrix" -2.8212046800745746e-16 -2.1621527671063351e-16 -1 -0
		 0.99978305672811207 -0.020828813681835534 -1.8913163477541979e-16 0 -0.020828813681835479 -0.99978305672811218 2.03141385499525e-16 0
		 -1.0713893938442118 4.0791107056879614 -1.9472900000000009 1;
	setAttr ".pm[20]" -type "matrix" 5.1836077679189236e-17 3.5164474317503968e-16 -1 -0
		 -0.73189397443134996 -0.68141852791884239 -1.8913163477541974e-16 0 -0.6814185279188425 0.73189397443134996 2.0314138549952492e-16 -0
		 2.3040968477343755 -3.4482531705432407 -1.9472900000000006 1;
	setAttr ".gm" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr -s 21 ".ma";
	setAttr -s 21 ".dpf[0:20]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 21 ".lw";
	setAttr -s 21 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
	setAttr -s 21 ".ifcl";
	setAttr -s 21 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "380DB0ED-CC42-D05F-019E-339131605F78";
	setAttr -s 63 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" 1.4901161e-08 -2.9802322e-08 7.4505806e-09 ;
	setAttr ".vl[0].vt[1]" -type "float3" 7.4505806e-09 0 -2.1886081e-08 ;
	setAttr ".vl[0].vt[2]" -type "float3" -3.7252903e-09 -2.9802322e-08 -5.1222742e-09 ;
	setAttr ".vl[0].vt[3]" -type "float3" 0 1.7881393e-07 -3.3527613e-08 ;
	setAttr ".vl[0].vt[4]" -type "float3" -7.4505806e-09 1.1920929e-07 -4.4703484e-08 ;
	setAttr ".vl[0].vt[7]" -type "float3" -7.4505806e-09 1.7881393e-07 -7.4505806e-09 ;
	setAttr ".vl[0].vt[8]" -type "float3" 2.3841858e-07 7.4505806e-08 5.9604645e-08 ;
	setAttr ".vl[0].vt[11]" -type "float3" -2.3841858e-07 -1.4901161e-08 -5.9604645e-07 ;
	setAttr ".vl[0].vt[12]" -type "float3" 0.84383547 0.50151771 -0.63422537 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0.50453424 0.28702074 -1.4347427 ;
	setAttr ".vl[0].vt[14]" -type "float3" -0.031382918 0.1072522 -2.1056454 ;
	setAttr ".vl[0].vt[15]" -type "float3" 0.031382754 0.10725228 -2.1056457 ;
	setAttr ".vl[0].vt[16]" -type "float3" -0.50453377 0.28702056 -1.4347426 ;
	setAttr ".vl[0].vt[17]" -type "float3" -0.84383547 0.50151807 -0.63422489 ;
	setAttr ".vl[0].vt[18]" -type "float3" -1.4901161e-08 -4.4703484e-08 1.4901161e-08 ;
	setAttr ".vl[0].vt[21]" -type "float3" 7.4505806e-09 -8.9406967e-08 1.1175871e-08 ;
	setAttr ".vl[0].vt[22]" -type "float3" 0 -1.4901161e-08 -2.514571e-08 ;
	setAttr ".vl[0].vt[23]" -type "float3" -3.7252903e-09 4.0978193e-08 1.8626451e-09 ;
	setAttr ".vl[0].vt[24]" -type "float3" 9.3132257e-09 1.8626451e-08 -1.4901161e-08 ;
	setAttr ".vl[0].vt[25]" -type "float3" 1.8626451e-09 2.6077032e-08 1.8626451e-09 ;
	setAttr ".vl[0].vt[26]" -type "float3" 1.8626451e-09 2.2351742e-08 -5.5879354e-09 ;
	setAttr ".vl[0].vt[27]" -type "float3" 1.8626451e-09 -4.4703484e-08 -4.5634806e-08 ;
	setAttr ".vl[0].vt[58]" -type "float3" 0 -2.9802322e-08 1.4901161e-08 ;
	setAttr ".vl[0].vt[60]" -type "float3" 3.7252903e-09 -6.7055225e-08 0 ;
	setAttr ".vl[0].vt[62]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".vl[0].vt[332]" -type "float3" 3.2782555e-07 0.12051928 -0.032292221 ;
	setAttr -av ".vl[0].vt[332].vx";
	setAttr -av ".vl[0].vt[332].vy";
	setAttr -av ".vl[0].vt[332].vz";
	setAttr ".vl[0].vt[333]" -type "float3" 1.4901161e-06 0.071729451 -0.019220069 ;
	setAttr -av ".vl[0].vt[333].vx";
	setAttr -av ".vl[0].vt[333].vy";
	setAttr -av ".vl[0].vt[333].vz";
	setAttr ".vl[0].vt[334]" -type "float3" -1.5497208e-06 -0.056669831 0.015184917 ;
	setAttr -av ".vl[0].vt[334].vx";
	setAttr -av ".vl[0].vt[334].vy";
	setAttr -av ".vl[0].vt[334].vz";
	setAttr ".vl[0].vt[335]" -type "float3" 6.5565109e-07 0.12072567 -0.032349721 ;
	setAttr -av ".vl[0].vt[335].vx";
	setAttr -av ".vl[0].vt[335].vy";
	setAttr -av ".vl[0].vt[335].vz";
	setAttr ".vl[0].vt[336]" -type "float3" 8.9406967e-07 -0.056694388 0.01519153 ;
	setAttr -av ".vl[0].vt[336].vx";
	setAttr -av ".vl[0].vt[336].vy";
	setAttr -av ".vl[0].vt[336].vz";
	setAttr ".vl[0].vt[337]" -type "float3" 9.5367432e-07 0.071464904 -0.019150255 ;
	setAttr -av ".vl[0].vt[337].vx";
	setAttr -av ".vl[0].vt[337].vy";
	setAttr -av ".vl[0].vt[337].vz";
	setAttr ".vl[0].vt[352]" -type "float3" 7.7486038e-07 -0.032016419 0.0085790455 ;
	setAttr -av ".vl[0].vt[352].vx";
	setAttr -av ".vl[0].vt[352].vy";
	setAttr -av ".vl[0].vt[352].vz";
	setAttr ".vl[0].vt[353]" -type "float3" -1.4305115e-06 0.02469236 -0.0066170394 ;
	setAttr -av ".vl[0].vt[353].vx";
	setAttr -av ".vl[0].vt[353].vy";
	setAttr -av ".vl[0].vt[353].vz";
	setAttr ".vl[0].vt[354]" -type "float3" 1.1622906e-06 -0.026695965 0.0071532065 ;
	setAttr -av ".vl[0].vt[354].vx";
	setAttr -av ".vl[0].vt[354].vy";
	setAttr -av ".vl[0].vt[354].vz";
	setAttr ".vl[0].vt[355]" -type "float3" -7.7486038e-07 -0.032016404 0.008578415 ;
	setAttr -av ".vl[0].vt[355].vx";
	setAttr -av ".vl[0].vt[355].vy";
	setAttr -av ".vl[0].vt[355].vz";
	setAttr ".vl[0].vt[356]" -type "float3" 7.7486038e-07 -0.026695965 0.0071532065 ;
	setAttr -av ".vl[0].vt[356].vx";
	setAttr -av ".vl[0].vt[356].vy";
	setAttr -av ".vl[0].vt[356].vz";
	setAttr ".vl[0].vt[357]" -type "float3" -1.3709068e-06 0.024693286 -0.006617046 ;
	setAttr -av ".vl[0].vt[357].vx";
	setAttr -av ".vl[0].vt[357].vy";
	setAttr -av ".vl[0].vt[357].vz";
	setAttr ".vl[0].vt[391]" -type "float3" -2.9802322e-08 -1.1920929e-07 -2.9802322e-08 ;
	setAttr ".vl[0].vt[392]" -type "float3" -3.7252903e-09 1.1920929e-07 1.4901161e-08 ;
	setAttr ".vl[0].vt[393]" -type "float3" 0 7.4505806e-09 1.4901161e-08 ;
	setAttr ".vl[0].vt[394]" -type "float3" -3.7252903e-08 5.9604645e-08 -4.4703484e-08 ;
	setAttr ".vl[0].vt[395]" -type "float3" -3.7252903e-09 5.2154064e-08 -2.2351742e-08 ;
	setAttr ".vl[0].vt[396]" -type "float3" -9.3132257e-10 3.7252903e-09 -7.4505806e-09 ;
	setAttr ".vl[0].vt[397]" -type "float3" 3.7252903e-09 7.4505806e-09 -1.3038516e-08 ;
	setAttr ".vl[0].vt[398]" -type "float3" 3.7252903e-09 -5.9604645e-08 -1.9557774e-08 ;
	setAttr ".vl[0].vt[399]" -type "float3" -1.8626451e-09 -5.9604645e-08 1.8626451e-08 ;
	setAttr ".vl[0].vt[400]" -type "float3" 0 -5.9604645e-08 -2.0489097e-08 ;
	setAttr ".vl[0].vt[401]" -type "float3" 3.7252903e-09 5.2154064e-08 -2.6077032e-08 ;
	setAttr ".vl[0].vt[402]" -type "float3" 1.3969839e-09 1.8626451e-09 1.1175871e-08 ;
	setAttr ".vl[0].vt[403]" -type "float3" 1.1175871e-08 1.0430813e-07 -7.4505806e-09 ;
	setAttr ".vl[0].vt[404]" -type "float3" 0 7.4505806e-09 1.4901161e-08 ;
	setAttr ".vl[0].vt[405]" -type "float3" 0 4.4703484e-08 -7.4505806e-09 ;
	setAttr ".vl[0].vt[406]" -type "float3" -1.4901161e-08 0 -7.4505806e-09 ;
	setAttr ".vl[0].vt[407]" -type "float3" -2.220446e-16 3.7252903e-08 1.4901161e-08 ;
	setAttr ".vl[0].vt[408]" -type "float3" -1.4901161e-08 -1.7881393e-07 9.6857548e-08 ;
	setAttr ".vl[0].vt[409]" -type "float3" -1.1175871e-08 9.6857548e-08 0 ;
	setAttr ".vl[0].vt[410]" -type "float3" 0 1.1920929e-07 1.8626451e-08 ;
	setAttr ".vl[0].vt[411]" -type "float3" 2.9802322e-08 0 -4.4703484e-08 ;
	setAttr ".vl[0].vt[412]" -type "float3" 7.4505806e-09 1.1175871e-07 2.2351742e-08 ;
	setAttr ".vl[0].vt[413]" -type "float3" -7.4505806e-09 5.9604645e-08 2.2351742e-08 ;
	setAttr ".vl[0].vt[414]" -type "float3" -7.4505806e-09 1.4901161e-07 4.4703484e-08 ;
	setAttr ".vl[0].vt[415]" -type "float3" 0 0 -2.0489097e-08 ;
createNode objectSet -n "skinCluster1Set";
	rename -uid "5EC76531-1645-03E5-FFDA-3AB89735EDBB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "5BD6A4FD-1843-93A1-D7B2-1EBC41AAC08C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "D98EE48D-B04B-8AD1-C408-2EA39A759BE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "52D545C8-9143-F2BD-9D40-FE88180B7250";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "974B0201-534C-F6C4-9181-E68F0F5AE20F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "9823B8FF-6C4A-38A8-3073-33A49182C262";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "62C46F2F-0545-3F8F-8D32-429181E333FF";
	setAttr -s 21 ".wm";
	setAttr -s 21 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.8997837667866033 3.2598876332502762 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.28221510948262363 -0.64834761662221818 0.28221510948262385 0.64834761662221818 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8532531356332438 0.066246692711167635
		 -1.8387150888301466e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.50815218597802725 0.86126729642182076 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4744097226985291 0.027008698872468095
		 1.0834205522716341e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.086396614306736647 0.70180882370937225 0.086396614306736605 0.70180882370937259 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2530816098468109 -1.1390623792574848
		 4.573126889699171e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0089030508868512739 0.99996036705706803 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8170680397806818 -9.7630237227974703e-15
		 6.9102256156580633e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0089030508868512739 0.99996036705706803 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.73375270771774637 -1.7707643572171452
		 -1.9472935832616947 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.92669899519760168 0.37580443358182375 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8198669752915377 0 3.5181995580127681e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.92669899519760168 0.37580443358182375 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8852648845850393 1.8195536506899013
		 -5.0502758938417187e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3534012723997641 -0.93547182783140381 2.6499760141163361e-16 1.0011043276295765e-16 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.8471921042589834 -1.1102230246251561e-15
		 7.0602963205705364e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44732186327668882 -0.89437304892011993 -6.6635983408696957e-09 3.3328075231742695e-09 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2341192080261789 3.8664943706258587e-08
		 -2.5947604617246331 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.87369121310585385 -0.4864808980233668 -1.7156058012376454e-09 3.081127583395397e-09 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2600428611604797 -5.5666393638541146e-16
		 1.5960966680149787e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.23553187147017984 -0.97186662537703938 -3.0470831508188182e-09 7.3846058532895895e-10 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0478370634184562 -1.8162509099253177
		 -2.7064247465092179e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51643523010414583 -0.85632625389350159 -9.3570271869704688e-09 5.6430577322867178e-09 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3904627173899864 -5.7749653967967588e-16
		 3.1505559888065698e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.017216504737564121 0.99985178499846739 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4093220856728039 4.1658769933464879e-15
		 3.2971316412193403e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.024608163255271834 0.99969717329859542 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4241854104012437 1.4704150857099295e-15
		 3.4856678647072955e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.013895688040770141 0.99990345026601124 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2822235611638879 3.9358798525501725e-16
		 3.1930892525823371e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.001628658014968217 0.99999867373565565 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1260992697057395 9.6333803752258878e-14
		 2.9844317826077151e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49089984119206342 -0.87121601564572204 -4.4418026920370004e-09 2.5028009092685579e-09 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.23412133051642 2.9160860934851485e-06
		 2.5947600000000435 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.48648089802336658 0.8736912131058534 3.2547534368142672e-08 3.6245651988415399e-09 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2600431162554286 1.1431479958190494e-06
		 -1.5960909482970465e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.23553187147017973 -0.97186662537703794 -5.2297906897031746e-08 1.267439745721526e-08 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.73375261500431499
		 -1.7707687708858559 1.9472900000000004 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.37580443358182369 0.92669899519760168 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.8198636904805827 5.6029508801458405e-06
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.92669899519760179 0.37580443358182353 1
		 1 1 yes;
	setAttr -s 21 ".m";
	setAttr -s 21 ".p";
	setAttr ".bp" yes;
createNode skinBinding -n "skinBinding1";
	rename -uid "3A664F79-E041-98BC-78BE-A282C07F7F0C";
	setAttr -s 21 ".l[0:20]"  0.98888616977534427 1.2207796517471625 2.6122024875160132 
		1.5059747311722012 2.5094766813578095 1.8454159142577731 0.26992510655581425 2.0703515495878801 
		0.52548036720066182 1.0339151803476676 0.11231903074807947 0.45492030497039859 0.35089617329072564 
		0.58839428542337435 0.46497542808175402 0.93514783213620478 0.73144400757267469 1.0339151803476676 
		0.11231903074807947 1.8454190930611227 0.26992510655581425;
	setAttr -s 21 ".rr[0:20]"  1.7435141311417324 2.8540579775408701 1.6465077731291651 
		2.5554083339096918 0.64115606902592526 2.0051128078830787 2.1356636760749144 1.7113354967378362 
		1.4205810884202807 1.4036456278544978 1.55029733698971 1.0185160033367127 0.97007627284084019 
		0.84889093952012518 0.62810265578270608 0.4306868257772607 0.050735856022857705 1.4036456278544978 
		1.55029733698971 2.0051126218544457 2.1356636760749144;
	setAttr -s 21 ".lr[0:20]"  1.7435141311417324 2.8540579775408701 1.6465077731291651 
		2.5554083339096918 0.98968337057583677 2.0051128078830787 3.4227597055949488 1.7113354967378362 
		1.6666457781757205 2.234580549357565 1.7776740441859455 1.0185160033367127 0.97007627284084019 
		0.84889093952012518 0.62810265578270608 0.4306868257772607 0.050735856022857705 2.234580549357565 
		1.7776740441859455 2.0051126218544457 3.4227597055949488;
	setAttr -s 21 ".bpm";
	setAttr ".bpm[0]" -type "matrix" 0 0.73189397443134985 0.68141852791884283 0 -2.7755575615628909e-16 0.68141852791884294 -0.73189397443134985 0
		 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0 0 2.8997837667866033 3.2598876332502762 1;
	setAttr ".bpm[1]" -type "matrix" 2.4294725086589572e-16 -0.2425356250363328 0.9701425001453321 0
		 -1.3421561411472569e-16 0.97014250014533221 0.24253562503633269 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 9.2444637330587321e-33 4.3013102936793155 4.4742431015731521 1;
	setAttr ".bpm[2]" -type "matrix" 1 1.6984830207341299e-16 2.0878521140647348e-16 0
		 -7.8109332312904156e-17 1.0000000000000002 -2.4651903288156619e-32 0 -2.4094782435053762e-16 -5.551115123125795e-17 1 0
		 4.0367491634356463e-31 3.2423088215657918 8.8216087082889381 1;
	setAttr ".bpm[3]" -type "matrix" 2.4529849893849337e-16 -0.25977094765097358 0.96567026191993477 0
		 -1.2986856507258175e-16 0.96567026191993488 0.25977094765097347 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 4.0367491634356463e-31 2.8923405377792379 5.4136476213274882 1;
	setAttr ".bpm[4]" -type "matrix" 2.4294725086589572e-16 -0.24253562503633277 0.9701425001453321 0
		 -1.3421561411472569e-16 0.97014250014533221 0.24253562503633269 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 5.0228252949619111e-31 2.1605481034881304 8.1340064531487748 1;
	setAttr ".bpm[5]" -type "matrix" 1.9332179800939367e-16 -0.99978305672811218 0.020828813681835756 0
		 1.9915792776062066e-16 0.020828813681835645 0.99978305672811207 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 1.9472935832616951 1.1561229396992347 4.055906706485815 1;
	setAttr ".bpm[6]" -type "matrix" -2.4651903288156619e-32 0.73189397443134974 0.68141852791884261 0
		 -2.7755575615628904e-16 0.68141852791884283 -0.73189397443134985 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 1.9472935832616951 -0.66334922769628268 4.0938123766398888 1;
	setAttr ".bpm[7]" -type "matrix" -1.8351816413728138e-16 -0.098528145012853452 -0.99513426462981713 0
		 3.5832737558571648e-16 0.99513426462981691 -0.09852814501285323 0 1 -2.862414323079656e-16 -1.6622310111668916e-16 0
		 0 2.0279533532429181 -0.037905670154095183 1;
	setAttr ".bpm[8]" -type "matrix" -1.7663859176333339e-16 -0.73715414020074088 0.6757246285173476 0
		 1.490116123399133e-08 0.67572462851734727 0.73715414020074133 0 -1 1.0069081681101636e-08 1.0984452596979665e-08 0
		 1.9721522630525295e-31 1.648896651702183 -3.8663783557154976 1;
	setAttr ".bpm[9]" -type "matrix" -1.2667002982303314e-08 -0.96265094015389829 -0.27074557691828721 0
		 -1.490116134245518e-08 0.27074557691828716 -0.96265094015389885 0 1 -8.1594787170068955e-09 -1.7774152024872004e-08 0
		 2.5947604617246336 0.73916056800442553 -3.0324536123258845 1;
	setAttr ".bpm[10]" -type "matrix" 1.8083509867108254e-08 0.73189397443135074 0.68141852791884272 0
		 -1.1781958722156197e-09 0.68141852791884228 -0.73189397443135107 0 -1 1.2432367323037056e-08 1.3184753151728487e-08 0
		 2.5947604617246336 -0.47382087692591868 -3.3736046437125475 1;
	setAttr ".bpm[11]" -type "matrix" -1.3179690968978959e-08 -0.25371268836493988 -0.96727962439133242 0
		 -1.4901161075933584e-08 0.96727962439133164 -0.25371268836493982 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 1.9852334898487891e-23 1.1940286098533048 -5.913284544035454 1;
	setAttr ".bpm[12]" -type "matrix" -1.3684893608978004e-08 -0.2202608714346467 -0.97544100206770701 0
		 -1.4438578266562697e-08 0.97544100206770623 -0.22026087143464662 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 2.6469779798912112e-23 0.58753788738813162 -8.2255304234339235 1;
	setAttr ".bpm[13]" -type "matrix" -1.4378718103622074e-08 -0.17200102348021096 -0.98509677084120129 0
		 -1.3747775134372635e-08 0.98509677084120051 -0.17200102348021085 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 6.617444920145744e-23 0.056858505231103695 -10.575681972986462 1;
	setAttr ".bpm[14]" -type "matrix" -1.3991132625735986e-08 -0.19930915164897561 -0.9799366622741329 0
		 -1.4142031795246741e-08 0.97993666227413212 -0.19930915164897553 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 1.3896634310612388e-22 -0.36010386646370363 -12.963739192693081 1;
	setAttr ".bpm[15]" -type "matrix" -1.4037123407791925e-08 -0.19611613513823073 -0.98058067569091201 0
		 -1.4096383290870172e-08 0.98058067569091123 -0.19611613513823065 0 1.0000000000000002 1.1069734749389114e-08 -1.6529060185305121e-08 0
		 7.2791894101881662e-23 -0.81497190831258148 -15.200173731783408 1;
	setAttr ".bpm[16]" -type "matrix" 1.9329193776936785e-08 -0.7371541402007421 0.67572462851734649 0
		 1.4901161218796575e-08 0.67572462851734616 0.73715414020074266 0 -1.0000000000000002 -4.1795136787870844e-09 2.4045664989598262e-08 0
		 1.1911400840485121e-22 -1.2319342800073911 -17.284985590257435 1;
	setAttr ".bpm[17]" -type "matrix" -1.2667002982303321e-08 0.96265094015389852 0.2707455769182866 0
		 -5.2551518788533886e-08 -0.27074557691828671 0.96265094015389763 0 0.99999999999999878 -2.0341888540631559e-09 5.4018303979663585e-08 0
		 -2.5947600000000004 0.73916099999999962 -3.0324499999999999 1;
	setAttr ".bpm[18]" -type "matrix" 3.5320262561514551e-08 -0.73189397443135062 -0.68141852791884183 0
		 6.6701824446060832e-08 -0.6814185279188385 0.7318939744313514 0 -0.99999999999999745 -7.1302546456065588e-08 2.4750782094178785e-08 0
		 -2.59476 -0.47382100000000038 -3.3735999999999997 1;
	setAttr ".bpm[19]" -type "matrix" -1.9332179800939362e-16 0.99978305672811218 -0.020828813681835534 0
		 -1.9915792776062068e-16 -0.020828813681835479 -0.99978305672811207 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 -1.94729 1.1561199999999998 4.0559100000000008 1;
	setAttr ".bpm[20]" -type "matrix" 1.2325951644078309e-31 -0.73189397443135007 -0.6814185279188425 0
		 2.7755575615628904e-16 -0.68141852791884261 0.73189397443135007 0 -1 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 -1.9472899999999997 -0.66334899999999997 4.0938100000000004 1;
	setAttr ".gm" -type "matrix" 1.4633069404788532 0 0 0 0 1.4134459655965648 0.37873170502662795 0
		 0 -0.37873170502662795 1.4134459655965648 0 0 3.6375109155348335 6.1345859709049826 1;
	setAttr -s 21 ".pm";
	setAttr -s 21 ".lm";
	setAttr ".lm[0]" -type "matrix" 0.30497635013929925 -0.46039831304169404 0.83368028596343446 0
		 -0.46039831304169404 0.69502245471197877 0.55224739093498465 0 -0.83368028596343446 -0.55224739093498465 -1.1951487219885593e-06 0
		 0.51197527084436223 0.3391432091023826 7.3395833016227173e-07 1;
	setAttr ".lm[1]" -type "matrix" 0.059703177771534971 0.30749363924005352 1.613282391102663 0
		 0.11325537330835057 0.58330742519837664 -0.11537039620756633 0 -0.98166754237880083 0.19060124931375808 -4.4408920985006257e-16 0
		 1.6069295545629334 -0.31200255426262058 4.8911316087041808e-16 1;
	setAttr ".lm[2]" -type "matrix" 1.3888428336036751 2.4945766158640747e-15 2.9945626585037783e-16 0
		 1.2633499811759369e-15 -0.6833802710957072 -0.16646879479971147 0 -2.1561566118562819e-16 0.2366752812447519 -0.97158880769990219 0
		 -1.7104922067509018e-16 0.2242607230824451 -0.77076733415311716 1;
	setAttr ".lm[3]" -type "matrix" -2.2204460492503131e-16 3.4656684130204948e-15 1 0
		 3.4656684130204948e-15 1 -3.4656684130204944e-15 0 -1 3.4656684130204944e-15 -2.2204460492503131e-16 0
		 0.82515343045009804 -2.859708179806408e-15 2.1597476827971255e-16 1;
	setAttr ".lm[4]" -type "matrix" 0.0010192554598134618 0.057235114282332418 3.2144813893391082 0
		 0.086221738436699502 0.83279636126474155 -0.014855608449601976 0 -0.99468481243488915 0.10295542870749241 -0.00151776514195201 0
		 -1.7868764096796683 -0.13213853204409132 6.9443417405464424e-16 1;
	setAttr ".lm[5]" -type "matrix" -2.2204460492503131e-16 0 1 0 -0 1 0 0 -1 -0 -2.2204460492503131e-16 0
		 -0.085412393060991909 0 -4.5101204944651634e-17 1;
	setAttr ".lm[6]" -type "matrix" 0.48513339873164085 -0.49977893529712475 -0.71754205540048921 0
		 -0.49977893529712419 0.51486660126835804 -0.69651518198215889 0 0.71754205540048932 0.69651518198215978 -2.2204460492503131e-16 0
		 0.087998988460306474 0.085420263523739437 -0.32925075767627648 1;
	setAttr ".lm[7]" -type "matrix" -3.5327908922597733e-16 4.5913887278319723e-16 1.5910275745958997 0
		 3.1407909285168497e-16 1.0883602477437284 -3.1407909285168492e-16 0 -1 2.8858008504334843e-16 -2.2204460492503131e-16 0
		 0.89529882357056456 -2.583654106452034e-16 1.2468696416765522e-16 1;
	setAttr ".lm[8]" -type "matrix" 0.62049819464993505 0.48526308899079623 -0.61603711324828647 0
		 0.48526308899079634 0.37950159335955003 0.78771712886078171 0 0.61603711324828625 -0.78771712886078171 -2.1199051492004628e-07 0
		 0.088083930859987086 -0.11263156005316155 -3.0311417058401965e-08 1;
	setAttr ".lm[9]" -type "matrix" 1.2666131740522433e-08 -9.4487963843256711e-07 -0.99999999999955336 0
		 -9.0722928147712878e-07 -0.99999999999914202 9.4487962672354512e-07 0 0.99999999999958833 -9.0722926965325357e-07 1.266698916584804e-08 0
		 -0.14915373912836921 -3.2251326378407441e-06 -4.6361401251360235e-07 1;
	setAttr ".lm[10]" -type "matrix" -0.20959173580809265 0.40701723675920465 -0.88904908371914582 0
		 0.79701175980014294 -1.5477589918423231 -0.89647656222840089 0 0.88904905970348591 0.45781193676044196 1.5537734781314729e-08 0
		 -0.099854054438806017 -0.051424475572025674 4.5997950959275613e-07 1;
	setAttr ".lm[11]" -type "matrix" -5.2032647694406593e-08 9.5375785015106009e-16 3.9479414948877118 0
		 4.3511554853234442e-16 1.8010973423176511 -4.3511554279765608e-16 0 -0.99999999999999989 2.4158357939596405e-16 -1.3179690672160405e-08 0
		 1.0484164081543192 -2.5328018857938044e-16 1.3817804309858235e-08 1;
	setAttr ".lm[12]" -type "matrix" 3.2857103026436187e-08 0 2.4009761495277684 0 -0 2.2785569477551793 0 0
		 -0.99999999999999967 -0 1.3684893551690889e-08 0 0.85376486954567632 1.4762158405129112e-15 1.1683681465874743e-08 1;
	setAttr ".lm[13]" -type "matrix" -3.3868473605405031e-08 -1.4287280816172877e-15 2.3554585060682118 0
		 -1.2897450228086105e-15 2.1263254524925426 1.2897450042637307e-15 0 -0.99999999999999989 -6.0656048807197085e-16 -1.4378717994034673e-08 0
		 0.97067456902169647 5.8877284034485023e-16 1.395705602477425e-08 1;
	setAttr ".lm[14]" -type "matrix" -4.6632411426099288e-08 -5.7480250542475815e-16 3.332997580432969 0
		 -4.0953691622299646e-16 2.3747035511972103 4.0953691049311114e-16 0 -0.99999999999999989 -1.7245812020900146e-16 -1.3991132696844488e-08 0
		 1.0119935533105833 1.7452650586757114e-16 1.4158936011576754e-08 1;
	setAttr ".lm[15]" -type "matrix" -5.6839433237191558e-08 -1.8347073571858271e-13 4.0492223555425406 0
		 -1.795380869529034e-13 3.9624282996070441 1.7953808443270518e-13 0 -0.99999999999999989 -4.5310115630485993e-14 -1.4037123241550375e-08 0
		 0.57110928861795995 2.5877027904924361e-14 8.0167316454481835e-09 1;
	setAttr ".lm[16]" -type "matrix" 5.0776922113514535 -3.0752221391551071 3.5952388239816075 0
		 -3.0061609959126701 1.8206325614303818 5.8030108308872688 0 -0.51803469183525253 -0.8553596074489106 -2.2759044204789802e-08 0
		 -0.37891337105765266 -0.62564765918822096 -1.6646966501675111e-08 1;
	setAttr ".lm[17]" -type "matrix" -1.2666131921079682e-08 9.0722928092770139e-07 0.99999999999958833 0
		 9.0722928092770139e-07 0.99999999999917688 -9.0722926943624235e-07 0 -0.99999999999958833 9.0722926943624235e-07 -1.2666955040430139e-08 0
		 0.14915234524617402 -1.3531537321244435e-07 1.8893060612323318e-09 1;
	setAttr ".lm[18]" -type "matrix" 0.20959172048377284 -0.40701729710787404 0.88904905970348602 0
		 -0.79701177525248712 1.5477589309894737 0.89647665355241568 0 -0.88904905970348602 -0.45781193676043824 -6.1938337125866383e-08 0
		 0.099857128673386988 0.051420993001833476 6.9568539921250988e-09 1;
	setAttr ".lm[19]" -type "matrix" 9.4790841842495865e-12 3.0787750255147538e-06 -0.99999999999526046 0
		 3.0787750255147538e-06 0.99999999999052114 3.078775025529346e-06 0 0.99999999999526046 -3.078775025529346e-06 2.2204460492503131e-16 0
		 0.085414154630206407 -2.6297096610342801e-07 3.3203351176851808e-16 1;
	setAttr ".lm[20]" -type "matrix" -0.48513339873164046 0.49977893529712419 0.71754205540048954 0
		 0.49977893529712408 -0.51486660126835893 0.69651518198215856 0 -0.71754205540048932 -0.69651518198215945 -2.5455389251808001e-16 0
		 -0.088000441297222842 -0.085418368918860565 0.32925434093797201 1;
	setAttr ".otw" -type "doubleArray" 428 0.99895668029785156 0.98707425594329834
		 0.93687671422958374 0.87516504526138306 0.99809360504150391 0.5334094762802124 0.081090986728668213
		 0.43702608346939087 0.99999368190765381 0.066508293151855469 0 0.53512179851531982
		 1 1 1 1 1 1 0.9926372766494751 0.23899340629577637 0.12316203117370605 0.84146386384963989
		 0.9067038893699646 0.99636191129684448 0.019215822219848633 0 0.81869041919708252
		 0.84082579612731934 0.9451906681060791 0.67729669809341431 0.71568578481674194 1
		 0.99135923385620117 0.98589074611663818 0.016763091087341309 0 0.35277307033538818
		 0.4737359881401062 0.72207915782928467 0.891013503074646 0.9836963415145874 1 0.97291380167007446
		 0.97321343421936035 0.42049092054367065 0 0.2473597526550293 0.24788868427276611
		 0.46020454168319702 0.73018300533294678 0.86649972200393677 0.85989320278167725 0.77896201610565186
		 0.63257485628128052 0.45793813467025757 0.085392653942108154 0.20013707876205444
		 0.25703072547912598 0.98156780004501343 0.44654327630996704 0.44439965486526489 0
		 0.14869701862335205 0 0 0 0.0023401379585266113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.41501259803771973 0.42075055837631226 0.12337678670883179
		 0.10135388374328613 0.61368513107299805 0.72776401042938232 0.79403603076934814 0.95554423332214355
		 0.85442310571670532 0.99745291471481323 0.84897470474243164 1 0.80484998226165771
		 0.91509032249450684 0.82444775104522705 0.9107511043548584 0.25111937522888184 0.17672020196914673
		 0.84278804063796997 0.53150355815887451 0.62167149782180786 1 0.97878789901733398
		 0.95939183235168457 0.68192458152770996 0.96972721815109253 0.99493324756622314 0.15288102626800537
		 0.2142333984375 0.99990487098693848 0.82715487480163574 0.46433049440383911 0.94818472862243652
		 0.5254364013671875 0.57502484321594238 1 0.9965355396270752 ;
	setAttr -s 3 ".fc[0:2]"  0 1 2 0.5 1 2 1 0 2;
	setAttr ".ci" 1;
createNode animCurveTL -n "tweak1_vlist_0__vertex_332__xVertex";
	rename -uid "F162B570-434C-7AD7-C87C-F98FF62728BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_332__yVertex";
	rename -uid "D7C34C94-D34B-F584-601A-8E9B01CA7102";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_332__zVertex";
	rename -uid "35E0DAC7-F448-5D57-04C7-C1B3CD94C3C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_333__xVertex";
	rename -uid "84E3B5CF-D048-1BFF-D8B4-9D8A029D5F7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_333__yVertex";
	rename -uid "1E9A5C4A-8C43-4811-1721-459E02DA8108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_333__zVertex";
	rename -uid "37AF7929-1441-8CC2-D84C-5F9A6E5F7067";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_334__xVertex";
	rename -uid "6B474EDF-9343-FE12-26B9-C885021A9538";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_334__yVertex";
	rename -uid "DE80E078-2140-FF6A-0B7F-56AE1B11471B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_334__zVertex";
	rename -uid "CC646540-A94E-B331-858F-529A2D6ECD33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_335__xVertex";
	rename -uid "10C12D29-AD4A-39CF-60B1-E9A24EAEAD42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_335__yVertex";
	rename -uid "DFF472C8-9847-71C3-B5DA-B284464ACDF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_335__zVertex";
	rename -uid "A8CB8F22-FD49-A9F4-1B27-D6A04A9C3DFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_336__xVertex";
	rename -uid "AFA561C6-BE44-D6E7-C21A-A4BD73B91279";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_336__yVertex";
	rename -uid "5F311691-CC41-A425-DAD1-0FB92E8418BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_336__zVertex";
	rename -uid "6A21B47A-B04E-B24E-D24C-D6863F5BDEED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_337__xVertex";
	rename -uid "54AEE411-804D-B050-A992-F19942249EE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_337__yVertex";
	rename -uid "7DCCAB5C-8943-33D8-C2ED-0E841113B425";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_337__zVertex";
	rename -uid "E1E94152-FE4E-8474-76D6-FA8AFC2EC72F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_352__xVertex";
	rename -uid "70E03CBD-6A48-1E36-983C-BA8147DF5BE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.3322676295501878e-15;
createNode animCurveTL -n "tweak1_vlist_0__vertex_352__yVertex";
	rename -uid "43C88BF0-7648-2C89-DF89-44AC6AFC72FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_352__zVertex";
	rename -uid "7027DBF9-1B4B-C5C4-85B4-3A806D6D6DF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_353__xVertex";
	rename -uid "27980D4E-CF4E-3515-EBD3-C5AC9C878F88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_353__yVertex";
	rename -uid "53250F18-A643-7FE1-7090-8D9C165F8877";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_353__zVertex";
	rename -uid "973573B2-6C46-0F0F-533C-828AE85B0FFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_354__xVertex";
	rename -uid "A885140D-D24B-14B0-FF97-A2A4F8932966";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_354__yVertex";
	rename -uid "7E5DA304-4744-1613-071B-D791511E65DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_354__zVertex";
	rename -uid "C741667B-3D49-EA39-C904-1BB8C5CE7CE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_355__xVertex";
	rename -uid "6C0D58B6-4F4D-6C4F-9248-14A0EC1396E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.3322676295501878e-15;
createNode animCurveTL -n "tweak1_vlist_0__vertex_355__yVertex";
	rename -uid "28F08405-9147-8A21-99F6-FFB6C0EEA675";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_355__zVertex";
	rename -uid "663306C4-584E-2250-F6A0-A289CC7439D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_356__xVertex";
	rename -uid "76C4E8C5-8543-8882-3563-A79FD699A387";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_356__yVertex";
	rename -uid "ED58F529-3E4F-6558-7470-588386D2CDC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_356__zVertex";
	rename -uid "F07D93B7-9446-BF78-1B56-579AE8BD3B63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_357__xVertex";
	rename -uid "DEC2CED7-B043-F980-BE2F-3F918BEEBCA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tweak1_vlist_0__vertex_357__yVertex";
	rename -uid "E4B59E93-904C-59C0-F94B-BAB17EB3306B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9802322387695312e-08;
createNode animCurveTL -n "tweak1_vlist_0__vertex_357__zVertex";
	rename -uid "96CA0D00-604F-755B-03F6-0BAC13DD009B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
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
connectAttr "skinCluster1.og[0]" "pSphereShape1.i";
connectAttr "skinCluster1GroupId.id" "pSphereShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pSphereShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pSphereShape1.iog.og[1].gco";
connectAttr "tweak1.vl[0].vt[0]" "pSphereShape1.twl";
connectAttr "polySplit4.out" "pSphereShape1Orig.i";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint2.s" "joint16.is";
connectAttr "joint16.s" "joint17.is";
connectAttr "joint1.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint1.s" "joint6.is";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8.s" "joint9.is";
connectAttr "joint7.s" "joint10.is";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint11.s" "joint12.is";
connectAttr "joint12.s" "joint13.is";
connectAttr "joint13.s" "joint14.is";
connectAttr "joint14.s" "joint15.is";
connectAttr "joint7.s" "joint20.is";
connectAttr "joint20.s" "joint21.is";
connectAttr "joint1.s" "joint18.is";
connectAttr "joint18.s" "joint19.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyTriangulate1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTriangulate1.out" "polyTriangulate2.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTriangulate2.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyQuad1.ip";
connectAttr "pSphereShape1.wm" "polyQuad1.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyQuad1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyTweak8.out" "polyMergeVert1.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert1.mp";
connectAttr "polySplit2.out" "polyTweak8.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweak9.out" "polyTriangulate3.ip";
connectAttr "polyMergeVert2.out" "polyTweak9.ip";
connectAttr "polyTriangulate3.out" "polyExtrudeFace8.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace9.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace10.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace11.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak13.out" "polyMergeVert3.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert3.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace13.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyMergeVert3.out" "polyTweak14.ip";
connectAttr "polyExtrudeFace13.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint16.wm" "skinCluster1.ma[3]";
connectAttr "joint17.wm" "skinCluster1.ma[4]";
connectAttr "joint4.wm" "skinCluster1.ma[5]";
connectAttr "joint5.wm" "skinCluster1.ma[6]";
connectAttr "joint6.wm" "skinCluster1.ma[7]";
connectAttr "joint7.wm" "skinCluster1.ma[8]";
connectAttr "joint8.wm" "skinCluster1.ma[9]";
connectAttr "joint9.wm" "skinCluster1.ma[10]";
connectAttr "joint10.wm" "skinCluster1.ma[11]";
connectAttr "joint11.wm" "skinCluster1.ma[12]";
connectAttr "joint12.wm" "skinCluster1.ma[13]";
connectAttr "joint13.wm" "skinCluster1.ma[14]";
connectAttr "joint14.wm" "skinCluster1.ma[15]";
connectAttr "joint15.wm" "skinCluster1.ma[16]";
connectAttr "joint20.wm" "skinCluster1.ma[17]";
connectAttr "joint21.wm" "skinCluster1.ma[18]";
connectAttr "joint18.wm" "skinCluster1.ma[19]";
connectAttr "joint19.wm" "skinCluster1.ma[20]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint16.liw" "skinCluster1.lw[3]";
connectAttr "joint17.liw" "skinCluster1.lw[4]";
connectAttr "joint4.liw" "skinCluster1.lw[5]";
connectAttr "joint5.liw" "skinCluster1.lw[6]";
connectAttr "joint6.liw" "skinCluster1.lw[7]";
connectAttr "joint7.liw" "skinCluster1.lw[8]";
connectAttr "joint8.liw" "skinCluster1.lw[9]";
connectAttr "joint9.liw" "skinCluster1.lw[10]";
connectAttr "joint10.liw" "skinCluster1.lw[11]";
connectAttr "joint11.liw" "skinCluster1.lw[12]";
connectAttr "joint12.liw" "skinCluster1.lw[13]";
connectAttr "joint13.liw" "skinCluster1.lw[14]";
connectAttr "joint14.liw" "skinCluster1.lw[15]";
connectAttr "joint15.liw" "skinCluster1.lw[16]";
connectAttr "joint20.liw" "skinCluster1.lw[17]";
connectAttr "joint21.liw" "skinCluster1.lw[18]";
connectAttr "joint18.liw" "skinCluster1.lw[19]";
connectAttr "joint19.liw" "skinCluster1.lw[20]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint16.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint17.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[10]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[11]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[12]";
connectAttr "joint12.obcc" "skinCluster1.ifcl[13]";
connectAttr "joint13.obcc" "skinCluster1.ifcl[14]";
connectAttr "joint14.obcc" "skinCluster1.ifcl[15]";
connectAttr "joint15.obcc" "skinCluster1.ifcl[16]";
connectAttr "joint20.obcc" "skinCluster1.ifcl[17]";
connectAttr "joint21.obcc" "skinCluster1.ifcl[18]";
connectAttr "joint18.obcc" "skinCluster1.ifcl[19]";
connectAttr "joint19.obcc" "skinCluster1.ifcl[20]";
connectAttr "skinBinding1.uw" "skinCluster1.bc";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "tweak1_vlist_0__vertex_332__xVertex.o" "tweak1.vl[0].vt[332].vx";
connectAttr "tweak1_vlist_0__vertex_332__yVertex.o" "tweak1.vl[0].vt[332].vy";
connectAttr "tweak1_vlist_0__vertex_332__zVertex.o" "tweak1.vl[0].vt[332].vz";
connectAttr "tweak1_vlist_0__vertex_333__xVertex.o" "tweak1.vl[0].vt[333].vx";
connectAttr "tweak1_vlist_0__vertex_333__yVertex.o" "tweak1.vl[0].vt[333].vy";
connectAttr "tweak1_vlist_0__vertex_333__zVertex.o" "tweak1.vl[0].vt[333].vz";
connectAttr "tweak1_vlist_0__vertex_334__xVertex.o" "tweak1.vl[0].vt[334].vx";
connectAttr "tweak1_vlist_0__vertex_334__yVertex.o" "tweak1.vl[0].vt[334].vy";
connectAttr "tweak1_vlist_0__vertex_334__zVertex.o" "tweak1.vl[0].vt[334].vz";
connectAttr "tweak1_vlist_0__vertex_335__xVertex.o" "tweak1.vl[0].vt[335].vx";
connectAttr "tweak1_vlist_0__vertex_335__yVertex.o" "tweak1.vl[0].vt[335].vy";
connectAttr "tweak1_vlist_0__vertex_335__zVertex.o" "tweak1.vl[0].vt[335].vz";
connectAttr "tweak1_vlist_0__vertex_336__xVertex.o" "tweak1.vl[0].vt[336].vx";
connectAttr "tweak1_vlist_0__vertex_336__yVertex.o" "tweak1.vl[0].vt[336].vy";
connectAttr "tweak1_vlist_0__vertex_336__zVertex.o" "tweak1.vl[0].vt[336].vz";
connectAttr "tweak1_vlist_0__vertex_337__xVertex.o" "tweak1.vl[0].vt[337].vx";
connectAttr "tweak1_vlist_0__vertex_337__yVertex.o" "tweak1.vl[0].vt[337].vy";
connectAttr "tweak1_vlist_0__vertex_337__zVertex.o" "tweak1.vl[0].vt[337].vz";
connectAttr "tweak1_vlist_0__vertex_352__xVertex.o" "tweak1.vl[0].vt[352].vx";
connectAttr "tweak1_vlist_0__vertex_352__yVertex.o" "tweak1.vl[0].vt[352].vy";
connectAttr "tweak1_vlist_0__vertex_352__zVertex.o" "tweak1.vl[0].vt[352].vz";
connectAttr "tweak1_vlist_0__vertex_353__xVertex.o" "tweak1.vl[0].vt[353].vx";
connectAttr "tweak1_vlist_0__vertex_353__yVertex.o" "tweak1.vl[0].vt[353].vy";
connectAttr "tweak1_vlist_0__vertex_353__zVertex.o" "tweak1.vl[0].vt[353].vz";
connectAttr "tweak1_vlist_0__vertex_354__xVertex.o" "tweak1.vl[0].vt[354].vx";
connectAttr "tweak1_vlist_0__vertex_354__yVertex.o" "tweak1.vl[0].vt[354].vy";
connectAttr "tweak1_vlist_0__vertex_354__zVertex.o" "tweak1.vl[0].vt[354].vz";
connectAttr "tweak1_vlist_0__vertex_355__xVertex.o" "tweak1.vl[0].vt[355].vx";
connectAttr "tweak1_vlist_0__vertex_355__yVertex.o" "tweak1.vl[0].vt[355].vy";
connectAttr "tweak1_vlist_0__vertex_355__zVertex.o" "tweak1.vl[0].vt[355].vz";
connectAttr "tweak1_vlist_0__vertex_356__xVertex.o" "tweak1.vl[0].vt[356].vx";
connectAttr "tweak1_vlist_0__vertex_356__yVertex.o" "tweak1.vl[0].vt[356].vy";
connectAttr "tweak1_vlist_0__vertex_356__zVertex.o" "tweak1.vl[0].vt[356].vz";
connectAttr "tweak1_vlist_0__vertex_357__xVertex.o" "tweak1.vl[0].vt[357].vx";
connectAttr "tweak1_vlist_0__vertex_357__yVertex.o" "tweak1.vl[0].vt[357].vy";
connectAttr "tweak1_vlist_0__vertex_357__zVertex.o" "tweak1.vl[0].vt[357].vz";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pSphereShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pSphereShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pSphereShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint16.msg" "bindPose1.m[3]";
connectAttr "joint17.msg" "bindPose1.m[4]";
connectAttr "joint4.msg" "bindPose1.m[5]";
connectAttr "joint5.msg" "bindPose1.m[6]";
connectAttr "joint6.msg" "bindPose1.m[7]";
connectAttr "joint7.msg" "bindPose1.m[8]";
connectAttr "joint8.msg" "bindPose1.m[9]";
connectAttr "joint9.msg" "bindPose1.m[10]";
connectAttr "joint10.msg" "bindPose1.m[11]";
connectAttr "joint11.msg" "bindPose1.m[12]";
connectAttr "joint12.msg" "bindPose1.m[13]";
connectAttr "joint13.msg" "bindPose1.m[14]";
connectAttr "joint14.msg" "bindPose1.m[15]";
connectAttr "joint15.msg" "bindPose1.m[16]";
connectAttr "joint20.msg" "bindPose1.m[17]";
connectAttr "joint21.msg" "bindPose1.m[18]";
connectAttr "joint18.msg" "bindPose1.m[19]";
connectAttr "joint19.msg" "bindPose1.m[20]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[1]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[0]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[0]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[8]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[8]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[0]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint16.bps" "bindPose1.wm[3]";
connectAttr "joint17.bps" "bindPose1.wm[4]";
connectAttr "joint4.bps" "bindPose1.wm[5]";
connectAttr "joint5.bps" "bindPose1.wm[6]";
connectAttr "joint6.bps" "bindPose1.wm[7]";
connectAttr "joint7.bps" "bindPose1.wm[8]";
connectAttr "joint8.bps" "bindPose1.wm[9]";
connectAttr "joint9.bps" "bindPose1.wm[10]";
connectAttr "joint10.bps" "bindPose1.wm[11]";
connectAttr "joint11.bps" "bindPose1.wm[12]";
connectAttr "joint12.bps" "bindPose1.wm[13]";
connectAttr "joint13.bps" "bindPose1.wm[14]";
connectAttr "joint14.bps" "bindPose1.wm[15]";
connectAttr "joint15.bps" "bindPose1.wm[16]";
connectAttr "joint20.bps" "bindPose1.wm[17]";
connectAttr "joint21.bps" "bindPose1.wm[18]";
connectAttr "joint18.bps" "bindPose1.wm[19]";
connectAttr "joint19.bps" "bindPose1.wm[20]";
connectAttr "skinCluster1GroupParts.og" "skinBinding1.ig";
connectAttr "joint1.wm" "skinBinding1.pm[0]";
connectAttr "joint2.wm" "skinBinding1.pm[1]";
connectAttr "joint3.wm" "skinBinding1.pm[2]";
connectAttr "joint16.wm" "skinBinding1.pm[3]";
connectAttr "joint17.wm" "skinBinding1.pm[4]";
connectAttr "joint4.wm" "skinBinding1.pm[5]";
connectAttr "joint5.wm" "skinBinding1.pm[6]";
connectAttr "joint6.wm" "skinBinding1.pm[7]";
connectAttr "joint7.wm" "skinBinding1.pm[8]";
connectAttr "joint8.wm" "skinBinding1.pm[9]";
connectAttr "joint9.wm" "skinBinding1.pm[10]";
connectAttr "joint10.wm" "skinBinding1.pm[11]";
connectAttr "joint11.wm" "skinBinding1.pm[12]";
connectAttr "joint12.wm" "skinBinding1.pm[13]";
connectAttr "joint13.wm" "skinBinding1.pm[14]";
connectAttr "joint14.wm" "skinBinding1.pm[15]";
connectAttr "joint15.wm" "skinBinding1.pm[16]";
connectAttr "joint20.wm" "skinBinding1.pm[17]";
connectAttr "joint21.wm" "skinBinding1.pm[18]";
connectAttr "joint18.wm" "skinBinding1.pm[19]";
connectAttr "joint19.wm" "skinBinding1.pm[20]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of animal1.ma
