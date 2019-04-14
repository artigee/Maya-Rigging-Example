//Maya ASCII 2018 scene
//Name: fnt_quadleg.ma
//Last modified: Sat, Apr 13, 2019 07:25:31 AM
//Codeset: 949
requires maya "2018";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "vrayBuild" "3.52.03 b05f456";
createNode transform -s -n "persp";
	rename -uid "C3274E77-4367-6307-CB57-BEB64F723D12";
	setAttr ".t" -type "double3" 47.908386632056164 9.5981826547658322 1.8954123496602826 ;
	setAttr ".r" -type "double3" -3.3767123287650507 -272.40000000000049 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "734CF0CA-4915-B599-A99C-32819C12FDD6";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 0.493 0.292 ;
	setAttr ".fl" 25;
	setAttr ".coi" 48.588035228265056;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.00739770579500032 1.0000000000000222 1.520106375570311 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dgm" no;
createNode transform -s -n "top";
	rename -uid "852CA174-4D98-7D7E-BE9F-2FBFFA728660";
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "734B8864-4712-9BBA-11EB-FD82A9B012B6";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B2B40B11-4D8B-047B-1202-79A941BF61C1";
	setAttr ".t" -type "double3" 3.4115465080834295 5.6608962174916062 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5A2A3290-4071-6A61-9FA1-78AD0EA93EDD";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30.227322459898172;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "B3DAD06F-451A-2F7C-F342-00B7D43A201F";
	setAttr ".t" -type "double3" 100.1 5.7496620945089782 -0.059451481641897175 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7D7A61E7-483B-9F65-689C-07BFD3A33CB7";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 40.355912029882759;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "fnt_quad_rig";
	rename -uid "DD1097F8-4C39-87B8-34C9-A8BE9076845D";
createNode transform -n "fnt_quad_rig_ik" -p "fnt_quad_rig";
	rename -uid "E6534A97-4B29-3868-201B-98A298BE8822";
	setAttr ".t" -type "double3" 5.4615751371440003e-16 1.0000000000000018 -1.3322676295501878e-15 ;
createNode transform -n "fnt_quad_rig_ik_jnts" -p "fnt_quad_rig_ik";
	rename -uid "C8916A1B-48E0-F6C6-B27D-D8BEDE4EC43A";
createNode transform -n "fnt_quad_rig_ik_jnts_lift" -p "fnt_quad_rig_ik_jnts";
	rename -uid "7C98807E-4045-2264-B024-DA8A4EF98836";
createNode joint -n "fnt_shldr_jnt_ik" -p "fnt_quad_rig_ik_jnts_lift";
	rename -uid "3357B344-4F81-E4B6-1D41-ADA6D62E24F8";
	setAttr ".r" -type "double3" -0.00066394653643857206 -0.023717746453021386 3.2069995853521576 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -26.565051177078001 -89.999999999999986 ;
	setAttr ".radi" 0.67959323905170255;
createNode joint -n "fnt_upleg_jnt_ik" -p "fnt_shldr_jnt_ik";
	rename -uid "BA17DE1C-4226-7731-27FD-35B33539B2F7";
	setAttr ".t" -type "double3" 4.4721359549995814 -4.4408920985006262e-16 -2.4651903288156619e-32 ;
	setAttr ".r" -type "double3" -0.015182706097721071 0.043667155089427374 -2.2840831786421365 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -79.695153531234013 ;
	setAttr ".radi" 0.70689655172413801;
createNode joint -n "fnt_loleg_jnt_ik" -p "fnt_upleg_jnt_ik";
	rename -uid "42C5BD9D-419D-02F1-19D6-3CB252D67C1C";
	setAttr ".t" -type "double3" 5.0000000000000018 -2.6645352591003757e-15 2.7307875685720011e-16 ;
	setAttr ".r" -type "double3" -1.1799506130439758e-16 -2.9768695016525214e-17 0.97929897483164186 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -79.695153531234013 ;
	setAttr ".radi" 0.67959323905170232;
createNode joint -n "fnt_foot_jnt_ik" -p "fnt_loleg_jnt_ik";
	rename -uid "84D3BD1C-490E-8BB9-A3A3-CD85C1D03F93";
	setAttr ".t" -type "double3" 4.4721359549995787 -1.5543122344752192e-15 5.3884459162483511e-16 ;
	setAttr ".r" -type "double3" 0.049792066548451551 0.0055375955426013226 -6.4708677409788766 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 18.43494882292201 ;
	setAttr ".radi" 0.52142483943309115;
createNode joint -n "fnt_ball_jnt_ik" -p "fnt_foot_jnt_ik";
	rename -uid "6E34F79A-4751-35A5-AA20-69A467775F5F";
	setAttr ".t" -type "double3" 1.4142135623730951 -1.1102230246251565e-16 2.5104376323952263e-16 ;
	setAttr ".r" -type "double3" -2.6591294151233578e-06 -2.6591007629357894e-06 0.00038631092311735557 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 45.000000000000014 ;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "fnt_tip_jnt_ik" -p "fnt_ball_jnt_ik";
	rename -uid "40BBF655-46B9-5B1F-4C4A-F29419D19117";
	setAttr ".t" -type "double3" 3.0000000000000009 -4.4408920985006257e-16 6.979956919998818e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.60344827586206895;
createNode ikEffector -n "effector8" -p "fnt_ball_jnt_ik";
	rename -uid "316271E6-4765-927F-66B4-E5B8DF8DF136";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "fnt_foot_jnt_ik";
	rename -uid "36CC66E9-45C3-9055-4E16-66A262FDB664";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector4" -p "fnt_loleg_jnt_ik";
	rename -uid "760733FD-40F4-3F29-1D5B-9FA4473F1DB3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4721359549995787 -1.5543122344752192e-15 5.3884459162483511e-16 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector5" -p "fnt_loleg_jnt_ik";
	rename -uid "C6136946-4403-9D3D-961C-DE832716EE4E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector6" -p "fnt_shldr_jnt_ik";
	rename -uid "2467A8EA-4C59-5A90-5E1F-1B8C15EFA210";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "fnt_shldr_jnt_ik_spr" -p "fnt_quad_rig_ik_jnts_lift";
	rename -uid "FA81B9B0-4EB1-6EDC-551D-16BE151140FD";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.037838482733329487 -0.02371774645300535 3.206999585352067 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -26.565051177078001 -89.999999999999986 ;
	setAttr ".radi" 0.67959323905170255;
createNode joint -n "fnt_upleg_jnt_ik_spr" -p "fnt_shldr_jnt_ik_spr";
	rename -uid "480CD57F-4356-41DD-80C3-A188325EE57F";
	setAttr ".t" -type "double3" 4.4721359549995814 -4.4408920985006262e-16 -2.4651903288156619e-32 ;
	setAttr ".r" -type "double3" 0 0 -5.0751404210084212 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -79.695153531234013 ;
	setAttr ".radi" 0.70689655172413801;
createNode joint -n "fnt_loleg_jnt_ik_spr" -p "fnt_upleg_jnt_ik_spr";
	rename -uid "D0B1E1A4-40F9-7E3A-DE15-C09C33D97E24";
	setAttr ".t" -type "double3" 5.0000000000000018 -2.6645352591003757e-15 2.7307875685720011e-16 ;
	setAttr ".r" -type "double3" 0 0 -4.3501203608643566 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -79.695153531234013 ;
	setAttr ".radi" 0.67959323905170232;
createNode joint -n "fnt_foot_jnt_ik_spr" -p "fnt_loleg_jnt_ik_spr";
	rename -uid "CC1104B4-41B7-4570-6DAE-56A750BBA31F";
	setAttr ".t" -type "double3" 4.4721359549995787 -1.5543122344752192e-15 5.3884459162483511e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 18.43494882292201 ;
	setAttr ".radi" 0.52142483943309115;
createNode joint -n "fnt_ball_jnt_ik_spr" -p "fnt_foot_jnt_ik_spr";
	rename -uid "695119FE-4137-2363-840D-58B008CAC10F";
	setAttr ".t" -type "double3" 1.4142135623730951 -1.1102230246251565e-16 2.5104376323952263e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 45.000000000000014 ;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "fnt_tip_jnt_ik_spr" -p "fnt_ball_jnt_ik_spr";
	rename -uid "5E324573-433D-246A-E822-BD8F51A303F2";
	setAttr ".t" -type "double3" 3.0000000000000009 -4.4408920985006257e-16 6.979956919998818e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.60344827586206895;
