import maya.cmds as cmds

def getBindingDataPerVertex(mesh):
    skinClusterNode = None
    skinClusterNode = mel.eval('findRelatedSkinCluster '+mesh)

    numberVtx = cmds.polyEvaluate(mesh, vertex=True)
    affectors = cmds.skinCluster(skinClusterNode,query=True,inf=True)
    
    bingingDataPerVtx = {}
    for i in range(0, numberVtx):
        affectorWeights = {}
        for affector in affectors:
            weight = cmds.skinPercent(skinClusterNode, mesh+'.vtx['+str(i)+']', query=True, transform=affector)
            if weight != 0.0:
                affectorWeights[affector] = weight
        bingingDataPerVtx['vtx['+str(i)+']'] = affectorWeights
    return bingingDataPerVtx, skinClusterNode

def selectedVertexAndMesh():
	mesh = None
	selectedVertice = None
	target = None
	selection = cmds.ls(sl=1)
	if len(selection) != []:
		selectedVertices = cmds.filterExpand(sm=31)
		if (selectedVertices != None):
			mesh = selection[0].split('.')[0]
			selectedVertice = selectedVertices[0]
			target = selection[-1]
	return mesh, selectedVertice, target

def averageNormalOnSelectedVertex(selectedVertice):
	normals = [[], [], []]
	conFaces = cmds.ls(cmds.polyListComponentConversion(selectedVertice, fv=True, tf=True), flatten=True)
	faceNorm = cmds.polyInfo(conFaces, fn=True)
	for normal in faceNorm:
	    label, vertex, x, y, z = normal.split()
	    normals[0].append(float(x))
	    normals[1].append(float(y))
	    normals[2].append(float(z))
	x_avg = (sum(normals[0]) / len(conFaces))
	y_avg = (sum(normals[1]) / len(conFaces))
	z_avg = (sum(normals[2]) / len(conFaces))
	return [x_avg, y_avg, z_avg]

def doSurfaceConstraintBySkinWeight():
	selectedMesh, selectedVertice, selectedNode = selectedVertexAndMesh()
	if selectedMesh == None or selectedVertice == None or selectedNode == None:
		print "Info>> Please select 1) Skinned Single Vertex on Mesh 2) Single Transformation Node"
		return
	selectedVerticePosWs = cmds.pointPosition(selectedVertice)
	cmds.xform(selectedNode, ws=True, t=selectedVerticePosWs)
	bingingDataPerVtx, skinClusterNode = getBindingDataPerVertex(selectedMesh)
	vtxInfo = selectedVertice.split('.')[1]
	skinWeights = bingingDataPerVtx[vtxInfo]
	targets = skinWeights.keys()
	weights = skinWeights.values()
	pc = cmds.parentConstraint( targets, selectedNode, mo=True)
	weightList = cmds.parentConstraint(pc, q=True,weightAliasList=True)
	for i in range(len(weightList)):
		cmds.setAttr(pc[0]+'.'+weightList[i], weights[i])

doSurfaceConstraintBySkinWeight()

