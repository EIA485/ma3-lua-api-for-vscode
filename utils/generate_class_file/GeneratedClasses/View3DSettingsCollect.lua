---@meta

---@class View3DSettingsCollect: Object
local View3DSettingsCollect = {}
---@return "View3DSettingsCollect"
function View3DSettingsCollect:GetClass() end
---@return "View3DSettings"
function View3DSettingsCollect:GetChildClass() end
---@generic T : View3DSettingsCollect
---@param class `T`
---@return boolean
function View3DSettingsCollect:IsClass(class) end
---@param index integer
---@return View3DSettings
function View3DSettingsCollect:Ptr(index) end
---@return View3DSettings[]
function View3DSettingsCollect:Children() end
---@return View3DSettings?
function View3DSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): View3DSettings
function View3DSettingsCollect:Get(name, role) end
---@generic T : View3DSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Create(index, class, undo) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): View3DSettings
function View3DSettingsCollect:Append(class, undo, count) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Acquire(class, undo) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): View3DSettings
---@deprecated use "Acquire" instead
function View3DSettingsCollect:Aquire(class, undo) end
---@generic T : View3DSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): View3DSettings
function View3DSettingsCollect:Insert(index, class, undo, count) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "InputControl3d", property_value: InputControl3d)
---@overload fun(property_name: "BloomIntensity", property_value: BloomIntensity3d|boolean)
---@overload fun(property_name: "LabelFontSize", property_value: FontSizes)
---@overload fun(property_name: "Camera", property_value: Camera)
---@overload fun(property_name: "RenderQuality", property_value: RenderQuality)
---@overload fun(property_name: "SelectionMode", property_value: SelectionMode)
---@overload fun(property_name: "Stage", property_value: Stage)
---@overload fun(property_name: "ArrangementMarcType", property_value: ArrangementMarcType)
---@overload fun(property_name: "ArrangementMarcType", property_value: ArrangementMarcType)
---@overload fun(property_name: "BloomIntensity", property_value: BloomIntensity3d|boolean)
---@overload fun(property_name: "Camera", property_value: Camera)
---@overload fun(property_name: "LabTextColor"|"PointLightColor"|"AmbientLightColor"|"BackgroundColor"|"LabBackgroundColor", property_value: Colors.RGB<float>)
---@overload fun(property_name: "LabelFontSize", property_value: FontSizes)
---@overload fun(property_name: "InputControl3d", property_value: InputControl3d)
---@overload fun(property_name: "RenderQuality", property_value: RenderQuality)
---@overload fun(property_name: "SelectionMode", property_value: SelectionMode)
---@overload fun(property_name: "Stage", property_value: Stage)
---@overload fun(property_name: "ShadowTransparency"|"ResourceStatistics3D"|"ShowFPS"|"MarkFaultyMeshes"|"ShowSelection"|"RenderEnvironment"|"NativeColors"|"SubFixtureSupportDuringProjectionSelection"|"DeferredDevMode"|"SelectFixtureBySpotLabel"|"LensShading"|"EnableBVHDebugging"|"AxisLines"|"ShowPickPoints"|"IgnoreSelectionRenderingOrder"|"AxisLinesKinematicChain"|"ShowToolBar"|"BoundingBoxes"|"MarkUnpatched"|"ShadowMapStatistics"|"ShowPigtails"|"UseBeamColorInformation"|"ForceIterativeRendering"|"DrawMArkerBoundaries"|"DevFlag1"|"ModelGroupStatistics"|"DevFlag2"|"DevFlag3"|"PointOfOrigin"|"DevFlag4"|"PlanarSelectionLines"|"SelectionAllowEnvironmentObjects"|"ShowSpotLabelSubFixtureId"|"ShowLabelBackground"|"BeamFrustumsRender"|"ShowLabel"|"Setup"|"ShowLabFixtureId"|"ShowLabPatch"|"Timing"|"ShowLabName"|"ArrangementDepth"|"Statistics"|"ShowLabCIE"|"AntiAlias"|"ShowLabOnEnd"|"Parallel"|"RenderGBufferTextures"|"BeamLinesfadeout"|"LinesOverlay"|"DisableCalibration"|"Priority"|"DrawRubberbandMATricks"|"Wireframed"|"LabOnlySelection"|"PrismLines"|"Modelscandisableculling"|"LabSelectionPrio"|"Silhouettes"|"CullShadows", property_value: YesNo|boolean)
---@overload fun(property_name: "LabMaxCount"|"DesiredUiFps"|"DynamicGoboResolution"|"LightBeamOverdrawLimit", property_value: integer)
---@overload fun(property_name: "BeamIntensity"|"SpotIntensity"|"CameraAnimationSpeedMeterSec"|"CameraAnimationSpeedDegreeSec"|"AmbientIntensity"|"PointLightIntensity"|"LuminousIntensitySpread"|"BackgroundIntensity"|"MultiBeamBorderSmoothness"|"IgnoreNormals"|"StageBorder"|"Dev1"|"TriangleCalibrationFactor"|"ProportionalGain"|"Dev2"|"MultiBeamBlur"|"IntegrationTime"|"Dev3"|"LabelBackgroundTransparency"|"DerivativeTime"|"Dev4"|"LabelTextTransparency"|"ArrangementAlpha"|"TimeSlotMS", property_value: number)
function View3DSettingsCollect:SetChildren(property_name, property_value) end