createNode ikEffector -n "effector4" -p "fnt_loleg_jnt_ik_spr";
	rename -uid "BFC272F2-4B79-421C-F2FE-34B74CE263B7";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "fnt_upleg_jnt_ik_spr_ref" -p "fnt_upleg_jnt_ik_spr";
	rename -uid "1E307964-4E34-00AD-354A-168805F7DA5F";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode pointConstraint -n "fnt_quad_rig_ik_jnts_pointConstraint1" -p "fnt_quad_rig_ik_jnts";
	rename -uid "846672C8-4586-E154-ABF1-8A8DA3E2D747";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_leg_con_targetW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 12.000000000000004 0 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_shldr_lift" -p "fnt_quad_rig_ik";
	rename -uid "CE4A2BB6-4B2B-CF0E-8861-BBA68ED1187D";
	setAttr ".t" -type "double3" -5.4615751371440003e-16 -1.0000000000000018 1.3322676295501878e-15 ;
createNode transform -n "fnt_shldr_lift_blend_space" -p "fnt_shldr_lift";
	rename -uid "06BE7ED4-49C2-C394-0F1A-3E8DD50C8C68";
	setAttr ".t" -type "double3" 0 12.000000000000004 0 ;
createNode transform -n "fnt_shldr_lift_blend" -p "fnt_shldr_lift_blend_space";
	rename -uid "06C4A294-40BE-6DAA-C3AA-A2959F035790";
createNode pointConstraint -n "fnt_shldr_lift_blend_pointConstraint1" -p "fnt_shldr_lift_blend";
	rename -uid "3725C472-4EAD-8C4A-AA02-CB9AAC40A68D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_shldr_lift_initW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "fnt_shldr_lift_autoW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "fnt_shldr_lift_auto" -p "fnt_shldr_lift";
	rename -uid "06D9FD53-4DB7-382F-0585-678EA890A785";
createNode parentConstraint -n "fnt_shldr_lift_auto_parentConstraint1" -p "fnt_shldr_lift_auto";
	rename -uid "88037B04-4E19-F2FA-39BA-36877999ACAC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_shldr_lift_targetW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 12.000000000000004 0 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_shldr_lift_init" -p "fnt_shldr_lift";
	rename -uid "98CF7ABC-4732-EA42-1C7B-CF8473C766A9";
	setAttr ".t" -type "double3" 0 12.000000000000004 0 ;
createNode transform -n "fnt_quad_con" -p "fnt_quad_rig";
	rename -uid "AD5AE77E-4ADF-D650-EE57-2BBE583C4A01";
createNode transform -n "fnt_foot_con_space" -p "fnt_quad_con";
	rename -uid "78640DD4-459E-FC6C-A270-FB9A58386420";
createNode transform -n "fnt_foot_con" -p "fnt_foot_con_space";
	rename -uid "DCDAD83B-4D1D-FA96-B59A-A1BB5EAC071A";
	addAttr -ci true -sn "hipAutoLift" -ln "hipAutoLift" -nn "Hip Auto Lift" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "rollFntBk" -ln "rollFntBk" -nn "Roll Fnt Bk" -at "double";
	addAttr -ci true -sn "rollInOut" -ln "rollInOut" -nn "Roll In Out" -at "double";
	addAttr -ci true -sn "rollStartAngle" -ln "rollStartAngle" -nn "Roll Start Angle" 
		-at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -0.00739770579500032 2.2204460492503131e-14 0.96408546938997652 ;
	setAttr -k on ".hipAutoLift" 0.25;
	setAttr -k on ".rollFntBk";
	setAttr -k on ".rollInOut";
	setAttr -k on ".rollStartAngle" 30;
createNode nurbsCurve -n "fnt_foot_conShape" -p "fnt_foot_con";
	rename -uid "D6B57660-48C6-D795-C11F-60849047E3A4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-1 0 -1
		-1 0 4
		1 0 4
		1 0 -1
		-1 0 -1
		-1 2 -1
		1 2 -1
		1 0 -1
		;
createNode transform -n "fnt_foot_ikHandles" -p "fnt_foot_con";
	rename -uid "51A59D71-4E95-9208-7057-AD81C4FA9742";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4615751371440003e-16 1.0000000000000018 -1.3322676295501878e-15 ;
createNode ikHandle -n "bk_quad_ikHandle_spr" -p "fnt_foot_ikHandles";
	rename -uid "F08ECB98-46D8-6DB6-344E-1DBACAB9AD03";
	addAttr -ci true -h true -sn "srp" -ln "springRestPose" -dv 1 -at "long";
	addAttr -ci true -h true -sn "srpv" -ln "springRestPoleVector" -at "double3" -nc 
		3;
	addAttr -ci true -h true -sn "srpv0" -ln "springRestPoleVector0" -at "double" -p "springRestPoleVector";
	addAttr -ci true -h true -sn "srpv1" -ln "springRestPoleVector1" -at "double" -p "springRestPoleVector";
	addAttr -ci true -h true -sn "srpv2" -ln "springRestPoleVector2" -at "double" -p "springRestPoleVector";
	addAttr -ci true -m -sn "sab" -ln "springAngleBias" -at "compound" -nc 3;
	addAttr -ci true -sn "sbp" -ln "springAngleBias_Position" -at "float" -p "springAngleBias";
	addAttr -ci true -sn "sbfv" -ln "springAngleBias_FloatValue" -dv 1 -at "float" -p "springAngleBias";
	addAttr -ci true -sn "sbi" -ln "springAngleBias_Interp" -dv 3 -min 0 -max 3 -en 
		"None:Linear:Smooth:Spline" -at "enum" -p "springAngleBias";
	setAttr ".roc" yes;
	setAttr ".srpv" -type "double3" 1.1688277062882795e-16 -8.0743492700011338e-17 1 ;
	setAttr -s 2 ".sab[0:1]"  0 0.75 3 1 0.5 3;
	setAttr -l on ".sab[0].sbp";
	setAttr -l on ".sab[1].sbp";
createNode poleVectorConstraint -n "bk_quad_ikHandle_spr_poleVectorConstraint1" -p
		 "bk_quad_ikHandle_spr";
	rename -uid "D2AAE74F-4F54-0E6E-2D39-F0BABBB3494A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_knee_pole_con_targetW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.9650683064945472e-16 -4.0000000000000018 8 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "bk_quad_ikHandle_spr_pointConstraint1" -p "bk_quad_ikHandle_spr";
	rename -uid "EC020DF9-4552-F2D2-396E-89A5B90850A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_roll_footW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode ikHandle -n "fnt_quad_lo_ikHandle" -p "fnt_foot_ikHandles";
	rename -uid "20BC1328-4FCA-06F1-57EF-81A80143A90D";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "fnt_quad_lo_ikHandle_poleVectorConstraint1" -p
		 "fnt_quad_lo_ikHandle";
	rename -uid "1CFAFC2E-48B5-7163-9A8D-CE8C101B9D7C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_bk_knee_pole_targetW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.9650683064945305e-17 -3 -7.0000000000000009 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "fnt_quad_lo_ikHandle_pointConstraint1" -p "fnt_quad_lo_ikHandle";
	rename -uid "35FC406A-4827-992E-C8B5-B291B2B15503";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_roll_footW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -1.0447030098129963e-07 8.8817841970012523e-16 1.3322676295501878e-15 ;
	setAttr ".rst" -type "double3" -1.0447030098129963e-07 8.8817841970012523e-16 1.3322676295501878e-15 ;
	setAttr -k on ".w0";
createNode ikHandle -n "fnt_quad_tip_ikHandle" -p "fnt_foot_ikHandles";
	rename -uid "A986DE58-474E-1ABD-88FE-A4A419FDDC4E";
	setAttr ".r" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "fnt_quad_tip_ikHandle_pointConstraint1" -p "fnt_quad_tip_ikHandle";
	rename -uid "7087BB46-4457-7106-6630-AA94EED9A9E0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_roll_tipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.4545887984429083e-16 -1.0000000000000004 4.0000000000000036 ;
	setAttr -k on ".w0";
createNode ikHandle -n "fnt_quad_ball_ikHandle" -p "fnt_foot_ikHandles";
	rename -uid "14085376-4A8C-877D-693F-00A72A81DEC3";
	setAttr ".r" -type "double3" 89.999999999999972 -45.000000000000014 -89.999999999999972 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "fnt_quad_ball_ikHandle_pointConstraint1" -p "fnt_quad_ball_ikHandle";
	rename -uid "52DC2CD6-4077-799E-2AE5-F0B388E83443";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_roll_ballW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9860273225978171e-16 -1.0000000000000002 1.0000000000000004 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_shldr_lift_target_space" -p "fnt_foot_con";
	rename -uid "25EE045A-4195-116F-4531-4C8D9391C750";
