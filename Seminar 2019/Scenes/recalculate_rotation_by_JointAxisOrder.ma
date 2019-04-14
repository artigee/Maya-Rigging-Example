//Maya ASCII 2018 scene
//Name: recalculate_rotation_by_JointAxisOrder.ma
//Last modified: Sat, Apr 13, 2019 07:07:34 PM
//Codeset: 949
requires maya "2018";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "D83BF8C1-4B02-3BF8-095E-71B3514F4A90";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.1671493565941962 5.2235449638151037 -0.21113611816505379 ;
	setAttr ".r" -type "double3" -29.738352729716524 90.999999999993591 7.6333312355124402e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "058798EB-4829-2B93-548F-9A9F2CDCB178";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.551495579646788;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "73BD265E-4851-BA77-9855-BCA633AB6BAB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E4B9028E-4FDC-C62F-FD5B-19B2437A5AD1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DF8FAE69-49EE-080E-25B7-BA978F471290";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "04DCFFB7-48C7-9662-8653-C5B81FC19621";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "5DB80386-4B68-74F7-DE01-42B74AA62D4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3DD2D665-4C11-71A1-9373-F4B830239049";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "original";
	rename -uid "AE9859F1-46AE-198D-4DDA-6F9D75DFC48C";
	setAttr ".t" -type "double3" 0 0 2 ;
	setAttr ".r" -type "double3" 90 90 90 ;
createNode locator -n "originalShape" -p "original";
	rename -uid "8DBAB408-4022-7A94-93A0-DF9AAE0EAFD5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.5 1.5 1.5 ;
