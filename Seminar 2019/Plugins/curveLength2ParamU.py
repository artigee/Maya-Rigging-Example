import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

kPluginNodeName = "curveLength2ParamU"
kPluginNodeId   = OpenMaya.MTypeId(0x8704)

class curveLength2ParamU(OpenMayaMPx.MPxNode):

	inputCurve = OpenMaya.MObject()
	inputLength = OpenMaya.MObject()
	outputParamU = OpenMaya.MObject()

	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)

	def compute(self, plug, data):

		if plug == curveLength2ParamU.outputParamU:
			
			inputCurveData = data.inputValue(curveLength2ParamU.inputCurve)
			inputCurveObj = inputCurveData.asNurbsCurve()

			lengthData = data.inputValue(curveLength2ParamU.inputLength)
			inputCurveLength = lengthData.asDouble()

			inputCurveFn = OpenMaya.MFnNurbsCurve(inputCurveObj)
			outputParamU_value= inputCurveFn.findParamFromLength(inputCurveLength)
		
			outputParamData = data.outputValue(curveLength2ParamU.outputParamU)
			outputParamData.setDouble(outputParamU_value)

			data.setClean(plug)
		
		else:
			
			return OpenMaya.kUnknownParameter

def nodeCreator():
	return OpenMayaMPx.asMPxPtr( curveLength2ParamU() )

def nodeInitializer():

        nAttr = OpenMaya.MFnTypedAttribute()
        curveLength2ParamU.inputCurve = nAttr.create( "inputCurve", "ic", OpenMaya.MFnData.kNurbsCurve)

        nAttr = OpenMaya.MFnNumericAttribute()
        curveLength2ParamU.inputLength = nAttr.create( "inputLength", "len", OpenMaya.MFnNumericData.kDouble, 0.0 )
        nAttr.setKeyable(1)
        nAttr.setWritable(1)
        nAttr.setStorable(1)

        nAttr = OpenMaya.MFnNumericAttribute()
        curveLength2ParamU.outputParamU = nAttr.create( "outputParamU", "otu", OpenMaya.MFnNumericData.kDouble, 0.0 )
        nAttr.setStorable(1)

        curveLength2ParamU.addAttribute( curveLength2ParamU.inputCurve )
        curveLength2ParamU.addAttribute ( curveLength2ParamU.inputLength )
        curveLength2ParamU.addAttribute( curveLength2ParamU.outputParamU )

        #Attribute affects
        curveLength2ParamU.attributeAffects( curveLength2ParamU.inputCurve , curveLength2ParamU.outputParamU )
        curveLength2ParamU.attributeAffects( curveLength2ParamU.inputLength , curveLength2ParamU.outputParamU )

def initializePlugin(mobject):

	mplugin = OpenMayaMPx.MFnPlugin(mobject, "hyun seung kim", "1.0", "2012")
	try:
		mplugin.registerNode( kPluginNodeName, kPluginNodeId, nodeCreator, nodeInitializer)
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeName )
		raise
 
def uninitializePlugin(mobject):

	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterNode( kPluginNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeName )
		raise