createNode transform -n "fnt_shldr_lift_target" -p "fnt_shldr_lift_target_space";
	rename -uid "EB367884-480A-9EC6-49AF-73AB81A3B54B";
createNode pointConstraint -n "fnt_shldr_lift_target_space_pointConstraint1" -p "fnt_shldr_lift_target_space";
	rename -uid "4AE341B1-470B-7AEE-46DF-3AAE79FA0EB9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_foot_jnt_ik_sprW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -1.1246045314642646e-15 10.999998028454529 -5.3290705182007514e-15 ;
	setAttr ".rst" -type "double3" -5.784470177498646e-16 11.999998028454531 -6.6613381477509392e-15 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_roll_space" -p "fnt_foot_con";
	rename -uid "4211059C-4D7E-404B-0D87-DB8F93099BEC";
	setAttr ".v" no;
createNode transform -n "fnt_roll_tip" -p "fnt_roll_space";
	rename -uid "9DABFE49-4E84-FA5C-669A-C59B5E6C0D1D";
createNode locator -n "fnt_roll_tipShape" -p "fnt_roll_tip";
	rename -uid "ADE25BC5-40FE-C438-4486-1385D20217E5";
	setAttr -k off ".v";
createNode pointConstraint -n "fnt_roll_tip_pointConstraint1" -p "fnt_roll_tip";
	rename -uid "D243760D-438C-9D67-55E1-17A6E5AE7ED8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_tipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1916163935586909e-15 1.4432899320127035e-15 4.0000000000000018 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_roll_ball" -p "fnt_roll_space";
	rename -uid "1AD692D2-4522-30B8-3A98-739E13F2D35C";
createNode locator -n "fnt_roll_ballShape" -p "fnt_roll_ball";
	rename -uid "DFCAEE7C-4505-CA72-1444-EDB676F7D161";
	setAttr -k off ".v";
createNode pointConstraint -n "fnt_roll_ball_pointConstraint1" -p "fnt_roll_ball";
	rename -uid "4B77EC31-41EB-DA3B-7FAC-4AAFDDD61B9C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_ballW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 7.4476024597418174e-16 1.5543122344752192e-15 0.99999999999999911 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_roll_foot" -p "fnt_roll_space";
	rename -uid "57C57A21-4328-1F25-A470-13AB46229EF1";
createNode locator -n "fnt_roll_footShape" -p "fnt_roll_foot";
	rename -uid "CFC13A6D-467F-8BED-5A95-E8A687822B41";
	setAttr -k off ".v";
createNode pointConstraint -n "fnt_roll_foot_pointConstraint1" -p "fnt_roll_foot";
	rename -uid "E5037D17-4C90-9E78-A655-F685A7A53074";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_ankleW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 5.4615751371440003e-16 1.0000000000000018 -1.3322676295501878e-15 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_foot_roll_rig" -p "fnt_foot_con";
	rename -uid "3A89722F-492A-AECB-C7DD-6B9B6C94C394";
	setAttr ".v" no;
createNode transform -n "fnt_heel" -p "fnt_foot_roll_rig";
	rename -uid "7782345E-4F31-93DC-C587-31A3BCE56960";
	setAttr ".t" -type "double3" 0 0 -1 ;
createNode locator -n "fnt_heelShape" -p "fnt_heel";
	rename -uid "CE7B993E-46D6-78B5-0C81-C5A9BE6D7C3C";
	setAttr -k off ".v";
createNode transform -n "fnt_heel_piv_in" -p "fnt_heel";
	rename -uid "660AE83E-47D0-FA0C-A636-159F77F3D8C3";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode locator -n "fnt_heel_piv_inShape" -p "fnt_heel_piv_in";
	rename -uid "37F287B1-4F24-1A3C-B505-A1B6D58C47CF";
	setAttr -k off ".v";
createNode transform -n "fnt_heel_piv_out" -p "fnt_heel";
	rename -uid "7FA36D11-4224-55FE-BBF5-73BF516862CF";
	setAttr ".t" -type "double3" -1 0 0 ;
createNode locator -n "fnt_heel_piv_outShape" -p "fnt_heel_piv_out";
	rename -uid "89F55725-4026-8218-8489-99A906914F96";
	setAttr -k off ".v";
createNode transform -n "fnt_tip" -p "fnt_heel";
	rename -uid "195438C4-41E8-FB68-8DCA-1BBB3AAAE92C";
	setAttr ".t" -type "double3" 1.1916163935586909e-15 1.4432899320127035e-15 5.0000000000000018 ;
createNode locator -n "fnt_tipShape" -p "fnt_tip";
	rename -uid "9B170CE2-4982-D595-75D8-C6B53651BF2C";
	setAttr -k off ".v";
createNode transform -n "fnt_ball" -p "fnt_tip";
	rename -uid "A8AF4AD8-413E-FA39-E4DA-D982948CF1BC";
	setAttr ".t" -type "double3" -4.4685614758450912e-16 1.1102230246251565e-16 -3.0000000000000027 ;
createNode locator -n "fnt_ballShape" -p "fnt_ball";
	rename -uid "E3B1E2F7-4310-BF6D-0264-1B8A66B969BE";
	setAttr -k off ".v";
createNode transform -n "fnt_ankle" -p "fnt_ball";
	rename -uid "A13B4358-4B7F-36B4-C105-25AF946734E9";
	setAttr ".t" -type "double3" -1.9860273225978171e-16 1.0000000000000002 -1.0000000000000004 ;
createNode locator -n "fnt_ankleShape" -p "fnt_ankle";
	rename -uid "F1B2F7DB-408C-99F9-E2F2-849C0DD45F92";
	setAttr -k off ".v";
createNode transform -n "fnt_bk_knee_pole_con_space" -p "fnt_foot_con";
	rename -uid "F4F23552-4F18-00D2-22BC-7DBEED4B35AD";
	setAttr ".t" -type "double3" 5.4615751371440003e-16 5.0000000000000018 -5 ;
createNode transform -n "fnt_bk_knee_pole_con" -p "fnt_bk_knee_pole_con_space";
	rename -uid "E44EFF47-47BC-5F29-65A8-0D8223206FB6";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
createNode nurbsCurve -n "fnt_bk_knee_pole_conShape" -p "fnt_bk_knee_pole_con";
	rename -uid "0C09B9A3-4AE8-6AA1-66C4-FC823CF0EC1C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0 0 0.80000000000000004
		0 0.80000000000000004 0
		0 0 -0.80000000000000004
		0 -0.80000000000000004 0
		0 0 0.80000000000000004
		-0.80000000000000004 0 0
		0 0 -0.80000000000000004
		0.80000000000000004 0 0
		0 0 0.80000000000000004
		4.4373425918681914e-31 0.80000000000000004 4.4408920985006262e-16
		0.80000000000000004 0 0
		0 -0.80000000000000004 0
		-0.80000000000000004 0 0
		4.4373425918681914e-31 0.80000000000000004 4.4408920985006262e-16
		0 0 0.79999999999999982
		0.0012281134762314799 -0.25084301584519952 2.5619844899293271
		;
createNode transform -n "fnt_bk_knee_pole_target" -p "fnt_bk_knee_pole_con";
	rename -uid "C0375228-46B0-48FC-EF5D-5C9720B61D08";
createNode transform -n "fnt_knee_con_space" -p "fnt_quad_con";
	rename -uid "0763BD4A-442E-BBCE-DB58-92B6B5626F29";
createNode transform -n "fnt_knee_con" -p "fnt_knee_con_space";
	rename -uid "22DDFBE0-427E-7D3D-005D-FC9287EDAF1F";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
createNode nurbsCurve -n "fnt_knee_conShape" -p "fnt_knee_con";
	rename -uid "5DE3BBBE-477E-D277-7A69-39AD47C2122B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 1.5
		0 1.5 0
		0 0 -1.5
		0 -1.5 0
		0 0 1.5
		-1.5 0 0
		0 0 -1.5
		1.5 0 0
		0 0 1.5
		4.4373425918681914e-31 1.5 4.4408920985006262e-16
		1.5 0 0
		0 -1.5 0
		-1.5 0 0
		4.4373425918681914e-31 1.5 4.4408920985006262e-16
		;