createNode transform -n "original_axis" -p "original";
	rename -uid "8E158680-40CD-1329-F836-8EA2F855D31E";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "original_axisShape" -p "original_axis";
	rename -uid "88084CD1-442E-0B9E-2EFA-8F854201735F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 5 "f[0]" "f[3]" "f[5:9]" "f[14:17]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[1]" "f[10:13]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 2 "f[2]" "f[26:29]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 2 "f[4]" "f[18:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625
		 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -0.075000003 -0.075000003 -0.075000003 -0.075000003 -0.075000003 0.075000003
		 -0.075000003 0.075000003 -0.075000003 -0.075000003 0.075000003 0.075000003 0.075000003 0.075000003 -0.075000003
		 0.075000003 0.075000003 0.075000003 0.075000003 -0.075000003 -0.075000003 0.075000003 -0.075000003 0.075000003
		 -0.060000002 0.075000003 -0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002 0.075000003 0.060000002
		 0.060000002 0.075000003 -0.060000002 -0.060000002 1 -0.060000002 -0.060000002 1 0.060000002
		 0.060000002 1 0.060000002 0.060000002 1 -0.060000002 0.060000002 -0.060000002 0.075000003
		 -0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002 0.075000003 -0.060000002 0.060000002 0.075000003
		 0.060000002 -0.060000002 1 -0.060000002 -0.060000002 1 0.060000002 0.060000002 1
		 -0.060000002 0.060000002 1 0.075000003 0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002
		 0.075000003 -0.060000002 0.060000002 0.075000003 -0.060000002 -0.060000002 1 0.060000002 -0.060000002
		 1 0.060000002 0.060000002 1 -0.060000002 0.060000002 1 -0.060000002 -0.060000002;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 3 0 3 2 0 2 0 0 12 13 0 13 14 0 14 15 0
		 15 12 0 28 29 0 29 30 0 30 31 0 31 28 0 6 7 0 7 1 0 0 6 0 21 20 0 20 22 0 22 23 0
		 23 21 0 2 4 0 4 6 0 3 9 0 9 8 0 8 2 0 3 5 0 5 10 0 10 9 0 5 4 0 4 11 0 11 10 0 8 11 0
		 9 13 0 12 8 0 10 14 0 11 15 0 7 16 0 16 17 0 17 1 0 7 5 0 5 18 0 18 16 0 3 19 0 19 18 0
		 17 19 0 16 20 0 21 17 0 18 22 0 19 23 0 5 25 0 25 24 0 24 4 0 7 26 0 26 25 0 6 27 0
		 27 26 0 24 27 0 25 29 0 28 24 0 26 30 0 27 31 0;
	setAttr -s 120 ".n[0:119]" -type "float3"  -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 -1.4372264e-07 0 1 1.4372264e-07
		 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07
		 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 0 0 1 0 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0 0 1 0 0
		 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 1.4372264e-07 0
		 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 3 2
		f 4 4 5 6 7
		mu 0 4 18 19 20 21
		f 4 8 9 10 11
		mu 0 4 34 35 36 37
		f 4 12 13 -1 14
		mu 0 4 6 7 9 8
		f 4 15 16 17 18
		mu 0 4 26 27 28 29
		f 4 -15 -4 19 20
		mu 0 4 12 0 2 13
		f 4 -3 21 22 23
		mu 0 4 2 3 15 14
		f 4 24 25 26 -22
		mu 0 4 3 5 16 15
		f 4 27 28 29 -26
		mu 0 4 5 4 17 16
		f 4 -20 -24 30 -29
		mu 0 4 4 2 14 17
		f 4 -23 31 -5 32
		mu 0 4 14 15 19 18
		f 4 -27 33 -6 -32
		mu 0 4 15 16 20 19
		f 4 -30 34 -7 -34
		mu 0 4 16 17 21 20
		f 4 -31 -33 -8 -35
		mu 0 4 17 14 18 21
		f 4 -14 35 36 37
		mu 0 4 1 10 23 22
		f 4 38 39 40 -36
		mu 0 4 10 11 24 23
		f 4 -25 41 42 -40
		mu 0 4 11 3 25 24
		f 4 -2 -38 43 -42
		mu 0 4 3 1 22 25
		f 4 -37 44 -16 45
		mu 0 4 22 23 27 26
		f 4 -41 46 -17 -45
		mu 0 4 23 24 28 27
		f 4 -43 47 -18 -47
		mu 0 4 24 25 29 28
		f 4 -44 -46 -19 -48
		mu 0 4 25 22 26 29
		f 4 -28 48 49 50
		mu 0 4 4 5 31 30
		f 4 -39 51 52 -49
		mu 0 4 5 7 32 31
		f 4 -13 53 54 -52
		mu 0 4 7 6 33 32
		f 4 -21 -51 55 -54
		mu 0 4 6 4 30 33
		f 4 -50 56 -9 57
		mu 0 4 30 31 35 34
		f 4 -53 58 -10 -57
		mu 0 4 31 32 36 35
		f 4 -55 59 -11 -59
		mu 0 4 32 33 37 36
		f 4 -56 -58 -12 -60
		mu 0 4 33 30 34 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "updated_rotation";
	rename -uid "A75E2E64-4187-CFAE-1E62-4391AA6C9F2E";
createNode locator -n "updated_rotationShape" -p "updated_rotation";
	rename -uid "5C970875-43B3-C44C-7260-DABE5E97CB95";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.5 1.5 1.5 ;
createNode transform -n "update_axis" -p "updated_rotation";
	rename -uid "E4471F67-4806-2B31-4AE2-55A356AC6E56";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "update_axisShape" -p "update_axis";
	rename -uid "97DA20FA-4DAF-FCBE-35D9-D9B48457F557";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 5 "f[0]" "f[3]" "f[5:9]" "f[14:17]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[1]" "f[10:13]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 2 "f[2]" "f[26:29]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 2 "f[4]" "f[18:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625
		 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -0.075000003 -0.075000003 -0.075000003 -0.075000003 -0.075000003 0.075000003
		 -0.075000003 0.075000003 -0.075000003 -0.075000003 0.075000003 0.075000003 0.075000003 0.075000003 -0.075000003
		 0.075000003 0.075000003 0.075000003 0.075000003 -0.075000003 -0.075000003 0.075000003 -0.075000003 0.075000003
		 -0.060000002 0.075000003 -0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002 0.075000003 0.060000002
		 0.060000002 0.075000003 -0.060000002 -0.060000002 1 -0.060000002 -0.060000002 1 0.060000002
		 0.060000002 1 0.060000002 0.060000002 1 -0.060000002 0.060000002 -0.060000002 0.075000003
		 -0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002 0.075000003 -0.060000002 0.060000002 0.075000003
		 0.060000002 -0.060000002 1 -0.060000002 -0.060000002 1 0.060000002 0.060000002 1
		 -0.060000002 0.060000002 1 0.075000003 0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002
		 0.075000003 -0.060000002 0.060000002 0.075000003 -0.060000002 -0.060000002 1 0.060000002 -0.060000002
		 1 0.060000002 0.060000002 1 -0.060000002 0.060000002 1 -0.060000002 -0.060000002;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 3 0 3 2 0 2 0 0 12 13 0 13 14 0 14 15 0
		 15 12 0 28 29 0 29 30 0 30 31 0 31 28 0 6 7 0 7 1 0 0 6 0 21 20 0 20 22 0 22 23 0
		 23 21 0 2 4 0 4 6 0 3 9 0 9 8 0 8 2 0 3 5 0 5 10 0 10 9 0 5 4 0 4 11 0 11 10 0 8 11 0
		 9 13 0 12 8 0 10 14 0 11 15 0 7 16 0 16 17 0 17 1 0 7 5 0 5 18 0 18 16 0 3 19 0 19 18 0
		 17 19 0 16 20 0 21 17 0 18 22 0 19 23 0 5 25 0 25 24 0 24 4 0 7 26 0 26 25 0 6 27 0
		 27 26 0 24 27 0 25 29 0 28 24 0 26 30 0 27 31 0;
	setAttr -s 120 ".n[0:119]" -type "float3"  -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 -1.4372264e-07 0 1 1.4372264e-07
		 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07
		 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 0 0 1 0 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0 0 1 0 0
		 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 1.4372264e-07 0
		 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 3 2
		f 4 4 5 6 7
		mu 0 4 18 19 20 21
		f 4 8 9 10 11
		mu 0 4 34 35 36 37
		f 4 12 13 -1 14
		mu 0 4 6 7 9 8
		f 4 15 16 17 18
		mu 0 4 26 27 28 29
		f 4 -15 -4 19 20
		mu 0 4 12 0 2 13
		f 4 -3 21 22 23
		mu 0 4 2 3 15 14
		f 4 24 25 26 -22
		mu 0 4 3 5 16 15
		f 4 27 28 29 -26
		mu 0 4 5 4 17 16
		f 4 -20 -24 30 -29
		mu 0 4 4 2 14 17
		f 4 -23 31 -5 32
		mu 0 4 14 15 19 18
		f 4 -27 33 -6 -32
		mu 0 4 15 16 20 19
		f 4 -30 34 -7 -34
		mu 0 4 16 17 21 20
		f 4 -31 -33 -8 -35
		mu 0 4 17 14 18 21
		f 4 -14 35 36 37
		mu 0 4 1 10 23 22
		f 4 38 39 40 -36
		mu 0 4 10 11 24 23
		f 4 -25 41 42 -40
		mu 0 4 11 3 25 24
		f 4 -2 -38 43 -42
		mu 0 4 3 1 22 25
		f 4 -37 44 -16 45
		mu 0 4 22 23 27 26
		f 4 -41 46 -17 -45
		mu 0 4 23 24 28 27
		f 4 -43 47 -18 -47
		mu 0 4 24 25 29 28
		f 4 -44 -46 -19 -48
		mu 0 4 25 22 26 29
		f 4 -28 48 49 50
		mu 0 4 4 5 31 30
		f 4 -39 51 52 -49
		mu 0 4 5 7 32 31
		f 4 -13 53 54 -52
		mu 0 4 7 6 33 32
		f 4 -21 -51 55 -54
		mu 0 4 6 4 30 33
		f 4 -50 56 -9 57
		mu 0 4 30 31 35 34
		f 4 -53 58 -10 -57
		mu 0 4 31 32 36 35
		f 4 -55 59 -11 -59
		mu 0 4 32 33 37 36
		f 4 -56 -58 -12 -60
		mu 0 4 33 30 34 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "updated_rotation_order_align";
	rename -uid "A3191286-49CD-0D9D-FA80-1A977F7B0F93";
	addAttr -ci true -sn "jointAxis" -ln "jointAxis" -nn "Joint Axis" -min 0 -max 5 
		-en "xyz:yzx:zxy:xzy:yxz:zyx" -at "enum";
	setAttr ".t" -type "double3" 0 0 -2 ;
	setAttr -k on ".jointAxis";
createNode locator -n "updated_rotation_order_alignShape" -p "updated_rotation_order_align";
	rename -uid "F8F04F70-42E9-1AD1-A278-CD83A50F5E6C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.5 1.5 1.5 ;
createNode transform -n "update_align" -p "updated_rotation_order_align";
	rename -uid "EFC87EF9-41E3-C8DF-2626-5C9434F293E5";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "update_alignShape" -p "update_align";
	rename -uid "8B23F57B-4711-D0AA-B2EA-3F987523B06F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 5 "f[0]" "f[3]" "f[5:9]" "f[14:17]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[1]" "f[10:13]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 2 "f[2]" "f[26:29]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 2 "f[4]" "f[18:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625
		 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -0.075000003 -0.075000003 -0.075000003 -0.075000003 -0.075000003 0.075000003
		 -0.075000003 0.075000003 -0.075000003 -0.075000003 0.075000003 0.075000003 0.075000003 0.075000003 -0.075000003
		 0.075000003 0.075000003 0.075000003 0.075000003 -0.075000003 -0.075000003 0.075000003 -0.075000003 0.075000003
		 -0.060000002 0.075000003 -0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002 0.075000003 0.060000002
		 0.060000002 0.075000003 -0.060000002 -0.060000002 1 -0.060000002 -0.060000002 1 0.060000002
		 0.060000002 1 0.060000002 0.060000002 1 -0.060000002 0.060000002 -0.060000002 0.075000003
		 -0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002 0.075000003 -0.060000002 0.060000002 0.075000003
		 0.060000002 -0.060000002 1 -0.060000002 -0.060000002 1 0.060000002 0.060000002 1
		 -0.060000002 0.060000002 1 0.075000003 0.060000002 -0.060000002 0.075000003 0.060000002 0.060000002
		 0.075000003 -0.060000002 0.060000002 0.075000003 -0.060000002 -0.060000002 1 0.060000002 -0.060000002
		 1 0.060000002 0.060000002 1 -0.060000002 0.060000002 1 -0.060000002 -0.060000002;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 3 0 3 2 0 2 0 0 12 13 0 13 14 0 14 15 0
		 15 12 0 28 29 0 29 30 0 30 31 0 31 28 0 6 7 0 7 1 0 0 6 0 21 20 0 20 22 0 22 23 0
		 23 21 0 2 4 0 4 6 0 3 9 0 9 8 0 8 2 0 3 5 0 5 10 0 10 9 0 5 4 0 4 11 0 11 10 0 8 11 0
		 9 13 0 12 8 0 10 14 0 11 15 0 7 16 0 16 17 0 17 1 0 7 5 0 5 18 0 18 16 0 3 19 0 19 18 0
		 17 19 0 16 20 0 21 17 0 18 22 0 19 23 0 5 25 0 25 24 0 24 4 0 7 26 0 26 25 0 6 27 0
		 27 26 0 24 27 0 25 29 0 28 24 0 26 30 0 27 31 0;
	setAttr -s 120 ".n[0:119]" -type "float3"  -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 -1.4372264e-07 0 1 1.4372264e-07
		 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07
		 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 0 0 1 0 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0 0 1 0 0
		 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 1.4372264e-07 0
		 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 -1.4372264e-07
		 0 1 -1.4372264e-07 0 1 -1.4372264e-07 0 1 1.4372264e-07 0 1 1.4372264e-07 0 1 -1.4372264e-07
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 3 2
		f 4 4 5 6 7
		mu 0 4 18 19 20 21
		f 4 8 9 10 11
		mu 0 4 34 35 36 37
		f 4 12 13 -1 14
		mu 0 4 6 7 9 8
		f 4 15 16 17 18
		mu 0 4 26 27 28 29
		f 4 -15 -4 19 20
		mu 0 4 12 0 2 13
		f 4 -3 21 22 23
		mu 0 4 2 3 15 14
		f 4 24 25 26 -22
		mu 0 4 3 5 16 15
		f 4 27 28 29 -26
		mu 0 4 5 4 17 16
		f 4 -20 -24 30 -29
		mu 0 4 4 2 14 17
		f 4 -23 31 -5 32
		mu 0 4 14 15 19 18
		f 4 -27 33 -6 -32
		mu 0 4 15 16 20 19
		f 4 -30 34 -7 -34
		mu 0 4 16 17 21 20
		f 4 -31 -33 -8 -35
		mu 0 4 17 14 18 21
		f 4 -14 35 36 37
		mu 0 4 1 10 23 22
		f 4 38 39 40 -36
		mu 0 4 10 11 24 23
		f 4 -25 41 42 -40
		mu 0 4 11 3 25 24
		f 4 -2 -38 43 -42
		mu 0 4 3 1 22 25
		f 4 -37 44 -16 45
		mu 0 4 22 23 27 26
		f 4 -41 46 -17 -45
		mu 0 4 23 24 28 27
		f 4 -43 47 -18 -47
		mu 0 4 24 25 29 28
		f 4 -44 -46 -19 -48
		mu 0 4 25 22 26 29
		f 4 -28 48 49 50
		mu 0 4 4 5 31 30
		f 4 -39 51 52 -49
		mu 0 4 5 7 32 31
		f 4 -13 53 54 -52
		mu 0 4 7 6 33 32
		f 4 -21 -51 55 -54
		mu 0 4 6 4 30 33
		f 4 -50 56 -9 57
		mu 0 4 30 31 35 34
		f 4 -53 58 -10 -57
		mu 0 4 31 32 36 35
		f 4 -55 59 -11 -59
		mu 0 4 32 33 37 36
		f 4 -56 -58 -12 -60
		mu 0 4 33 30 34 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D3F93F69-4786-C9A1-53A9-9FA908D20B8E";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "056AE669-434D-89A0-A967-EC9DDC081780";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8289A53B-40E7-4398-6C84-3DBB9D7EB961";
createNode displayLayerManager -n "layerManager";
	rename -uid "AEEC38C5-41E7-814E-DBB1-458564E4FA4A";
createNode displayLayer -n "defaultLayer";
	rename -uid "1A985C9F-4B03-135E-D3E6-22A363075A39";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EBADDDA4-4DAE-A13E-C4F6-019C5B7C57E4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "766EA04B-43C3-3CBB-78A3-E0BFFF5D9ACC";
	setAttr ".g" yes;
createNode eulerToQuat -n "eulerToQuat1";
	rename -uid "53817148-4FBC-4D8A-372F-6F80C8708E9B";
createNode quatToEuler -n "quatToEuler1";
	rename -uid "897A864C-48F9-76BA-7186-3A8A9CD33070";
	setAttr ".ort" -type "double3" 0 90 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "955E1F7B-476C-9CFA-0E76-ABA5CC3BD994";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1344\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 668\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 669\n            -height 516\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1344\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 50 -ps 2 100 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1344\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1344\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Node Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"nodeEditorPanel\\\" -l (localizedPanelLabel(\\\"Node Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"NodeEditorEd\\\");\\n            nodeEditor -e \\n                -allAttributes 0\\n                -allNodes 0\\n                -autoSizeNodes 1\\n                -consistentNameSize 1\\n                -createNodeCommand \\\"nodeEdCreateNodeCommand\\\" \\n                -connectNodeOnCreation 0\\n                -connectOnDrop 0\\n                -highlightConnections 0\\n                -copyConnectionsOnPaste 0\\n                -connectionStyle \\\"bezier\\\" \\n                -connectionMinSegment 0.03\\n                -connectionOffset 0.03\\n                -connectionRoundness 0.8\\n                -connectionTension -100\\n                -defaultPinnedState 0\\n                -additiveGraphingMode 0\\n                -settingsChangedCallback \\\"nodeEdSyncControls\\\" \\n                -traversalDepthLimit -1\\n                -keyPressCommand \\\"nodeEdKeyPressCommand\\\" \\n                -nodeTitleMode \\\"name\\\" \\n                -gridSnap 0\\n                -gridVisibility 1\\n                -crosshairOnEdgeDragging 0\\n                -popupMenuScript \\\"nodeEdBuildPanelMenus\\\" \\n                -showNamespace 1\\n                -showShapes 1\\n                -showSGShapes 0\\n                -showTransforms 1\\n                -useAssets 1\\n                -syncedSelection 1\\n                -extendToShapes 1\\n                -activeTab 0\\n                -editorMode \\\"default\\\" \\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Node Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"NodeEditorEd\\\");\\n            nodeEditor -e \\n                -allAttributes 0\\n                -allNodes 0\\n                -autoSizeNodes 1\\n                -consistentNameSize 1\\n                -createNodeCommand \\\"nodeEdCreateNodeCommand\\\" \\n                -connectNodeOnCreation 0\\n                -connectOnDrop 0\\n                -highlightConnections 0\\n                -copyConnectionsOnPaste 0\\n                -connectionStyle \\\"bezier\\\" \\n                -connectionMinSegment 0.03\\n                -connectionOffset 0.03\\n                -connectionRoundness 0.8\\n                -connectionTension -100\\n                -defaultPinnedState 0\\n                -additiveGraphingMode 0\\n                -settingsChangedCallback \\\"nodeEdSyncControls\\\" \\n                -traversalDepthLimit -1\\n                -keyPressCommand \\\"nodeEdKeyPressCommand\\\" \\n                -nodeTitleMode \\\"name\\\" \\n                -gridSnap 0\\n                -gridVisibility 1\\n                -crosshairOnEdgeDragging 0\\n                -popupMenuScript \\\"nodeEdBuildPanelMenus\\\" \\n                -showNamespace 1\\n                -showShapes 1\\n                -showSGShapes 0\\n                -showTransforms 1\\n                -useAssets 1\\n                -syncedSelection 1\\n                -extendToShapes 1\\n                -activeTab 0\\n                -editorMode \\\"default\\\" \\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B16D0FD4-4A06-94AE-C796-2FA97B4418BC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	rename -uid "5AECE417-464A-E540-39E8-DABF67B35ABA";
createNode shadingEngine -n "projection_axis_infoSG";
	rename -uid "47A2A231-4507-FDF8-6DFD-EB9423036CBF";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "E757AF0E-4767-AE81-DDA6-0C97BA2A6324";
createNode lambert -n "y_mat";
	rename -uid "A58FE779-438C-9A82-C4A0-D9B40FA8E6D1";
	setAttr ".c" -type "float3" 0 1 0 ;
createNode shadingEngine -n "projection_axis_infoSG1";
	rename -uid "E0A84634-48CD-282C-125A-CEB72A4D1293";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "43E28EF8-4607-B444-DD24-68B3239AF4D3";
createNode lambert -n "x_mat";
	rename -uid "9E0FA55F-4D41-F4E2-CAD9-02BBBD7A6F39";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "projection_axis_infoSG2";
	rename -uid "36F5AC02-417F-5AA6-85AF-6EAB14B84EEC";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "8AAB4B4D-4DFF-4604-0097-8597ECA2DB53";
createNode lambert -n "z_mat";
	rename -uid "5037A3C2-4D25-C911-A8C8-F487BC79375A";
	setAttr ".c" -type "float3" 0 0 1 ;
createNode shadingEngine -n "projection_axis_infoSG3";
	rename -uid "115B7D4D-43F2-E931-ED1F-EBB7D3908F4E";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "022885F6-463B-8440-D44B-61AC0D991EA4";
createNode groupId -n "groupId1";
	rename -uid "B7445AD5-4FCE-6A20-8F5E-1A9377913C26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "AA90F072-4167-2DFB-1288-35B7C97A905C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "FC987CD0-4EE4-8D28-1E55-3DA3C3053C77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "8314956F-4952-D935-7D13-A1B5DC9DE34F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "5AFBCCED-42EE-2E5F-B1FE-3AB20F1652FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "EE823923-445F-B005-2EF0-6C8794F8E33A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "89DC4EFA-465C-6B1C-158D-C1B1F8740D38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "CA918904-4849-28A1-F555-CD90BFB127DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "4FE39BA6-4749-0824-C7F5-56B62AEF2A64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "DCCA1A4A-4941-1C2B-12B1-41A016CA4053";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "F5C65F56-4BE0-A03D-685B-52AB178055FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "C85BDA8D-4DD5-9691-BEE4-CFAAB4102BA0";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "B5B31327-4AF0-3131-BD2C-57A0318B7FAF";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -690.47616303913287 -245.83332356479477 ;
	setAttr ".tgi[0].vh" -type "double2" 897.61901195087296 317.26189215504985 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 146.73460388183594;
	setAttr ".tgi[0].ni[0].y" 66.599525451660156;
	setAttr ".tgi[0].ni[0].nvs" 18305;
	setAttr ".tgi[0].ni[1].x" 448.81155395507813;
	setAttr ".tgi[0].ni[1].y" 61.569305419921875;
	setAttr ".tgi[0].ni[1].nvs" 18305;
	setAttr ".tgi[0].ni[2].x" -165.45631408691406;
	setAttr ".tgi[0].ni[2].y" -8.9681272506713867;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -468.57144165039063;
	setAttr ".tgi[0].ni[3].y" 35.714286804199219;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 438.76004028320313;
	setAttr ".tgi[0].ni[4].y" 178.77407836914063;
	setAttr ".tgi[0].ni[4].nvs" 18304;
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "original_axisShape.iog.og[0].gid";
connectAttr "projection_axis_infoSG.mwc" "original_axisShape.iog.og[0].gco";
connectAttr "groupId2.id" "original_axisShape.iog.og[1].gid";
connectAttr "projection_axis_infoSG1.mwc" "original_axisShape.iog.og[1].gco";
connectAttr "groupId3.id" "original_axisShape.iog.og[2].gid";
connectAttr "projection_axis_infoSG2.mwc" "original_axisShape.iog.og[2].gco";
connectAttr "groupId4.id" "original_axisShape.iog.og[3].gid";
connectAttr "projection_axis_infoSG3.mwc" "original_axisShape.iog.og[3].gco";
connectAttr "original.r" "updated_rotation.r";
connectAttr "groupId5.id" "update_axisShape.iog.og[0].gid";
connectAttr "projection_axis_infoSG.mwc" "update_axisShape.iog.og[0].gco";
connectAttr "groupId6.id" "update_axisShape.iog.og[1].gid";
connectAttr "projection_axis_infoSG1.mwc" "update_axisShape.iog.og[1].gco";
connectAttr "groupId7.id" "update_axisShape.iog.og[2].gid";
connectAttr "projection_axis_infoSG2.mwc" "update_axisShape.iog.og[2].gco";
connectAttr "groupId8.id" "update_axisShape.iog.og[3].gid";
connectAttr "projection_axis_infoSG3.mwc" "update_axisShape.iog.og[3].gco";
connectAttr "quatToEuler1.ort" "updated_rotation_order_align.r";
connectAttr "quatToEuler1.iro" "updated_rotation_order_align.ro";
connectAttr "groupId9.id" "update_alignShape.iog.og[0].gid";
connectAttr "projection_axis_infoSG.mwc" "update_alignShape.iog.og[0].gco";
connectAttr "groupId10.id" "update_alignShape.iog.og[1].gid";
connectAttr "projection_axis_infoSG1.mwc" "update_alignShape.iog.og[1].gco";
connectAttr "groupId11.id" "update_alignShape.iog.og[2].gid";
connectAttr "projection_axis_infoSG2.mwc" "update_alignShape.iog.og[2].gco";
connectAttr "groupId12.id" "update_alignShape.iog.og[3].gid";
connectAttr "projection_axis_infoSG3.mwc" "update_alignShape.iog.og[3].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "projection_axis_infoSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "projection_axis_infoSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "projection_axis_infoSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "projection_axis_infoSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "projection_axis_infoSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "projection_axis_infoSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "projection_axis_infoSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "projection_axis_infoSG3.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "original.r" "eulerToQuat1.irt";
connectAttr "updated_rotation_order_align.jointAxis" "quatToEuler1.iro";
connectAttr "eulerToQuat1.oq" "quatToEuler1.iq";
connectAttr "lambert2.oc" "projection_axis_infoSG.ss";
connectAttr "groupId1.msg" "projection_axis_infoSG.gn" -na;
connectAttr "groupId5.msg" "projection_axis_infoSG.gn" -na;
connectAttr "groupId9.msg" "projection_axis_infoSG.gn" -na;
connectAttr "original_axisShape.iog.og[0]" "projection_axis_infoSG.dsm" -na;
connectAttr "update_axisShape.iog.og[0]" "projection_axis_infoSG.dsm" -na;
connectAttr "update_alignShape.iog.og[0]" "projection_axis_infoSG.dsm" -na;
connectAttr "projection_axis_infoSG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "y_mat.oc" "projection_axis_infoSG1.ss";
connectAttr "groupId2.msg" "projection_axis_infoSG1.gn" -na;
connectAttr "groupId6.msg" "projection_axis_infoSG1.gn" -na;
connectAttr "groupId10.msg" "projection_axis_infoSG1.gn" -na;
connectAttr "original_axisShape.iog.og[1]" "projection_axis_infoSG1.dsm" -na;
connectAttr "update_axisShape.iog.og[1]" "projection_axis_infoSG1.dsm" -na;
connectAttr "update_alignShape.iog.og[1]" "projection_axis_infoSG1.dsm" -na;
connectAttr "projection_axis_infoSG1.msg" "materialInfo2.sg";
connectAttr "y_mat.msg" "materialInfo2.m";
connectAttr "x_mat.oc" "projection_axis_infoSG2.ss";
connectAttr "groupId3.msg" "projection_axis_infoSG2.gn" -na;
connectAttr "groupId7.msg" "projection_axis_infoSG2.gn" -na;
connectAttr "groupId11.msg" "projection_axis_infoSG2.gn" -na;
connectAttr "original_axisShape.iog.og[2]" "projection_axis_infoSG2.dsm" -na;
connectAttr "update_axisShape.iog.og[2]" "projection_axis_infoSG2.dsm" -na;
connectAttr "update_alignShape.iog.og[2]" "projection_axis_infoSG2.dsm" -na;
connectAttr "projection_axis_infoSG2.msg" "materialInfo3.sg";
connectAttr "x_mat.msg" "materialInfo3.m";
connectAttr "z_mat.oc" "projection_axis_infoSG3.ss";
connectAttr "groupId4.msg" "projection_axis_infoSG3.gn" -na;
connectAttr "groupId8.msg" "projection_axis_infoSG3.gn" -na;
connectAttr "groupId12.msg" "projection_axis_infoSG3.gn" -na;
connectAttr "original_axisShape.iog.og[3]" "projection_axis_infoSG3.dsm" -na;
connectAttr "update_axisShape.iog.og[3]" "projection_axis_infoSG3.dsm" -na;
connectAttr "update_alignShape.iog.og[3]" "projection_axis_infoSG3.dsm" -na;
connectAttr "projection_axis_infoSG3.msg" "materialInfo4.sg";
connectAttr "z_mat.msg" "materialInfo4.m";
connectAttr "quatToEuler1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "updated_rotation_order_align.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "eulerToQuat1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "original.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "updated_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "projection_axis_infoSG.pa" ":renderPartition.st" -na;
connectAttr "projection_axis_infoSG1.pa" ":renderPartition.st" -na;
connectAttr "projection_axis_infoSG2.pa" ":renderPartition.st" -na;
connectAttr "projection_axis_infoSG3.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "y_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "x_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "z_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "eulerToQuat1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "quatToEuler1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of recalculate_rotation_by_JointAxisOrder.ma