createNode ikHandle -n "fnt_quad_up_ikHandle" -p "fnt_knee_con";
	rename -uid "ED0B569F-42E5-3177-2B3C-2C823FEC4A60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.3264726779256941e-23 0 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 90 -26.565051177078001 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "fnt_knee_con_space_pointConstraint1" -p "fnt_knee_con_space";
	rename -uid "3475E78F-4814-C93E-22E2-4580045501A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fnt_upleg_jnt_ik_spr_refW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -4.965068939141815e-16 0 0 ;
	setAttr ".rst" -type "double3" -6.3264726779256941e-23 8.0000000000000018 2.0000000000000013 ;
	setAttr -k on ".w0";
createNode transform -n "fnt_knee_pole_con_space" -p "fnt_quad_con";
	rename -uid "D1725AA4-4581-8131-EA9A-49805B0FF62E";
	setAttr ".t" -type "double3" 5.4615751371440003e-16 8.0000000000000018 8 ;
createNode transform -n "fnt_knee_pole_con" -p "fnt_knee_pole_con_space";
	rename -uid "C0BE7CAC-4EE5-DEED-725E-E5B0810CF0D0";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -4.9650683064945305e-17 0 0 ;
createNode nurbsCurve -n "fnt_knee_pole_conShape" -p "fnt_knee_pole_con";
	rename -uid "335E3C60-435E-7478-4DD0-A294049A688C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0 0 0.80000000000000004
		0 0.80000000000000004 0
		0 0 -0.80000000000000004
		0 -0.80000000000000004 0
		0 0 0.80000000000000004
		-0.80000000000000004 0 0
		0 0 -0.80000000000000004
		0.80000000000000004 0 0
		0 0 0.80000000000000004
		4.4373425918681914e-31 0.80000000000000004 4.4408920985006262e-16
		0.80000000000000004 0 0
		0 -0.80000000000000004 0
		-0.80000000000000004 0 0
		4.4373425918681914e-31 0.80000000000000004 4.4408920985006262e-16
		0 0 -0.79999999999999982
		-0.0018512529990201581 0.11815115384092856 -5.7793583961505011
		;
createNode transform -n "fnt_knee_pole_con_target" -p "fnt_knee_pole_con";
	rename -uid "3A182228-42CC-7352-4EC1-DCB0C58C2946";
createNode transform -n "fnt_leg_con_space" -p "fnt_quad_con";
	rename -uid "8ED0B489-4BC6-C889-C547-31BA41F2A22F";
	setAttr ".t" -type "double3" 0 12.000000000000004 0 ;
createNode transform -n "fnt_leg_con" -p "fnt_leg_con_space";
	rename -uid "2E3092F4-4404-E9C7-EE9B-3EACA864B2C9";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
createNode nurbsCurve -n "fnt_leg_conShape" -p "fnt_leg_con";
	rename -uid "D2271CF0-4585-3983-6020-8A81A023455B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1 1 -1
		1 1 1
		-1 1 1
		-1 1 -1
		1 1 -1
		1 -1 -1
		1 -1 1
		1 1 1
		-1 1 1
		-1 -1 1
		1 -1 1
		1 -1 -1
		1 1 -1
		-1 1 -1
		-1 -1 -1
		-1 -1 1
		-1 -1 -1
		1 -1 -1
		;
createNode transform -n "fnt_leg_con_target" -p "fnt_leg_con";
	rename -uid "604858B1-4490-9014-1922-AEAC3A40E28C";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "886E3A67-462D-58A9-87B7-DCB62769FABD";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode ikSpringSolver -n "ikSpringSolver";
	rename -uid "0402803C-4C4A-1F26-C96D-2FBB9A002777";
createNode displayLayerManager -n "layerManager";
	rename -uid "13E75B03-4B40-3E11-FD78-35A683C96086";
createNode displayLayer -n "defaultLayer";
	rename -uid "0A87235D-4120-07CB-CBB2-56957BA06FEC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D141F580-4551-606B-FCB4-29B50BF5E229";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "84D193F3-4A1E-C7C2-74AE-659445922B1C";
	setAttr ".g" yes;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "065F4E77-4045-3B15-EF47-A1BA1801F56E";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "8244D8E4-49E9-2778-467A-56A8DF04EA81";
createNode volumeFog -n "cubeFog";
	rename -uid "0379F9A5-4821-9739-E25E-908C532C2777";
	setAttr -s 4 ".crm";
	setAttr ".crm[0].crmp" 0;
	setAttr ".crm[0].crmc" -type "float3" 1 0 0 ;
	setAttr ".crm[0].crmi" 1;
	setAttr ".crm[1].crmp" 0.33000001311302185;
	setAttr ".crm[1].crmc" -type "float3" 1 1 0 ;
	setAttr ".crm[1].crmi" 1;
	setAttr ".crm[2].crmp" 0.6600000262260437;
	setAttr ".crm[2].crmc" -type "float3" 0 1 0 ;
	setAttr ".crm[2].crmi" 1;
	setAttr ".crm[3].crmp" 1;
	setAttr ".crm[3].crmc" -type "float3" 0 0 1 ;
	setAttr ".crm[3].crmi" 1;
	setAttr ".dos" 2;
createNode shadingEngine -n "cubeFogSG";
	rename -uid "FB2B405C-4A65-0AB6-A689-DE970D52A582";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "1283159E-4C7B-C8DA-A817-9C8D00716AF3";
createNode remapValue -n "remapValue1";
	rename -uid "A3F9A881-46A4-D101-614B-0D8473870558";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "remapValue2";
	rename -uid "3DEF80DC-40C7-BDA1-E184-138BB3135961";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B2FC2256-4C21-B93E-FC4C-3AA20870CEF8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1229\n            -height 1077\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1350\n            -height 1077\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1350\\n    -height 1077\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1350\\n    -height 1077\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C6971965-4F25-1211-BD1C-6B9F8737B80B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode remapValue -n "bk_hip_lift_blend_pointConstraint_weight";
	rename -uid "DC475132-4619-0C74-14E5-77B1540145D3";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode volumeFog -n "sphereFog";
	rename -uid "09949E6E-4F84-577E-E740-0794BF97E03B";
	setAttr -s 4 ".crm";
	setAttr ".crm[0].crmp" 0;
	setAttr ".crm[0].crmc" -type "float3" 1 0 0 ;
	setAttr ".crm[0].crmi" 1;
	setAttr ".crm[1].crmp" 0.33000001311302185;
	setAttr ".crm[1].crmc" -type "float3" 1 1 0 ;
	setAttr ".crm[1].crmi" 1;
	setAttr ".crm[2].crmp" 0.6600000262260437;
	setAttr ".crm[2].crmc" -type "float3" 0 1 0 ;
	setAttr ".crm[2].crmi" 1;
	setAttr ".crm[3].crmp" 1;
	setAttr ".crm[3].crmc" -type "float3" 0 0 1 ;
	setAttr ".crm[3].crmi" 1;
	setAttr ".dos" 1;
createNode shadingEngine -n "sphereFogSG";
	rename -uid "FA599755-4297-3833-7893-078A4A0D1130";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "A9DDEB78-469C-182C-C049-79892D479ACD";
createNode condition -n "bigger_ball_comp";
	rename -uid "7282AEB0-4501-FF4C-5C14-698449EB3C84";
	setAttr ".op" 3;
	setAttr ".cf" -type "float3" 1 0 0 ;
createNode remapValue -n "remapValue3";
	rename -uid "06BD7D8E-4E92-5146-793C-3095CDEAB006";
	setAttr ".imx" 90;
	setAttr -s 2 ".vl[0:1]"  0 0 2 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "944BFB9C-4675-7DF6-2674-57B26BFC606F";
	setAttr ".i2" -type "float3" -1 0 0 ;
createNode plusMinusAverage -n "plusMinusAverage2";
	rename -uid "3AFACDD7-412E-B993-188A-EB90673139B8";
	setAttr -s 2 ".i3[0:1]" -type "float3"  45 0 0 0 0 0;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "90FC51EE-4E89-F24C-9ADF-91AB4453507F";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode remapValue -n "fnt_shldr_lift_blend_pointConstraint_weight";
	rename -uid "AF87DCFE-41A6-A8EC-FF16-98BF8D02D8E4";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 2 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode condition -n "fnt_foot_smaller_ball";
	rename -uid "79A39EAA-4187-C5AA-E750-06BD01BC018C";
	setAttr ".op" 4;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "fnt_foot_bigger_ball";
	rename -uid "07F3ECE9-466A-A926-DA18-86AD51F4A062";
	setAttr ".op" 3;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "fnt_foot_bigger_ball_comp";
	rename -uid "79BFE015-448E-2F3E-9C35-6CBCF380E64F";
	setAttr ".op" 3;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "6F830CA9-42A8-96A1-64D9-4C894977DA6A";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "7E709A57-4615-CAF7-A762-E99A03C0683F";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "358AF2E2-48FB-B6B5-D372-2D9DF1E92A85";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "plusMinusAverage3";
	rename -uid "3C322DB9-46E1-229D-23A5-97AE2F21C4AF";
	setAttr ".op" 2;
	setAttr -s 2 ".i3[0:1]" -type "float3"  0 0 0 30 0 0;
	setAttr -s 2 ".i3";
createNode condition -n "fnt_foot_bigger_tip_start";
	rename -uid "B378030C-46F0-8EE0-E0C4-E88624344FE0";
	setAttr ".op" 3;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "7FC0EB61-4B6C-D97F-AD4A-F995AF44B809";
	setAttr ".cf" 0.017453292519943295;
createNode remapValue -n "remapValue4";
	rename -uid "FAC75358-4567-8BDF-2BB9-81B16EA64C15";
	setAttr ".imx" 90;
	setAttr -s 2 ".vl[0:1]"  0 0 2 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "4713A3FD-44E7-5FB9-EF05-95B4DA2C1E12";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage4";
	rename -uid "E7298305-4295-B3F2-072A-6D86D664DF40";
	setAttr -s 2 ".i3[0:1]" -type "float3"  30 0 0 0 0 0;
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion4";
	rename -uid "2D573A9A-4AB6-98BC-AB28-6691B819DEE7";
	setAttr ".cf" 0.017453292519943295;
createNode condition -n "fnt_foot_roll_side_0";
	rename -uid "C324E0CE-4F6A-CC6C-DC72-ED88661F5384";
createNode condition -n "fnt_foot_roll_side_in";
	rename -uid "92C1A44B-4F39-5A19-0321-2D97298AF05A";
	setAttr ".op" 2;
createNode multMatrix -n "multMatrix1";
	rename -uid "F53637AF-46C2-CD02-C79A-D0ACCB597E7C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "BE4FD012-4A00-BAE4-7247-9ABE81513AF3";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "689B8D54-4963-1C89-D602-DE9CB94FA649";
createNode multMatrix -n "multMatrix2";
	rename -uid "8718A0EB-4954-CFB7-6C9D-558F2137DA3C";
	setAttr -s 2 ".i";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "29BA85ED-4CB2-0CBC-FAE8-CDBA3CF2B007";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "29454E61-4679-69BE-EAE3-57898FE595D2";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "E30BC925-4B1D-B72D-0EB6-F38F01609F2D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -256.17928823798661 -534.63156223524322 ;
	setAttr ".tgi[0].vh" -type "double2" 1210.2072252528285 112.42724314465791 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 380;
	setAttr ".tgi[0].ni[0].y" -120;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 380;
	setAttr ".tgi[0].ni[1].y" -250;
	setAttr ".tgi[0].ni[1].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 24 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 2 ".sol";
connectAttr "fnt_quad_rig_ik_jnts_pointConstraint1.ctx" "fnt_quad_rig_ik_jnts.tx"
		;
connectAttr "fnt_quad_rig_ik_jnts_pointConstraint1.cty" "fnt_quad_rig_ik_jnts.ty"
		;
connectAttr "fnt_quad_rig_ik_jnts_pointConstraint1.ctz" "fnt_quad_rig_ik_jnts.tz"
		;
connectAttr "fnt_shldr_lift_blend.ty" "fnt_quad_rig_ik_jnts_lift.ty";
connectAttr "fnt_shldr_jnt_ik.s" "fnt_upleg_jnt_ik.is";
connectAttr "fnt_upleg_jnt_ik.s" "fnt_loleg_jnt_ik.is";
connectAttr "fnt_loleg_jnt_ik.s" "fnt_foot_jnt_ik.is";
connectAttr "fnt_foot_jnt_ik.s" "fnt_ball_jnt_ik.is";
connectAttr "fnt_ball_jnt_ik.s" "fnt_tip_jnt_ik.is";
connectAttr "fnt_tip_jnt_ik.tx" "effector8.tx";
connectAttr "fnt_tip_jnt_ik.ty" "effector8.ty";
connectAttr "fnt_tip_jnt_ik.tz" "effector8.tz";
connectAttr "fnt_ball_jnt_ik.tx" "effector7.tx";
connectAttr "fnt_ball_jnt_ik.ty" "effector7.ty";
connectAttr "fnt_ball_jnt_ik.tz" "effector7.tz";
connectAttr "fnt_foot_jnt_ik.tx" "effector5.tx";
connectAttr "fnt_foot_jnt_ik.ty" "effector5.ty";
connectAttr "fnt_foot_jnt_ik.tz" "effector5.tz";
connectAttr "fnt_upleg_jnt_ik.tx" "effector6.tx";
connectAttr "fnt_upleg_jnt_ik.ty" "effector6.ty";
connectAttr "fnt_upleg_jnt_ik.tz" "effector6.tz";
connectAttr "fnt_shldr_jnt_ik_spr.s" "fnt_upleg_jnt_ik_spr.is";
connectAttr "fnt_upleg_jnt_ik_spr.s" "fnt_loleg_jnt_ik_spr.is";
connectAttr "fnt_loleg_jnt_ik_spr.s" "fnt_foot_jnt_ik_spr.is";
connectAttr "fnt_foot_jnt_ik_spr.s" "fnt_ball_jnt_ik_spr.is";
connectAttr "fnt_ball_jnt_ik_spr.s" "fnt_tip_jnt_ik_spr.is";
connectAttr "fnt_foot_jnt_ik_spr.tx" "|fnt_quad_rig|fnt_quad_rig_ik|fnt_quad_rig_ik_jnts|fnt_quad_rig_ik_jnts_lift|fnt_shldr_jnt_ik_spr|fnt_upleg_jnt_ik_spr|fnt_loleg_jnt_ik_spr|effector4.tx"
		;
connectAttr "fnt_foot_jnt_ik_spr.ty" "|fnt_quad_rig|fnt_quad_rig_ik|fnt_quad_rig_ik_jnts|fnt_quad_rig_ik_jnts_lift|fnt_shldr_jnt_ik_spr|fnt_upleg_jnt_ik_spr|fnt_loleg_jnt_ik_spr|effector4.ty"
		;
connectAttr "fnt_foot_jnt_ik_spr.tz" "|fnt_quad_rig|fnt_quad_rig_ik|fnt_quad_rig_ik_jnts|fnt_quad_rig_ik_jnts_lift|fnt_shldr_jnt_ik_spr|fnt_upleg_jnt_ik_spr|fnt_loleg_jnt_ik_spr|effector4.tz"
		;
connectAttr "fnt_quad_rig_ik_jnts.pim" "fnt_quad_rig_ik_jnts_pointConstraint1.cpim"
		;
connectAttr "fnt_quad_rig_ik_jnts.rp" "fnt_quad_rig_ik_jnts_pointConstraint1.crp"
		;
connectAttr "fnt_quad_rig_ik_jnts.rpt" "fnt_quad_rig_ik_jnts_pointConstraint1.crt"
		;
connectAttr "fnt_leg_con_target.t" "fnt_quad_rig_ik_jnts_pointConstraint1.tg[0].tt"
		;
connectAttr "fnt_leg_con_target.rp" "fnt_quad_rig_ik_jnts_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_leg_con_target.rpt" "fnt_quad_rig_ik_jnts_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_leg_con_target.pm" "fnt_quad_rig_ik_jnts_pointConstraint1.tg[0].tpm"
		;
connectAttr "fnt_quad_rig_ik_jnts_pointConstraint1.w0" "fnt_quad_rig_ik_jnts_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_shldr_lift_blend_pointConstraint1.cty" "fnt_shldr_lift_blend.ty"
		;
connectAttr "fnt_shldr_lift_blend_pointConstraint1.ctx" "fnt_shldr_lift_blend.tx"
		;
connectAttr "fnt_shldr_lift_blend_pointConstraint1.ctz" "fnt_shldr_lift_blend.tz"
		;
connectAttr "fnt_shldr_lift_blend.pim" "fnt_shldr_lift_blend_pointConstraint1.cpim"
		;
connectAttr "fnt_shldr_lift_blend.rp" "fnt_shldr_lift_blend_pointConstraint1.crp"
		;
connectAttr "fnt_shldr_lift_blend.rpt" "fnt_shldr_lift_blend_pointConstraint1.crt"
		;
connectAttr "fnt_shldr_lift_init.t" "fnt_shldr_lift_blend_pointConstraint1.tg[0].tt"
		;
connectAttr "fnt_shldr_lift_init.rp" "fnt_shldr_lift_blend_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_shldr_lift_init.rpt" "fnt_shldr_lift_blend_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_shldr_lift_init.pm" "fnt_shldr_lift_blend_pointConstraint1.tg[0].tpm"
		;
connectAttr "fnt_shldr_lift_blend_pointConstraint1.w0" "fnt_shldr_lift_blend_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_shldr_lift_auto.t" "fnt_shldr_lift_blend_pointConstraint1.tg[1].tt"
		;
connectAttr "fnt_shldr_lift_auto.rp" "fnt_shldr_lift_blend_pointConstraint1.tg[1].trp"
		;
connectAttr "fnt_shldr_lift_auto.rpt" "fnt_shldr_lift_blend_pointConstraint1.tg[1].trt"
		;
connectAttr "fnt_shldr_lift_auto.pm" "fnt_shldr_lift_blend_pointConstraint1.tg[1].tpm"
		;
connectAttr "fnt_shldr_lift_blend_pointConstraint1.w1" "fnt_shldr_lift_blend_pointConstraint1.tg[1].tw"
		;
connectAttr "fnt_shldr_lift_blend_pointConstraint_weight.ov" "fnt_shldr_lift_blend_pointConstraint1.w0"
		;
connectAttr "fnt_foot_con.hipAutoLift" "fnt_shldr_lift_blend_pointConstraint1.w1"
		;
connectAttr "fnt_shldr_lift_auto_parentConstraint1.ctx" "fnt_shldr_lift_auto.tx"
		;
connectAttr "fnt_shldr_lift_auto_parentConstraint1.cty" "fnt_shldr_lift_auto.ty"
		;
connectAttr "fnt_shldr_lift_auto_parentConstraint1.ctz" "fnt_shldr_lift_auto.tz"
		;
connectAttr "fnt_shldr_lift_auto_parentConstraint1.crx" "fnt_shldr_lift_auto.rx"
		;
connectAttr "fnt_shldr_lift_auto_parentConstraint1.cry" "fnt_shldr_lift_auto.ry"
		;
connectAttr "fnt_shldr_lift_auto_parentConstraint1.crz" "fnt_shldr_lift_auto.rz"
		;
connectAttr "fnt_shldr_lift_auto.ro" "fnt_shldr_lift_auto_parentConstraint1.cro"
		;
connectAttr "fnt_shldr_lift_auto.pim" "fnt_shldr_lift_auto_parentConstraint1.cpim"
		;
connectAttr "fnt_shldr_lift_auto.rp" "fnt_shldr_lift_auto_parentConstraint1.crp"
		;
connectAttr "fnt_shldr_lift_auto.rpt" "fnt_shldr_lift_auto_parentConstraint1.crt"
		;
connectAttr "fnt_shldr_lift_target.t" "fnt_shldr_lift_auto_parentConstraint1.tg[0].tt"
		;
connectAttr "fnt_shldr_lift_target.rp" "fnt_shldr_lift_auto_parentConstraint1.tg[0].trp"
		;
connectAttr "fnt_shldr_lift_target.rpt" "fnt_shldr_lift_auto_parentConstraint1.tg[0].trt"
		;
connectAttr "fnt_shldr_lift_target.r" "fnt_shldr_lift_auto_parentConstraint1.tg[0].tr"
		;
connectAttr "fnt_shldr_lift_target.ro" "fnt_shldr_lift_auto_parentConstraint1.tg[0].tro"
		;
connectAttr "fnt_shldr_lift_target.s" "fnt_shldr_lift_auto_parentConstraint1.tg[0].ts"
		;
connectAttr "fnt_shldr_lift_target.pm" "fnt_shldr_lift_auto_parentConstraint1.tg[0].tpm"
		;
connectAttr "fnt_shldr_lift_auto_parentConstraint1.w0" "fnt_shldr_lift_auto_parentConstraint1.tg[0].tw"
		;
connectAttr "fnt_shldr_jnt_ik_spr.msg" "bk_quad_ikHandle_spr.hsj";
connectAttr "|fnt_quad_rig|fnt_quad_rig_ik|fnt_quad_rig_ik_jnts|fnt_quad_rig_ik_jnts_lift|fnt_shldr_jnt_ik_spr|fnt_upleg_jnt_ik_spr|fnt_loleg_jnt_ik_spr|effector4.hp" "bk_quad_ikHandle_spr.hee"
		;
connectAttr "ikSpringSolver.msg" "bk_quad_ikHandle_spr.hsv";
connectAttr "bk_quad_ikHandle_spr_poleVectorConstraint1.ctx" "bk_quad_ikHandle_spr.pvx"
		;
connectAttr "bk_quad_ikHandle_spr_poleVectorConstraint1.cty" "bk_quad_ikHandle_spr.pvy"
		;
connectAttr "bk_quad_ikHandle_spr_poleVectorConstraint1.ctz" "bk_quad_ikHandle_spr.pvz"
		;
connectAttr "bk_quad_ikHandle_spr_pointConstraint1.ctx" "bk_quad_ikHandle_spr.tx"
		;
connectAttr "bk_quad_ikHandle_spr_pointConstraint1.cty" "bk_quad_ikHandle_spr.ty"
		;
connectAttr "bk_quad_ikHandle_spr_pointConstraint1.ctz" "bk_quad_ikHandle_spr.tz"
		;
connectAttr "bk_quad_ikHandle_spr.pim" "bk_quad_ikHandle_spr_poleVectorConstraint1.cpim"
		;
connectAttr "fnt_shldr_jnt_ik_spr.pm" "bk_quad_ikHandle_spr_poleVectorConstraint1.ps"
		;
connectAttr "fnt_shldr_jnt_ik_spr.t" "bk_quad_ikHandle_spr_poleVectorConstraint1.crp"
		;
connectAttr "fnt_knee_pole_con_target.t" "bk_quad_ikHandle_spr_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "fnt_knee_pole_con_target.rp" "bk_quad_ikHandle_spr_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "fnt_knee_pole_con_target.rpt" "bk_quad_ikHandle_spr_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "fnt_knee_pole_con_target.pm" "bk_quad_ikHandle_spr_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "bk_quad_ikHandle_spr_poleVectorConstraint1.w0" "bk_quad_ikHandle_spr_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "bk_quad_ikHandle_spr.pim" "bk_quad_ikHandle_spr_pointConstraint1.cpim"
		;
connectAttr "bk_quad_ikHandle_spr.rp" "bk_quad_ikHandle_spr_pointConstraint1.crp"
		;
connectAttr "bk_quad_ikHandle_spr.rpt" "bk_quad_ikHandle_spr_pointConstraint1.crt"
		;
connectAttr "fnt_roll_foot.t" "bk_quad_ikHandle_spr_pointConstraint1.tg[0].tt";
connectAttr "fnt_roll_foot.rp" "bk_quad_ikHandle_spr_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_roll_foot.rpt" "bk_quad_ikHandle_spr_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_roll_foot.pm" "bk_quad_ikHandle_spr_pointConstraint1.tg[0].tpm"
		;
connectAttr "bk_quad_ikHandle_spr_pointConstraint1.w0" "bk_quad_ikHandle_spr_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_upleg_jnt_ik.msg" "fnt_quad_lo_ikHandle.hsj";
connectAttr "effector5.hp" "fnt_quad_lo_ikHandle.hee";
connectAttr "ikRPsolver.msg" "fnt_quad_lo_ikHandle.hsv";
connectAttr "fnt_quad_lo_ikHandle_poleVectorConstraint1.ctx" "fnt_quad_lo_ikHandle.pvx"
		;
connectAttr "fnt_quad_lo_ikHandle_poleVectorConstraint1.cty" "fnt_quad_lo_ikHandle.pvy"
		;
connectAttr "fnt_quad_lo_ikHandle_poleVectorConstraint1.ctz" "fnt_quad_lo_ikHandle.pvz"
		;
connectAttr "fnt_quad_lo_ikHandle_pointConstraint1.ctx" "fnt_quad_lo_ikHandle.tx"
		;
connectAttr "fnt_quad_lo_ikHandle_pointConstraint1.cty" "fnt_quad_lo_ikHandle.ty"
		;
connectAttr "fnt_quad_lo_ikHandle_pointConstraint1.ctz" "fnt_quad_lo_ikHandle.tz"
		;
connectAttr "fnt_quad_lo_ikHandle.pim" "fnt_quad_lo_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "fnt_upleg_jnt_ik.pm" "fnt_quad_lo_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "fnt_upleg_jnt_ik.t" "fnt_quad_lo_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "fnt_bk_knee_pole_target.t" "fnt_quad_lo_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "fnt_bk_knee_pole_target.rp" "fnt_quad_lo_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "fnt_bk_knee_pole_target.rpt" "fnt_quad_lo_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "fnt_bk_knee_pole_target.pm" "fnt_quad_lo_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "fnt_quad_lo_ikHandle_poleVectorConstraint1.w0" "fnt_quad_lo_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "fnt_quad_lo_ikHandle.pim" "fnt_quad_lo_ikHandle_pointConstraint1.cpim"
		;
connectAttr "fnt_quad_lo_ikHandle.rp" "fnt_quad_lo_ikHandle_pointConstraint1.crp"
		;
connectAttr "fnt_quad_lo_ikHandle.rpt" "fnt_quad_lo_ikHandle_pointConstraint1.crt"
		;
connectAttr "fnt_roll_foot.t" "fnt_quad_lo_ikHandle_pointConstraint1.tg[0].tt";
connectAttr "fnt_roll_foot.rp" "fnt_quad_lo_ikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_roll_foot.rpt" "fnt_quad_lo_ikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_roll_foot.pm" "fnt_quad_lo_ikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "fnt_quad_lo_ikHandle_pointConstraint1.w0" "fnt_quad_lo_ikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_ball_jnt_ik.msg" "fnt_quad_tip_ikHandle.hsj";
connectAttr "effector8.hp" "fnt_quad_tip_ikHandle.hee";
connectAttr "ikSCsolver.msg" "fnt_quad_tip_ikHandle.hsv";
connectAttr "fnt_quad_tip_ikHandle_pointConstraint1.ctx" "fnt_quad_tip_ikHandle.tx"
		;
connectAttr "fnt_quad_tip_ikHandle_pointConstraint1.cty" "fnt_quad_tip_ikHandle.ty"
		;
connectAttr "fnt_quad_tip_ikHandle_pointConstraint1.ctz" "fnt_quad_tip_ikHandle.tz"
		;
connectAttr "fnt_quad_tip_ikHandle.pim" "fnt_quad_tip_ikHandle_pointConstraint1.cpim"
		;
connectAttr "fnt_quad_tip_ikHandle.rp" "fnt_quad_tip_ikHandle_pointConstraint1.crp"
		;
connectAttr "fnt_quad_tip_ikHandle.rpt" "fnt_quad_tip_ikHandle_pointConstraint1.crt"
		;
connectAttr "fnt_roll_tip.t" "fnt_quad_tip_ikHandle_pointConstraint1.tg[0].tt";
connectAttr "fnt_roll_tip.rp" "fnt_quad_tip_ikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_roll_tip.rpt" "fnt_quad_tip_ikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_roll_tip.pm" "fnt_quad_tip_ikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "fnt_quad_tip_ikHandle_pointConstraint1.w0" "fnt_quad_tip_ikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_foot_jnt_ik.msg" "fnt_quad_ball_ikHandle.hsj";
connectAttr "effector7.hp" "fnt_quad_ball_ikHandle.hee";
connectAttr "ikSCsolver.msg" "fnt_quad_ball_ikHandle.hsv";
connectAttr "fnt_quad_ball_ikHandle_pointConstraint1.ctx" "fnt_quad_ball_ikHandle.tx"
		;
connectAttr "fnt_quad_ball_ikHandle_pointConstraint1.cty" "fnt_quad_ball_ikHandle.ty"
		;
connectAttr "fnt_quad_ball_ikHandle_pointConstraint1.ctz" "fnt_quad_ball_ikHandle.tz"
		;
connectAttr "fnt_quad_ball_ikHandle.pim" "fnt_quad_ball_ikHandle_pointConstraint1.cpim"
		;
connectAttr "fnt_quad_ball_ikHandle.rp" "fnt_quad_ball_ikHandle_pointConstraint1.crp"
		;
connectAttr "fnt_quad_ball_ikHandle.rpt" "fnt_quad_ball_ikHandle_pointConstraint1.crt"
		;
connectAttr "fnt_roll_ball.t" "fnt_quad_ball_ikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "fnt_roll_ball.rp" "fnt_quad_ball_ikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_roll_ball.rpt" "fnt_quad_ball_ikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_roll_ball.pm" "fnt_quad_ball_ikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "fnt_quad_ball_ikHandle_pointConstraint1.w0" "fnt_quad_ball_ikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_shldr_lift_target_space_pointConstraint1.ctx" "fnt_shldr_lift_target_space.tx"
		;
connectAttr "fnt_shldr_lift_target_space_pointConstraint1.cty" "fnt_shldr_lift_target_space.ty"
		;
connectAttr "fnt_shldr_lift_target_space_pointConstraint1.ctz" "fnt_shldr_lift_target_space.tz"
		;
connectAttr "fnt_shldr_lift_target_space.pim" "fnt_shldr_lift_target_space_pointConstraint1.cpim"
		;
connectAttr "fnt_shldr_lift_target_space.rp" "fnt_shldr_lift_target_space_pointConstraint1.crp"
		;
connectAttr "fnt_shldr_lift_target_space.rpt" "fnt_shldr_lift_target_space_pointConstraint1.crt"
		;
connectAttr "fnt_foot_jnt_ik_spr.t" "fnt_shldr_lift_target_space_pointConstraint1.tg[0].tt"
		;
connectAttr "fnt_foot_jnt_ik_spr.rp" "fnt_shldr_lift_target_space_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_foot_jnt_ik_spr.rpt" "fnt_shldr_lift_target_space_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_foot_jnt_ik_spr.pm" "fnt_shldr_lift_target_space_pointConstraint1.tg[0].tpm"
		;
connectAttr "fnt_shldr_lift_target_space_pointConstraint1.w0" "fnt_shldr_lift_target_space_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_roll_tip_pointConstraint1.ctx" "fnt_roll_tip.tx";
connectAttr "fnt_roll_tip_pointConstraint1.cty" "fnt_roll_tip.ty";
connectAttr "fnt_roll_tip_pointConstraint1.ctz" "fnt_roll_tip.tz";
connectAttr "fnt_roll_tip.pim" "fnt_roll_tip_pointConstraint1.cpim";
connectAttr "fnt_roll_tip.rp" "fnt_roll_tip_pointConstraint1.crp";
connectAttr "fnt_roll_tip.rpt" "fnt_roll_tip_pointConstraint1.crt";
connectAttr "fnt_tip.t" "fnt_roll_tip_pointConstraint1.tg[0].tt";
connectAttr "fnt_tip.rp" "fnt_roll_tip_pointConstraint1.tg[0].trp";
connectAttr "fnt_tip.rpt" "fnt_roll_tip_pointConstraint1.tg[0].trt";
connectAttr "fnt_tip.pm" "fnt_roll_tip_pointConstraint1.tg[0].tpm";
connectAttr "fnt_roll_tip_pointConstraint1.w0" "fnt_roll_tip_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_roll_ball_pointConstraint1.ctx" "fnt_roll_ball.tx";
connectAttr "fnt_roll_ball_pointConstraint1.cty" "fnt_roll_ball.ty";
connectAttr "fnt_roll_ball_pointConstraint1.ctz" "fnt_roll_ball.tz";
connectAttr "fnt_roll_ball.pim" "fnt_roll_ball_pointConstraint1.cpim";
connectAttr "fnt_roll_ball.rp" "fnt_roll_ball_pointConstraint1.crp";
connectAttr "fnt_roll_ball.rpt" "fnt_roll_ball_pointConstraint1.crt";
connectAttr "fnt_ball.t" "fnt_roll_ball_pointConstraint1.tg[0].tt";
connectAttr "fnt_ball.rp" "fnt_roll_ball_pointConstraint1.tg[0].trp";
connectAttr "fnt_ball.rpt" "fnt_roll_ball_pointConstraint1.tg[0].trt";
connectAttr "fnt_ball.pm" "fnt_roll_ball_pointConstraint1.tg[0].tpm";
connectAttr "fnt_roll_ball_pointConstraint1.w0" "fnt_roll_ball_pointConstraint1.tg[0].tw"
		;
connectAttr "fnt_roll_foot_pointConstraint1.ctx" "fnt_roll_foot.tx";
connectAttr "fnt_roll_foot_pointConstraint1.cty" "fnt_roll_foot.ty";
connectAttr "fnt_roll_foot_pointConstraint1.ctz" "fnt_roll_foot.tz";
connectAttr "fnt_roll_foot.pim" "fnt_roll_foot_pointConstraint1.cpim";
connectAttr "fnt_roll_foot.rp" "fnt_roll_foot_pointConstraint1.crp";
connectAttr "fnt_roll_foot.rpt" "fnt_roll_foot_pointConstraint1.crt";
connectAttr "fnt_ankle.t" "fnt_roll_foot_pointConstraint1.tg[0].tt";
connectAttr "fnt_ankle.rp" "fnt_roll_foot_pointConstraint1.tg[0].trp";
connectAttr "fnt_ankle.rpt" "fnt_roll_foot_pointConstraint1.tg[0].trt";
connectAttr "fnt_ankle.pm" "fnt_roll_foot_pointConstraint1.tg[0].tpm";
connectAttr "fnt_roll_foot_pointConstraint1.w0" "fnt_roll_foot_pointConstraint1.tg[0].tw"
		;
connectAttr "unitConversion1.o" "fnt_heel.rz";
connectAttr "unitConversion2.o" "fnt_heel.rx";
connectAttr "fnt_foot_roll_side_in.oc" "fnt_heel.rp";
connectAttr "unitConversion3.o" "fnt_tip.rx";
connectAttr "unitConversion4.o" "fnt_ball.rx";
connectAttr "decomposeMatrix2.ot" "fnt_bk_knee_pole_conShape.cp[15]";
connectAttr "fnt_knee_con_space_pointConstraint1.ctx" "fnt_knee_con_space.tx";
connectAttr "fnt_knee_con_space_pointConstraint1.cty" "fnt_knee_con_space.ty";
connectAttr "fnt_knee_con_space_pointConstraint1.ctz" "fnt_knee_con_space.tz";
connectAttr "fnt_shldr_jnt_ik.msg" "fnt_quad_up_ikHandle.hsj";
connectAttr "effector6.hp" "fnt_quad_up_ikHandle.hee";
connectAttr "ikSCsolver.msg" "fnt_quad_up_ikHandle.hsv";
connectAttr "fnt_knee_con_space.pim" "fnt_knee_con_space_pointConstraint1.cpim";
connectAttr "fnt_knee_con_space.rp" "fnt_knee_con_space_pointConstraint1.crp";
connectAttr "fnt_knee_con_space.rpt" "fnt_knee_con_space_pointConstraint1.crt";
connectAttr "fnt_upleg_jnt_ik_spr_ref.t" "fnt_knee_con_space_pointConstraint1.tg[0].tt"
		;
connectAttr "fnt_upleg_jnt_ik_spr_ref.rp" "fnt_knee_con_space_pointConstraint1.tg[0].trp"
		;
connectAttr "fnt_upleg_jnt_ik_spr_ref.rpt" "fnt_knee_con_space_pointConstraint1.tg[0].trt"
		;
connectAttr "fnt_upleg_jnt_ik_spr_ref.pm" "fnt_knee_con_space_pointConstraint1.tg[0].tpm"
		;
connectAttr "fnt_knee_con_space_pointConstraint1.w0" "fnt_knee_con_space_pointConstraint1.tg[0].tw"
		;
connectAttr "decomposeMatrix1.ot" "fnt_knee_pole_conShape.cp[15]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "cubeFogSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sphereFogSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "cubeFogSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sphereFogSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "cubeFog.oc" "cubeFogSG.vs";
connectAttr "cubeFogSG.msg" "materialInfo1.sg";
connectAttr "sphereFog.oc" "sphereFogSG.vs";
connectAttr "sphereFogSG.msg" "materialInfo2.sg";
connectAttr "plusMinusAverage2.o3x" "bigger_ball_comp.ctr";
connectAttr "remapValue3.ov" "multiplyDivide1.i1x";
connectAttr "multiplyDivide1.ox" "plusMinusAverage2.i3[1].i3x";
connectAttr "fnt_shldr_lift_blend_pointConstraint1.w1" "fnt_shldr_lift_blend_pointConstraint_weight.i"
		;
connectAttr "fnt_foot_con.rollFntBk" "fnt_foot_smaller_ball.ft";
connectAttr "fnt_foot_con.rollFntBk" "fnt_foot_smaller_ball.ctr";
connectAttr "fnt_foot_con.rollFntBk" "fnt_foot_bigger_ball.ctr";
connectAttr "fnt_foot_con.rollFntBk" "fnt_foot_bigger_ball.ft";
connectAttr "fnt_foot_bigger_ball.ocr" "fnt_foot_bigger_ball_comp.cfr";
connectAttr "fnt_foot_bigger_ball.ocr" "fnt_foot_bigger_ball_comp.ft";
connectAttr "fnt_foot_con.rollStartAngle" "fnt_foot_bigger_ball_comp.st";
connectAttr "plusMinusAverage4.o3x" "fnt_foot_bigger_ball_comp.ctr";
connectAttr "fnt_foot_con.rollInOut" "multiplyDivide3.i1x";
connectAttr "multiplyDivide3.ox" "unitConversion1.i";
connectAttr "fnt_foot_smaller_ball.ocr" "unitConversion2.i";
connectAttr "fnt_foot_con.rollFntBk" "plusMinusAverage3.i3[0].i3x";
connectAttr "fnt_foot_con.rollStartAngle" "plusMinusAverage3.i3[1].i3x";
connectAttr "plusMinusAverage3.o3x" "fnt_foot_bigger_tip_start.ctr";
connectAttr "fnt_foot_con.rollFntBk" "fnt_foot_bigger_tip_start.ft";
connectAttr "fnt_foot_con.rollStartAngle" "fnt_foot_bigger_tip_start.st";
connectAttr "fnt_foot_bigger_tip_start.ocr" "unitConversion3.i";
connectAttr "plusMinusAverage3.o3x" "remapValue4.i";
connectAttr "fnt_foot_con.rollStartAngle" "remapValue4.omx";
connectAttr "remapValue4.ov" "multiplyDivide4.i1x";
connectAttr "fnt_foot_con.rollStartAngle" "plusMinusAverage4.i3[0].i3x";
connectAttr "multiplyDivide4.ox" "plusMinusAverage4.i3[1].i3x";
connectAttr "fnt_foot_bigger_ball_comp.ocr" "unitConversion4.i";
connectAttr "fnt_heel_piv_in.t" "fnt_foot_roll_side_0.cf";
connectAttr "fnt_foot_con.rollInOut" "fnt_foot_roll_side_0.ft";
connectAttr "fnt_foot_con.rollInOut" "fnt_foot_roll_side_in.ft";
connectAttr "fnt_foot_roll_side_0.oc" "fnt_foot_roll_side_in.ct";
connectAttr "fnt_heel_piv_out.t" "fnt_foot_roll_side_in.cf";
connectAttr "fnt_upleg_jnt_ik.wm" "multMatrix1.i[0]";
connectAttr "fnt_knee_pole_con.wim" "multMatrix1.i[1]";
connectAttr "multMatrix1.o" "decomposeMatrix1.imat";
connectAttr "multMatrix2.o" "decomposeMatrix2.imat";
connectAttr "fnt_loleg_jnt_ik.wm" "multMatrix2.i[0]";
connectAttr "fnt_bk_knee_pole_con.wim" "multMatrix2.i[1]";
connectAttr ":persp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr ":perspShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "cubeFogSG.pa" ":renderPartition.st" -na;
connectAttr "sphereFogSG.pa" ":renderPartition.st" -na;
connectAttr "cubeFog.msg" ":defaultShaderList1.s" -na;
connectAttr "sphereFog.msg" ":defaultShaderList1.s" -na;
connectAttr "remapValue1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapValue2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bk_hip_lift_blend_pointConstraint_weight.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bigger_ball_comp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapValue3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnt_shldr_lift_blend_pointConstraint_weight.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fnt_foot_smaller_ball.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnt_foot_bigger_ball.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnt_foot_bigger_ball_comp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnt_foot_bigger_tip_start.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapValue4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnt_foot_roll_side_0.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnt_foot_roll_side_in.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of fnt_quadleg.ma
