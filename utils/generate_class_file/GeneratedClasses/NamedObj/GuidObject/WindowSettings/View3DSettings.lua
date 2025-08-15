---@meta

---@class View3DSettings: WindowSettings
---@field DesiredUiFps integer
---@field MultiBeamBorderSmoothness number
---@field TriangleCalibrationFactor number
---@field PlanarSelectionLines YesNo|boolean Planar Selection Lines
---@field MultiBeamBlur number
---@field DynamicGoboResolution integer
---@field BeamFrustumsRender YesNo|boolean Enable BeamFrustums Render
---@field Setup YesNo|boolean Enable Setup Mode
---@field SelectionMode SelectionMode
---@field SelectionAllowEnvironmentObjects YesNo|boolean
---@field Timing YesNo|boolean Enable the Timing output
---@field Statistics YesNo|boolean Enable the statistics output
---@field AntiAlias YesNo|boolean
---@field Parallel YesNo|boolean
---@field RenderGBufferTextures YesNo|boolean
---@field DisableCalibration YesNo|boolean
---@field DrawRubberbandMATricks YesNo|boolean
---@field PrismLines YesNo|boolean
---@field MarkUnpatched YesNo|boolean
---@field PointOfOrigin YesNo|boolean
---@field ShowSelection YesNo|boolean
---@field RenderEnvironment YesNo|boolean
---@field SubFixtureSupportDuringProjectionSelection YesNo|boolean
---@field SelectFixtureBySpotLabel YesNo|boolean
---@field AxisLines YesNo|boolean
---@field AxisLinesKinematicChain YesNo|boolean
---@field BoundingBoxes YesNo|boolean
---@field ShadowMapStatistics YesNo|boolean
---@field UseBeamColorInformation YesNo|boolean
---@field DrawMArkerBoundaries YesNo|boolean
---@field ModelGroupStatistics YesNo|boolean
---@field PointLightColor Colors.RGB<float>
---@field AmbientLightColor Colors.RGB<float>
---@field BackgroundColor Colors.RGB<float>
---@field LabBackgroundColor Colors.RGB<float>
---@field LabTextColor Colors.RGB<float>
---@field LabelBackgroundTransparency number
---@field LabelTextTransparency number
---@field ArrangementAlpha number
---@field Camera Camera
---@field RenderQuality RenderQuality
---@field Stage Stage
---@field ArrangementMarcType ArrangementMarcType
---@field InputControl3d InputControl3d
---@field BloomIntensity BloomIntensity3d|boolean
---@field BeamLinesfadeout YesNo|boolean Enable linear fade out when rendering beam lines
---@field Priority YesNo|boolean 3D Framerate has priority. The UI Framerate may suffer from it.
---@field Wireframed YesNo|boolean Enable wireframe mode
---@field Modelscandisableculling YesNo|boolean Enable wireframe mode
---@field Silhouettes YesNo|boolean Enable the selection silhouettes
---@field CullShadows YesNo|boolean
---@field ShadowTransparency YesNo|boolean
---@field ShowFPS YesNo|boolean
---@field NativeColors YesNo|boolean
---@field DeferredDevMode YesNo|boolean
---@field LensShading YesNo|boolean
---@field BeamIntensity number
---@field SpotIntensity number
---@field CameraAnimationSpeedMeterSec number
---@field CameraAnimationSpeedDegreeSec number
---@field AmbientIntensity number
---@field PointLightIntensity number
---@field LuminousIntensitySpread number
---@field BackgroundIntensity number
---@field IgnoreNormals number
---@field StageBorder number
---@field ProportionalGain number
---@field IntegrationTime number
---@field DerivativeTime number
---@field ShowLabelBackground YesNo|boolean
---@field ShowLabel YesNo|boolean
---@field ShowLabFixtureId YesNo|boolean
---@field ShowLabPatch YesNo|boolean
---@field ShowLabName YesNo|boolean
---@field ShowLabCIE YesNo|boolean
---@field ShowLabOnEnd YesNo|boolean
---@field TimeSlotMS number
---@field LinesOverlay YesNo|boolean
---@field LabMaxCount integer
---@field LabOnlySelection YesNo|boolean
---@field LabSelectionPrio YesNo|boolean
---@field ShowSpotLabelSubFixtureId YesNo|boolean
---@field ArrangementDepth YesNo|boolean
---@field ResourceStatistics3D YesNo|boolean
---@field MarkFaultyMeshes YesNo|boolean
---@field LabelFontSize FontSizes
---@field LightBeamOverdrawLimit integer
---@field EnableBVHDebugging YesNo|boolean
---@field ShowPickPoints YesNo|boolean
---@field IgnoreSelectionRenderingOrder YesNo|boolean
---@field ShowToolBar YesNo|boolean
---@field ShowPigtails YesNo|boolean
---@field ForceIterativeRendering YesNo|boolean
---@field DevFlag1 YesNo|boolean
---@field DevFlag2 YesNo|boolean
---@field DevFlag3 YesNo|boolean
---@field DevFlag4 YesNo|boolean
---@field Dev1 number
---@field Dev2 number
---@field Dev3 number
---@field Dev4 number
local View3DSettings = {
    MultiBeamBorderSmoothness="0.35",
    TriangleCalibrationFactor="30.0",
    PlanarSelectionLines="No",
    MultiBeamBlur="Default",
    DynamicGoboResolution="Default",
    BeamFrustumsRender="No",
    Setup="No",
    SelectionAllowEnvironmentObjects="1",
    Timing="No",
    Statistics="No",
    AntiAlias="1",
    Parallel="1",
    RenderGBufferTextures="0",
    DisableCalibration="0",
    DrawRubberbandMATricks="0",
    PrismLines="1",
    MarkUnpatched="1",
    PointOfOrigin="1",
    ShowSelection="1",
    RenderEnvironment="1",
    SubFixtureSupportDuringProjectionSelection="1",
    SelectFixtureBySpotLabel="0",
    AxisLines="No",
    AxisLinesKinematicChain="No",
    ShadowMapStatistics="No",
    UseBeamColorInformation="Yes",
    DrawMArkerBoundaries="No",
    ModelGroupStatistics="No",
    PointLightColor="1,1,1,0",
    AmbientLightColor="1,1,1,0",
    BackgroundColor="1,1,1,0",
    LabBackgroundColor="1,1,1,0",
    LabTextColor="1,1,1,0",
    LabelBackgroundTransparency="75.0",
    LabelTextTransparency="100.0",
    ArrangementAlpha="50.0",
    BeamLinesfadeout="Yes",
    Priority="No",
    Wireframed="No",
    Modelscandisableculling="No",
    Silhouettes="No",
    CullShadows="Yes",
    ShadowTransparency="Yes",
    ShowFPS="Yes",
    LensShading="Yes",
    BeamIntensity="Default",
    SpotIntensity="Default",
    CameraAnimationSpeedMeterSec="Default",
    CameraAnimationSpeedDegreeSec="Default",
    AmbientIntensity="Default",
    PointLightIntensity="Default",
    LuminousIntensitySpread="Default",
    BackgroundIntensity="Default",
    IgnoreNormals="Default",
    StageBorder="Default",
    ProportionalGain="0.075",
    IntegrationTime="10.0",
    DerivativeTime="1.0",
    ShowLabelBackground="No",
    ShowLabel="No",
    ShowLabFixtureId="No",
    ShowLabPatch="No",
    ShowLabName="No",
    ShowLabCIE="No",
    TimeSlotMS="Default",
    LabMaxCount="Default",
    LabOnlySelection="No",
    LabSelectionPrio="No",
    ShowSpotLabelSubFixtureId="No",
    ArrangementDepth="No",
    ResourceStatistics3D="No",
    MarkFaultyMeshes="No",
    LightBeamOverdrawLimit="Default",
    EnableBVHDebugging="0",
    ShowPickPoints="0",
    IgnoreSelectionRenderingOrder="0",
    ShowToolBar="Yes",
    ShowPigtails="Yes",
    ForceIterativeRendering="No",
    DevFlag1="0",
    DevFlag2="0",
    DevFlag3="0",
    DevFlag4="0",
    Dev1="Default",
    Dev2="Default",
    Dev3="Default",
    Dev4="Default"
}
---@return "View3DSettings"
function View3DSettings:GetClass() end
---@return "Object"
function View3DSettings:GetChildClass() end
---@generic T : View3DSettings
---@param class `T`
---@return boolean
function View3DSettings:IsClass(class) end
---@return 127
function View3DSettings:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "PreferenceHandle"
---@overload fun(idx: 21): "FontSize"
---@overload fun(idx: 22): "ShowTitleBar"
---@overload fun(idx: 23): "VisibleTitlebuttons"
---@overload fun(idx: 24): "RequestDefaultTitlebuttons"
---@overload fun(idx: 25): "TitleButtonMask"
---@overload fun(idx: 26): "DesiredUiFps"
---@overload fun(idx: 27): "MultiBeamBorderSmoothness"
---@overload fun(idx: 28): "TriangleCalibrationFactor"
---@overload fun(idx: 29): "PlanarSelectionLines"
---@overload fun(idx: 30): "MultiBeamBlur"
---@overload fun(idx: 31): "DynamicGoboResolution"
---@overload fun(idx: 32): "BeamFrustumsRender"
---@overload fun(idx: 33): "Setup"
---@overload fun(idx: 34): "SelectionMode"
---@overload fun(idx: 35): "SelectionAllowEnvironmentObjects"
---@overload fun(idx: 36): "Timing"
---@overload fun(idx: 37): "Statistics"
---@overload fun(idx: 38): "AntiAlias"
---@overload fun(idx: 39): "Parallel"
---@overload fun(idx: 40): "RenderGBufferTextures"
---@overload fun(idx: 41): "DisableCalibration"
---@overload fun(idx: 42): "DrawRubberbandMATricks"
---@overload fun(idx: 43): "PrismLines"
---@overload fun(idx: 44): "MarkUnpatched"
---@overload fun(idx: 45): "PointOfOrigin"
---@overload fun(idx: 46): "ShowSelection"
---@overload fun(idx: 47): "RenderEnvironment"
---@overload fun(idx: 48): "SubFixtureSupportDuringProjectionSelection"
---@overload fun(idx: 49): "SelectFixtureBySpotLabel"
---@overload fun(idx: 50): "AxisLines"
---@overload fun(idx: 51): "AxisLinesKinematicChain"
---@overload fun(idx: 52): "BoundingBoxes"
---@overload fun(idx: 53): "ShadowMapStatistics"
---@overload fun(idx: 54): "UseBeamColorInformation"
---@overload fun(idx: 55): "DrawMArkerBoundaries"
---@overload fun(idx: 56): "ModelGroupStatistics"
---@overload fun(idx: 57): "PointLightColor"
---@overload fun(idx: 58): "AmbientLightColor"
---@overload fun(idx: 59): "BackgroundColor"
---@overload fun(idx: 60): "LabBackgroundColor"
---@overload fun(idx: 61): "LabTextColor"
---@overload fun(idx: 62): "LabelBackgroundTransparency"
---@overload fun(idx: 63): "LabelTextTransparency"
---@overload fun(idx: 64): "ArrangementAlpha"
---@overload fun(idx: 65): "Camera"
---@overload fun(idx: 66): "RenderQuality"
---@overload fun(idx: 67): "Stage"
---@overload fun(idx: 68): "ArrangementMarcType"
---@overload fun(idx: 69): "InputControl3d"
---@overload fun(idx: 70): "BloomIntensity"
---@overload fun(idx: 71): "BeamLinesfadeout"
---@overload fun(idx: 72): "Priority"
---@overload fun(idx: 73): "Wireframed"
---@overload fun(idx: 74): "Modelscandisableculling"
---@overload fun(idx: 75): "Silhouettes"
---@overload fun(idx: 76): "CullShadows"
---@overload fun(idx: 77): "ShadowTransparency"
---@overload fun(idx: 78): "ShowFPS"
---@overload fun(idx: 79): "NativeColors"
---@overload fun(idx: 80): "DeferredDevMode"
---@overload fun(idx: 81): "LensShading"
---@overload fun(idx: 82): "BeamIntensity"
---@overload fun(idx: 83): "SpotIntensity"
---@overload fun(idx: 84): "CameraAnimationSpeedMeterSec"
---@overload fun(idx: 85): "CameraAnimationSpeedDegreeSec"
---@overload fun(idx: 86): "AmbientIntensity"
---@overload fun(idx: 87): "PointLightIntensity"
---@overload fun(idx: 88): "LuminousIntensitySpread"
---@overload fun(idx: 89): "BackgroundIntensity"
---@overload fun(idx: 90): "IgnoreNormals"
---@overload fun(idx: 91): "StageBorder"
---@overload fun(idx: 92): "ProportionalGain"
---@overload fun(idx: 93): "IntegrationTime"
---@overload fun(idx: 94): "DerivativeTime"
---@overload fun(idx: 95): "ShowLabelBackground"
---@overload fun(idx: 96): "ShowLabel"
---@overload fun(idx: 97): "ShowLabFixtureId"
---@overload fun(idx: 98): "ShowLabPatch"
---@overload fun(idx: 99): "ShowLabName"
---@overload fun(idx: 100): "ShowLabCIE"
---@overload fun(idx: 101): "ShowLabOnEnd"
---@overload fun(idx: 102): "TimeSlotMS"
---@overload fun(idx: 103): "LinesOverlay"
---@overload fun(idx: 104): "LabMaxCount"
---@overload fun(idx: 105): "LabOnlySelection"
---@overload fun(idx: 106): "LabSelectionPrio"
---@overload fun(idx: 107): "ShowSpotLabelSubFixtureId"
---@overload fun(idx: 108): "ArrangementDepth"
---@overload fun(idx: 109): "ResourceStatistics3D"
---@overload fun(idx: 110): "MarkFaultyMeshes"
---@overload fun(idx: 111): "LabelFontSize"
---@overload fun(idx: 112): "LightBeamOverdrawLimit"
---@overload fun(idx: 113): "EnableBVHDebugging"
---@overload fun(idx: 114): "ShowPickPoints"
---@overload fun(idx: 115): "IgnoreSelectionRenderingOrder"
---@overload fun(idx: 116): "ShowToolBar"
---@overload fun(idx: 117): "ShowPigtails"
---@overload fun(idx: 118): "ForceIterativeRendering"
---@overload fun(idx: 119): "DevFlag1"
---@overload fun(idx: 120): "DevFlag2"
---@overload fun(idx: 121): "DevFlag3"
---@overload fun(idx: 122): "DevFlag4"
---@overload fun(idx: 123): "Dev1"
---@overload fun(idx: 124): "Dev2"
---@overload fun(idx: 125): "Dev3"
---@overload fun(idx: 126): "Dev4"
function View3DSettings:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|22|24|29|32|33|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|71|72|73|74|75|76|77|78|79|80|81|95|96|97|98|99|100|101|103|105|106|107|108|109|110|113|114|115|116|117|118|119|120|121|122): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|23|26|27|28|30|31|57|58|59|60|61|62|63|64|65|66|67|82|83|84|85|86|87|88|89|90|91|92|93|94|102|104|112|123|124|125|126): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17|25): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 21|111): {ExportIgnore: False, EnumCollection: FontSizes, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 34): {ExportIgnore: False, EnumCollection: SelectionMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 68): {ExportIgnore: False, EnumCollection: ArrangementMarcType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 69): {ExportIgnore: False, EnumCollection: InputControl3d, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 70): {ExportIgnore: False, EnumCollection: BloomIntensity3d, ReadOnly: False, ImportIgnore: False}
function View3DSettings:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|36|50|51|52|53|56|71|72|73|74|75|76|77|78|79|81|95|96|97|98|99|100|101|103|105|106|107|108|109|110|113|119|120|121|122): "UInt32"
---@overload fun(idx: 7|12|17|18|25): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11|29|32|33|35|37|38|39|40|41|42|43|44|45|46|47|48|49|54|55|80|114|115|116|117|118): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|23|57|58|59|60|61): "Custom"
---@overload fun(idx: 15|16|20|65|66|67): "Handle"
---@overload fun(idx: 21|22|24|26|111): "UInt8"
---@overload fun(idx: 27|28|30|62|63|64|82|83|84|85|86|87|88|89|90|91|102|123|124|125|126): "Float"
---@overload fun(idx: 31): "UInt16"
---@overload fun(idx: 34|68|69|70): "Int8"
---@overload fun(idx: 92|93|94): "Double"
---@overload fun(idx: 104|112): "Int32"
function View3DSettings:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "ArrangementMarcType", role: nil): ArrangementMarcType
---@overload fun(name: "BloomIntensity", role: nil): BloomIntensity3d|boolean
---@overload fun(name: "Camera", role: nil): Camera
---@overload fun(name: "PointLightColor"|"AmbientLightColor"|"BackgroundColor"|"LabBackgroundColor"|"LabTextColor", role: nil): Colors.RGB<float>
---@overload fun(name: "FontSize"|"LabelFontSize", role: nil): FontSizes
---@overload fun(name: "InputControl3d", role: nil): InputControl3d
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "RenderQuality", role: nil): RenderQuality
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "SelectionMode", role: nil): SelectionMode
---@overload fun(name: "Stage", role: nil): Stage
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"ShowTitleBar"|"RequestDefaultTitlebuttons"|"PlanarSelectionLines"|"BeamFrustumsRender"|"Setup"|"SelectionAllowEnvironmentObjects"|"Timing"|"Statistics"|"AntiAlias"|"Parallel"|"RenderGBufferTextures"|"DisableCalibration"|"DrawRubberbandMATricks"|"PrismLines"|"MarkUnpatched"|"PointOfOrigin"|"ShowSelection"|"RenderEnvironment"|"SubFixtureSupportDuringProjectionSelection"|"SelectFixtureBySpotLabel"|"AxisLines"|"AxisLinesKinematicChain"|"BoundingBoxes"|"ShadowMapStatistics"|"UseBeamColorInformation"|"DrawMArkerBoundaries"|"ModelGroupStatistics"|"BeamLinesfadeout"|"Priority"|"Wireframed"|"Modelscandisableculling"|"Silhouettes"|"CullShadows"|"ShadowTransparency"|"ShowFPS"|"NativeColors"|"DeferredDevMode"|"LensShading"|"ShowLabelBackground"|"ShowLabel"|"ShowLabFixtureId"|"ShowLabPatch"|"ShowLabName"|"ShowLabCIE"|"ShowLabOnEnd"|"LinesOverlay"|"LabOnlySelection"|"LabSelectionPrio"|"ShowSpotLabelSubFixtureId"|"ArrangementDepth"|"ResourceStatistics3D"|"MarkFaultyMeshes"|"EnableBVHDebugging"|"ShowPickPoints"|"IgnoreSelectionRenderingOrder"|"ShowToolBar"|"ShowPigtails"|"ForceIterativeRendering"|"DevFlag1"|"DevFlag2"|"DevFlag3"|"DevFlag4", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"DesiredUiFps"|"DynamicGoboResolution"|"LabMaxCount"|"LightBeamOverdrawLimit", role: nil): integer
---@overload fun(name: "MultiBeamBorderSmoothness"|"TriangleCalibrationFactor"|"MultiBeamBlur"|"LabelBackgroundTransparency"|"LabelTextTransparency"|"ArrangementAlpha"|"BeamIntensity"|"SpotIntensity"|"CameraAnimationSpeedMeterSec"|"CameraAnimationSpeedDegreeSec"|"AmbientIntensity"|"PointLightIntensity"|"LuminousIntensitySpread"|"BackgroundIntensity"|"IgnoreNormals"|"StageBorder"|"ProportionalGain"|"IntegrationTime"|"DerivativeTime"|"TimeSlotMS"|"Dev1"|"Dev2"|"Dev3"|"Dev4", role: nil): number
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"TitleButtonMask", role: nil): string
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"DesiredUiFps"|"MultiBeamBorderSmoothness"|"TriangleCalibrationFactor"|"PlanarSelectionLines"|"MultiBeamBlur"|"DynamicGoboResolution"|"BeamFrustumsRender"|"Setup"|"SelectionMode"|"SelectionAllowEnvironmentObjects"|"Timing"|"Statistics"|"AntiAlias"|"Parallel"|"RenderGBufferTextures"|"DisableCalibration"|"DrawRubberbandMATricks"|"PrismLines"|"MarkUnpatched"|"PointOfOrigin"|"ShowSelection"|"RenderEnvironment"|"SubFixtureSupportDuringProjectionSelection"|"SelectFixtureBySpotLabel"|"AxisLines"|"AxisLinesKinematicChain"|"BoundingBoxes"|"ShadowMapStatistics"|"UseBeamColorInformation"|"DrawMArkerBoundaries"|"ModelGroupStatistics"|"PointLightColor"|"AmbientLightColor"|"BackgroundColor"|"LabBackgroundColor"|"LabTextColor"|"LabelBackgroundTransparency"|"LabelTextTransparency"|"ArrangementAlpha"|"Camera"|"RenderQuality"|"Stage"|"ArrangementMarcType"|"InputControl3d"|"BloomIntensity"|"BeamLinesfadeout"|"Priority"|"Wireframed"|"Modelscandisableculling"|"Silhouettes"|"CullShadows"|"ShadowTransparency"|"ShowFPS"|"NativeColors"|"DeferredDevMode"|"LensShading"|"BeamIntensity"|"SpotIntensity"|"CameraAnimationSpeedMeterSec"|"CameraAnimationSpeedDegreeSec"|"AmbientIntensity"|"PointLightIntensity"|"LuminousIntensitySpread"|"BackgroundIntensity"|"IgnoreNormals"|"StageBorder"|"ProportionalGain"|"IntegrationTime"|"DerivativeTime"|"ShowLabelBackground"|"ShowLabel"|"ShowLabFixtureId"|"ShowLabPatch"|"ShowLabName"|"ShowLabCIE"|"ShowLabOnEnd"|"TimeSlotMS"|"LinesOverlay"|"LabMaxCount"|"LabOnlySelection"|"LabSelectionPrio"|"ShowSpotLabelSubFixtureId"|"ArrangementDepth"|"ResourceStatistics3D"|"MarkFaultyMeshes"|"LabelFontSize"|"LightBeamOverdrawLimit"|"EnableBVHDebugging"|"ShowPickPoints"|"IgnoreSelectionRenderingOrder"|"ShowToolBar"|"ShowPigtails"|"ForceIterativeRendering"|"DevFlag1"|"DevFlag2"|"DevFlag3"|"DevFlag4"|"Dev1"|"Dev2"|"Dev3"|"Dev4", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function View3DSettings:Get(name, role) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Object", undo: Undo?): Object
---@overload fun(index: integer, class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(index: integer, class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(index: integer, class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(index: integer, class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(index: integer, class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(index: integer, class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(index: integer, class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(index: integer, class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(index: integer, class: "Plugin", undo: Undo?): Plugin
---@overload fun(index: integer, class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(index: integer, class: "Material", undo: Undo?): Material
---@overload fun(index: integer, class: "Image", undo: Undo?): Image
---@overload fun(index: integer, class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(index: integer, class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(index: integer, class: "Measurement", undo: Undo?): Measurement
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(index: integer, class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?): Object
function View3DSettings:Create(index, class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Object", undo: Undo?, count: integer?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?, count: integer?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?, count: integer?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?, count: integer?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?, count: integer?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?, count: integer?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?, count: integer?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?, count: integer?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?, count: integer?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?, count: integer?): CachedObj
---@overload fun(class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(class: "Image", undo: Undo?, count: integer?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?, count: integer?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?, count: integer?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?, count: integer?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?, count: integer?): TypedObject
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?, count: integer?): Object
function View3DSettings:Append(class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): Object
function View3DSettings:Acquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): Object
---@deprecated use "Acquire" instead
function View3DSettings:Aquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Object", undo: Undo?, count: integer?): Object
---@overload fun(index: integer, class: "GridContentFilterBase", undo: Undo?, count: integer?): GridContentFilterBase
---@overload fun(index: integer, class: "GridContentFilter", undo: Undo?, count: integer?): GridContentFilter
---@overload fun(index: integer, class: "GridObjectContentFilter", undo: Undo?, count: integer?): GridObjectContentFilter
---@overload fun(index: integer, class: "NamedObj", undo: Undo?, count: integer?): NamedObj
---@overload fun(index: integer, class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(index: integer, class: "GuidObject", undo: Undo?, count: integer?): GuidObject
---@overload fun(index: integer, class: "WindowSettings", undo: Undo?, count: integer?): WindowSettings
---@overload fun(index: integer, class: "GridSettings", undo: Undo?, count: integer?): GridSettings
---@overload fun(index: integer, class: "Plugin", undo: Undo?, count: integer?): Plugin
---@overload fun(index: integer, class: "CachedObj", undo: Undo?, count: integer?): CachedObj
---@overload fun(index: integer, class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(index: integer, class: "Image", undo: Undo?, count: integer?): Image
---@overload fun(index: integer, class: "ColorThemeContent", undo: Undo?, count: integer?): ColorThemeContent
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(index: integer, class: "TypedNamedObj", undo: Undo?, count: integer?): TypedNamedObj
---@overload fun(index: integer, class: "Measurement", undo: Undo?, count: integer?): Measurement
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(index: integer, class: "TypedObject", undo: Undo?, count: integer?): TypedObject
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Object
function View3DSettings:Insert(index, class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): Object
function View3DSettings:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ArrangementMarcType", property_value: ArrangementMarcType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "BloomIntensity", property_value: BloomIntensity3d|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Camera", property_value: Camera, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PointLightColor"|"AmbientLightColor"|"BackgroundColor"|"LabBackgroundColor"|"LabTextColor", property_value: Colors.RGB<float>, override_change_level: ChangeLevel?)
---@overload fun(property_name: "FontSize"|"LabelFontSize", property_value: FontSizes, override_change_level: ChangeLevel?)
---@overload fun(property_name: "InputControl3d", property_value: InputControl3d, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PreferenceHandle", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RenderQuality", property_value: RenderQuality, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SelectionMode", property_value: SelectionMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Stage", property_value: Stage, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"ShowTitleBar"|"RequestDefaultTitlebuttons"|"PlanarSelectionLines"|"BeamFrustumsRender"|"Setup"|"SelectionAllowEnvironmentObjects"|"Timing"|"Statistics"|"AntiAlias"|"Parallel"|"RenderGBufferTextures"|"DisableCalibration"|"DrawRubberbandMATricks"|"PrismLines"|"MarkUnpatched"|"PointOfOrigin"|"ShowSelection"|"RenderEnvironment"|"SubFixtureSupportDuringProjectionSelection"|"SelectFixtureBySpotLabel"|"AxisLines"|"AxisLinesKinematicChain"|"BoundingBoxes"|"ShadowMapStatistics"|"UseBeamColorInformation"|"DrawMArkerBoundaries"|"ModelGroupStatistics"|"BeamLinesfadeout"|"Priority"|"Wireframed"|"Modelscandisableculling"|"Silhouettes"|"CullShadows"|"ShadowTransparency"|"ShowFPS"|"NativeColors"|"DeferredDevMode"|"LensShading"|"ShowLabelBackground"|"ShowLabel"|"ShowLabFixtureId"|"ShowLabPatch"|"ShowLabName"|"ShowLabCIE"|"ShowLabOnEnd"|"LinesOverlay"|"LabOnlySelection"|"LabSelectionPrio"|"ShowSpotLabelSubFixtureId"|"ArrangementDepth"|"ResourceStatistics3D"|"MarkFaultyMeshes"|"EnableBVHDebugging"|"ShowPickPoints"|"IgnoreSelectionRenderingOrder"|"ShowToolBar"|"ShowPigtails"|"ForceIterativeRendering"|"DevFlag1"|"DevFlag2"|"DevFlag3"|"DevFlag4", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"DesiredUiFps"|"DynamicGoboResolution"|"LabMaxCount"|"LightBeamOverdrawLimit", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MultiBeamBorderSmoothness"|"TriangleCalibrationFactor"|"MultiBeamBlur"|"LabelBackgroundTransparency"|"LabelTextTransparency"|"ArrangementAlpha"|"BeamIntensity"|"SpotIntensity"|"CameraAnimationSpeedMeterSec"|"CameraAnimationSpeedDegreeSec"|"AmbientIntensity"|"PointLightIntensity"|"LuminousIntensitySpread"|"BackgroundIntensity"|"IgnoreNormals"|"StageBorder"|"ProportionalGain"|"IntegrationTime"|"DerivativeTime"|"TimeSlotMS"|"Dev1"|"Dev2"|"Dev3"|"Dev4", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
---@overload fun(property_name: "VisibleTitlebuttons", property_value: string[], override_change_level: ChangeLevel?)
function View3DSettings:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "ClockSource", property_value: ClockSources)
---@overload fun(property_name: "View", property_value: GelGridType)
---@overload fun(property_name: "SortBy", property_value: GelSortType)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayClockFormat)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatClockSource)
---@overload fun(property_name: "FontSize", property_value: FontSizes|SelectionViewFontSize)
---@overload fun(property_name: "FilterType", property_value: PSRPatchFilterType)
---@overload fun(property_name: "LineHeight", property_value: PhaserLineHeight|LineHeights|ButtonHeight)
---@overload fun(property_name: "ShownCue", property_value: Cue)
---@overload fun(property_name: "SessionTimeStyle", property_value: SessionTimeStyle)
---@overload fun(property_name: "SessionTimeStyleTZ", property_value: SessionTimeStyleTZ)
---@overload fun(property_name: "StageFilter", property_value: None_only)
---@overload fun(property_name: "StageFilterList", property_value: integer[])
---@overload fun(property_name: "TrackpadMode", property_value: TrackpadMode)
---@overload fun(property_name: "Pivot", property_value: Math.TVector<float>)
---@overload fun(property_name: "Source", property_value: CachedObjectSource)
---@overload fun(property_name: "TrackpadPTInvertMode", property_value: TrackpadPTInvertMode)
---@overload fun(property_name: "CameraMode", property_value: CameraMode)
---@overload fun(property_name: "Version", property_value: Stream.Version)
---@overload fun(property_name: "TrackpadPTMode", property_value: TrackpadPTMode)
---@overload fun(property_name: "UserRights", property_value: UserRights)
---@overload fun(property_name: "EditTools", property_value: PhaserEditTool)
---@overload fun(property_name: "Category", property_value: MessageCategory)
---@overload fun(property_name: "Priority", property_value: MessagePriority)
---@overload fun(property_name: "AbsRelMode", property_value: PhaserAbsRelMode)
---@overload fun(property_name: "DisplayMode", property_value: PresetDisplayMode)
---@overload fun(property_name: "Mode1D", property_value: PhaserMode1D)
---@overload fun(property_name: "Action", property_value: PluginPoolAction|SequenceAction|PresetActionToken|TimecodeSlotPoolAction|TimecodePoolAction|PresetAction|SoundPoolAction|FilterAction|VideoPoolAction|MacroPoolAction)
---@overload fun(property_name: "Tool", property_value: AgendaTool|LayoutTool|TimecodeTool)
---@overload fun(property_name: "CursorScrollMode", property_value: TimeCursorScrollMode)
---@overload fun(property_name: "ViewMode", property_value: DmxSheetSettingsViewMode|ShaperViewMode|PhaserViewMode|AgendaViewMode|TCViewMode)
---@overload fun(property_name: "TextMode", property_value: TCTextMode)
---@overload fun(property_name: "TimerAction", property_value: TimerAction)
---@overload fun(property_name: "Attributes", property_value: AttributeMode)
---@overload fun(property_name: "EncoderBar", property_value: PhaserBars)
---@overload fun(property_name: "Layer", property_value: TrackLayerAuto|ProgLayerAuto)
---@overload fun(property_name: "RememberedTab", property_value: SpecialWindowRememberedTab|WindowInfoTab)
---@overload fun(property_name: "LinkMode", property_value: InfoLinkMode|ShaperEncoderLinkMode)
---@overload fun(property_name: "WindowMode", property_value: InfoWindowMode)
---@overload fun(property_name: "ShowCreatorSettings", property_value: ShowCreatorSettings)
---@overload fun(property_name: "GridType", property_value: GridType)
---@overload fun(property_name: "AppearanceMode", property_value: InfoAppearanceMode)
---@overload fun(property_name: "ContentSheetCueMode", property_value: ContentSheetCueMode)
---@overload fun(property_name: "FixtureAppearance", property_value: FixtureAppearanceMode)
---@overload fun(property_name: "Guid", property_value: Key128)
---@overload fun(property_name: "FixtureGraphic", property_value: FixtureGraphicMode)
---@overload fun(property_name: "Scribble", property_value: Scribble)
---@overload fun(property_name: "FixtureGraphicSource", property_value: FixturGraphicSource)
---@overload fun(property_name: "ObjectType", property_value: ShowCreatorObjectType)
---@overload fun(property_name: "CuePartAppearanceContent", property_value: CuePartAppearanceContent)
---@overload fun(property_name: "Tags", property_value: TagMap)
---@overload fun(property_name: "ZoomFactor", property_value: ZoomFactor)
---@overload fun(property_name: "SortColorBySaturation", property_value: SortColorBy)
---@overload fun(property_name: "UseChannelSet", property_value: AutoCreateSource)
---@overload fun(property_name: "Layout", property_value: Layout)
---@overload fun(property_name: "LastTab", property_value: ExecEditorTab)
---@overload fun(property_name: "CanvasFitMode", property_value: LayoutStretch)
---@overload fun(property_name: "DefaultColumns", property_value: Property<Container.HashFlatSet<GridLine, Container.MemPtrFlatHashPolicies<GridLine, 0>>>.`vftable')
---@overload fun(property_name: "StartOfWeek", property_value: WeekDay)
---@overload fun(property_name: "FixtureSourceType", property_value: FixtureSourceType)
---@overload fun(property_name: "InterpolationTo", property_value: MeasurementInterpolation)
---@overload fun(property_name: "MultiLedBeamMode", property_value: MultiLedBeamMode)
---@overload fun(property_name: "BeamMode", property_value: BeamMode)
---@overload fun(property_name: "GridStyle", property_value: LayoutGridStyle)
---@overload fun(property_name: "BeamModePatch", property_value: BeamModePatch)
---@overload fun(property_name: "LinkType", property_value: SequenceLinkType)
---@overload fun(property_name: "ShadowMode", property_value: ShadowMode)
---@overload fun(property_name: "GoboMode", property_value: GoboMode)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "DilutionType", property_value: FalloffType)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode|SelectionModeLayout)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "FitType", property_value: LayoutFitType)
---@overload fun(property_name: "BodyQuality3d", property_value: BodyQuality3d)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "BodyQuality3dPatch", property_value: BodyQuality3dPatch)
---@overload fun(property_name: "PlaybacksToShow", property_value: PlaybacksToShow)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "LayoutOutputSelection", property_value: LayoutOutputSelection)
---@overload fun(property_name: "Filter", property_value: Filter)
---@overload fun(property_name: "ColorPickerSettings", property_value: ColorPickerSettings)
---@overload fun(property_name: "MergeCells", property_value: SheetSettingsMergeMode)
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "LassoFilter", property_value: LayoutLassoSelectionFilter)
---@overload fun(property_name: "ShaperWindowSettings", property_value: ShaperWindowSettings)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "Address", property_value: DMXPropertyAddress)
---@overload fun(property_name: "AddressMode", property_value: DmxSheetSettingsAddressMode)
---@overload fun(property_name: "Target", property_value: Mesh)
---@overload fun(property_name: "Levelbar", property_value: DmxSheetSettingsLevelbar)
---@overload fun(property_name: "Readout", property_value: DMXValueReadoutMode)
---@overload fun(property_name: "SelectedColumnConfiguration", property_value: GridColumnConfiguration)
---@overload fun(property_name: "DispView", property_value: DispView)
---@overload fun(property_name: "Universe", property_value: DmxSheetSettingsSelected)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "ColorMixMode", property_value: ColorMixMode)
---@overload fun(property_name: "Mode", property_value: GridContentFilterMode|ColorPickerWindowMode)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "ColorWheelMode", property_value: ColorWheelMode)
---@overload fun(property_name: "FilterDialogPosition", property_value: ItemGroupPosition)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "LastColorEncoderFunction", property_value: ColorEncoderFunction)
---@overload fun(property_name: "FilterDialogSize", property_value: Dimension)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "Countdown", property_value: SequenceCountdown)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "CuePartAppearance", property_value: CuePartAppearance)
---@overload fun(property_name: "BarMode", property_value: ShaperBarMode)
---@overload fun(property_name: "ControlMode", property_value: ShaperControlMode)
---@overload fun(property_name: "PoolColumnsCount", property_value: DefinedPoolColumns)
---@overload fun(property_name: "MiniFadersMode", property_value: MiniFadersMode)
---@overload fun(property_name: "ProductCategory", property_value: RDMProductCategory)
---@overload fun(property_name: "DataPool", property_value: Pool)
---@overload fun(property_name: "ResetBlade", property_value: fun(str: string, int: integer) : boolean)
---@overload fun(property_name: "PoolType", property_value: Pooltype)
---@overload fun(property_name: "ActiveDisplay", property_value: ActiveDisplay)
---@overload fun(property_name: "ActiveDisplay", property_value: ActiveDisplay)
---@overload fun(property_name: "Tool", property_value: AgendaTool)
---@overload fun(property_name: "ViewMode", property_value: AgendaViewMode)
---@overload fun(property_name: "Appearance"|"Appearance", property_value: Appearance)
---@overload fun(property_name: "Attributes", property_value: AttributeMode)
---@overload fun(property_name: "UseChannelSet", property_value: AutoCreateSource)
---@overload fun(property_name: "BeamMode", property_value: BeamMode)
---@overload fun(property_name: "BeamModePatch", property_value: BeamModePatch)
---@overload fun(property_name: "BodyQuality3d", property_value: BodyQuality3d)
---@overload fun(property_name: "BodyQuality3dPatch", property_value: BodyQuality3dPatch)
---@overload fun(property_name: "LineHeight", property_value: ButtonHeight)
---@overload fun(property_name: "Source", property_value: CachedObjectSource)
---@overload fun(property_name: "CameraMode", property_value: CameraMode)
---@overload fun(property_name: "ChannelSetReadout"|"ChannelSetReadout", property_value: ChannelSetReadoutMode)
---@overload fun(property_name: "ClockSource", property_value: ClockSources)
---@overload fun(property_name: "ColorMode"|"ColorMode"|"ColorMode", property_value: ColorDisplayModeAuto)
---@overload fun(property_name: "LastColorEncoderFunction", property_value: ColorEncoderFunction)
---@overload fun(property_name: "ColorMixMode", property_value: ColorMixMode)
---@overload fun(property_name: "ColorPickerSettings", property_value: ColorPickerSettings)
---@overload fun(property_name: "Mode", property_value: ColorPickerWindowMode)
---@overload fun(property_name: "ColorWheelMode", property_value: ColorWheelMode)
---@overload fun(property_name: "DisplayModeCM"|"DisplayModeExec", property_value: CommandWingBarDisplayMode)
---@overload fun(property_name: "ContentSheetCueMode", property_value: ContentSheetCueMode)
---@overload fun(property_name: "ShownCue", property_value: Cue)
---@overload fun(property_name: "CuePartAppearance", property_value: CuePartAppearance)
---@overload fun(property_name: "CuePartAppearanceContent", property_value: CuePartAppearanceContent)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "Address", property_value: DMXPropertyAddress)
---@overload fun(property_name: "Readout", property_value: DMXValueReadoutMode)
---@overload fun(property_name: "SelectedDay"|"VisibleDate", property_value: DatumMode)
---@overload fun(property_name: "PoolColumnsCount", property_value: DefinedPoolColumns)
---@overload fun(property_name: "FilterDialogSize", property_value: Dimension)
---@overload fun(property_name: "ResolutionPT"|"Resolution", property_value: DimmerWheelResolution)
---@overload fun(property_name: "DispView", property_value: DispView)
---@overload fun(property_name: "AddressMode", property_value: DmxSheetSettingsAddressMode)
---@overload fun(property_name: "Levelbar", property_value: DmxSheetSettingsLevelbar)
---@overload fun(property_name: "Universe", property_value: DmxSheetSettingsSelected)
---@overload fun(property_name: "ViewMode", property_value: DmxSheetSettingsViewMode)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "LastTab", property_value: ExecEditorTab)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "DilutionType", property_value: FalloffType)
---@overload fun(property_name: "Filter", property_value: Filter)
---@overload fun(property_name: "Action", property_value: FilterAction)
---@overload fun(property_name: "FixtureGraphicSource", property_value: FixturGraphicSource)
---@overload fun(property_name: "FixtureAppearance", property_value: FixtureAppearanceMode)
---@overload fun(property_name: "FixtureGraphic", property_value: FixtureGraphicMode)
---@overload fun(property_name: "FixtureSourceType", property_value: FixtureSourceType)
---@overload fun(property_name: "FontSize", property_value: FontSizes)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatClockSource)
---@overload fun(property_name: "FrameReadout"|"FrameReadout"|"FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "View", property_value: GelGridType)
---@overload fun(property_name: "SortBy", property_value: GelSortType)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "GoboMode", property_value: GoboMode)
---@overload fun(property_name: "SelectedColumnConfiguration", property_value: GridColumnConfiguration)
---@overload fun(property_name: "Mode", property_value: GridContentFilterMode)
---@overload fun(property_name: "GridType", property_value: GridType)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "AppearanceMode", property_value: InfoAppearanceMode)
---@overload fun(property_name: "LinkMode", property_value: InfoLinkMode)
---@overload fun(property_name: "WindowMode", property_value: InfoWindowMode)
---@overload fun(property_name: "FilterDialogPosition", property_value: ItemGroupPosition)
---@overload fun(property_name: "Guid", property_value: Key128)
---@overload fun(property_name: "Layout", property_value: Layout)
---@overload fun(property_name: "FitType", property_value: LayoutFitType)
---@overload fun(property_name: "GridStyle", property_value: LayoutGridStyle)
---@overload fun(property_name: "LassoFilter", property_value: LayoutLassoSelectionFilter)
---@overload fun(property_name: "LayoutOutputSelection", property_value: LayoutOutputSelection)
---@overload fun(property_name: "CanvasFitMode", property_value: LayoutStretch)
---@overload fun(property_name: "Tool", property_value: LayoutTool)
---@overload fun(property_name: "PosX"|"PosY"|"PosZ"|"PivotDistMin"|"Near"|"Far"|"PivotDistMax", property_value: LengthPropertyValue)
---@overload fun(property_name: "LineHeight", property_value: LineHeights)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Action", property_value: MacroPoolAction)
---@overload fun(property_name: "Pivot", property_value: Math.TVector<float>)
---@overload fun(property_name: "InterpolationTo", property_value: MeasurementInterpolation)
---@overload fun(property_name: "Target", property_value: Mesh)
---@overload fun(property_name: "Category", property_value: MessageCategory)
---@overload fun(property_name: "Priority", property_value: MessagePriority)
---@overload fun(property_name: "MiniFadersMode", property_value: MiniFadersMode)
---@overload fun(property_name: "MultiLedBeamMode", property_value: MultiLedBeamMode)
---@overload fun(property_name: "StageFilter", property_value: None_only)
---@overload fun(property_name: "Filter"|"SelectedAgenda"|"FixedTarget"|"Values"|"Filter"|"Target"|"PreferenceHandle"|"DestinationObject", property_value: Object)
---@overload fun(property_name: "DirectAction"|"Executors"|"Labels"|"Executors"|"Row400"|"Row100"|"Row300"|"Labels"|"Row400"|"Row200"|"Row300"|"Row100"|"Row200"|"Labels"|"Executors", property_value: OnOff|boolean)
---@overload fun(property_name: "FilterType", property_value: PSRPatchFilterType)
---@overload fun(property_name: "AbsRelMode", property_value: PhaserAbsRelMode)
---@overload fun(property_name: "EncoderBar", property_value: PhaserBars)
---@overload fun(property_name: "EditTools", property_value: PhaserEditTool)
---@overload fun(property_name: "LineHeight", property_value: PhaserLineHeight)
---@overload fun(property_name: "Mode1D", property_value: PhaserMode1D)
---@overload fun(property_name: "ViewMode", property_value: PhaserViewMode)
---@overload fun(property_name: "PlaybacksToShow", property_value: PlaybacksToShow)
---@overload fun(property_name: "Action", property_value: PluginPoolAction)
---@overload fun(property_name: "DataPool", property_value: Pool)
---@overload fun(property_name: "PoolType", property_value: Pooltype)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Action", property_value: PresetAction)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "DisplayMode", property_value: PresetDisplayMode)
---@overload fun(property_name: "PresetMode"|"PresetModeInternal", property_value: PresetMode)
---@overload fun(property_name: "PresetReadout"|"PresetReadout"|"PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "Layer", property_value: ProgLayerAuto)
---@overload fun(property_name: "DefaultColumns", property_value: Property<Container.HashFlatSet<GridLine, Container.MemPtrFlatHashPolicies<GridLine, 0>>>.`vftable')
---@overload fun(property_name: "ProductCategory", property_value: RDMProductCategory)
---@overload fun(property_name: "Scribble", property_value: Scribble)
---@overload fun(property_name: "ScrollH"|"ScrollV", property_value: ScrollType)
---@overload fun(property_name: "#Sections"|"#Sections", property_value: SectionCount)
---@overload fun(property_name: "SelectionMode", property_value: SelectionModeLayout)
---@overload fun(property_name: "FontSize", property_value: SelectionViewFontSize)
---@overload fun(property_name: "Action", property_value: SequenceAction)
---@overload fun(property_name: "Countdown", property_value: SequenceCountdown)
---@overload fun(property_name: "LinkType", property_value: SequenceLinkType)
---@overload fun(property_name: "SessionTimeStyle", property_value: SessionTimeStyle)
---@overload fun(property_name: "SessionTimeStyleTZ", property_value: SessionTimeStyleTZ)
---@overload fun(property_name: "ShadowMode", property_value: ShadowMode)
---@overload fun(property_name: "BarMode", property_value: ShaperBarMode)
---@overload fun(property_name: "ControlMode", property_value: ShaperControlMode)
---@overload fun(property_name: "LinkMode", property_value: ShaperEncoderLinkMode)
---@overload fun(property_name: "ViewMode", property_value: ShaperViewMode)
---@overload fun(property_name: "ShaperWindowSettings", property_value: ShaperWindowSettings)
---@overload fun(property_name: "SheetMode"|"SheetMode", property_value: SheetMode)
---@overload fun(property_name: "MergeCells", property_value: SheetSettingsMergeMode)
---@overload fun(property_name: "ObjectType", property_value: ShowCreatorObjectType)
---@overload fun(property_name: "ShowCreatorSettings", property_value: ShowCreatorSettings)
---@overload fun(property_name: "SortColorBySaturation", property_value: SortColorBy)
---@overload fun(property_name: "Action", property_value: SoundPoolAction)
---@overload fun(property_name: "RememberedTab", property_value: SpecialWindowRememberedTab)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "Speed"|"Speed"|"Speed", property_value: SpeedReadoutModeAuto)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "Version", property_value: Stream.Version)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "TextMode", property_value: TCTextMode)
---@overload fun(property_name: "ViewMode", property_value: TCViewMode)
---@overload fun(property_name: "Tags", property_value: TagMap)
---@overload fun(property_name: "CursorScrollMode", property_value: TimeCursorScrollMode)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayClockFormat)
---@overload fun(property_name: "TimeDisplayFormat"|"TimeDisplayFormat"|"TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Timecode"|"CurrentTimecode"|"TimecodeHandle", property_value: Timecode)
---@overload fun(property_name: "Action", property_value: TimecodePoolAction)
---@overload fun(property_name: "Action", property_value: TimecodeSlotPoolAction)
---@overload fun(property_name: "Tool", property_value: TimecodeTool)
---@overload fun(property_name: "TimerAction", property_value: TimerAction)
---@overload fun(property_name: "Layer", property_value: TrackLayerAuto)
---@overload fun(property_name: "TrackpadMode", property_value: TrackpadMode)
---@overload fun(property_name: "TrackpadPTInvertMode", property_value: TrackpadPTInvertMode)
---@overload fun(property_name: "TrackpadPTMode", property_value: TrackpadPTMode)
---@overload fun(property_name: "NoteLabelColor"|"PixelColor"|"PoolColor"|"EmptyColor"|"ForNoneColor"|"GridColor"|"ForSomeColor"|"ForAllColor", property_value: UColor)
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "UserRights", property_value: UserRights)
---@overload fun(property_name: "Readout"|"Readout"|"Readout", property_value: ValueReadoutModeAuto)
---@overload fun(property_name: "Action", property_value: VideoPoolAction)
---@overload fun(property_name: "StartOfWeek", property_value: WeekDay)
---@overload fun(property_name: "RememberedTab", property_value: WindowInfoTab)
---@overload fun(property_name: "WingID"|"WingID"|"WingID", property_value: WingID)
---@overload fun(property_name: "Filter"|"InputFilter", property_value: World)
---@overload fun(property_name: "ShowLayerToolbar"|"ShowShowHistory"|"ShowScreenEncoder"|"AddAlpha"|"ShowStepButtons"|"Invisible"|"ShowEncoderPageSelector"|"AutoGenerated"|"ShowChannels"|"ShowSecondFractals"|"ShowTitleBar"|"ShowCustomSection"|"RequestDefaultTitlebuttons"|"ShowMasterSection"|"ShowPageSection"|"HideEnvironmental"|"ShowMasterSectionKnobs"|"ShowLabels"|"ShowHardwareButtons"|"ShowGrandMasterSection"|"Installed"|"TrackpadTapForClick"|"IsResource"|"InStream"|"ShowBeams"|"Absolute"|"Relative"|"StepBar"|"FilterProgOnly"|"LayerSheet"|"AttributeSheet"|"ShowEmptyLines"|"LayerBar"|"ShowTime"|"TimelineOnly"|"ShowTimeline"|"FollowTimeCursor"|"PlaybackToolbar"|"EventDiamond"|"EventSymbol"|"EventCueNumber"|"EventCueName"|"ProgOnly"|"ShowTabs"|"EventCmdIndicator"|"FilterSelection"|"GridLines"|"DependenciesAllowed"|"Markerintracks"|"FeatureSort"|"ToolBar"|"FixtureSort"|"MAtricksTransformation"|"ShowLayerToolbar"|"CenterlineX"|"ShowFilterToolbar"|"CenterlineY"|"UseTargetAppearance"|"HasWorldFilter"|"AlignBar"|"ShowTracked"|"EditMode"|"AutoScroll"|"FixtureSelect"|"ShowEmpty"|"HasSequenceFilter"|"FeatureGraphic"|"ShowParts"|"AutoScroll"|"HasGroupFilter"|"ShowNameField"|"ShowManualCueSelection"|"HasPresetFilter"|"ShowIDType"|"CreateReferenceObject"|"HasLayoutFilter"|"HideSubfixtures"|"SheetStyle"|"AllSequenceItems"|"ShowNameField"|"UseColorBook"|"AllGroupItems"|"ShowIDType"|"FixtureGrid"|"AllPresetItems"|"DefaultsLoaded"|"Advanced"|"AllWorldItems"|"ExpandAtFilter"|"AllLayoutItems"|"IncludeDependencies"|"GapsImport"|"GapsExport"|"AllowAddContent"|"Setup"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting"|"AllColumnsVisible"|"IgnoreNetwork"|"SnaptoGrid"|"AllColumnsInvisible"|"Enabled"|"StructureLocked"|"AutoFit"|"SystemLocked"|"Setup"|"ShowSteps"|"Lock"|"RightClickToEdit"|"SequencePlaybackStatus"|"ShowSelection"|"SequenceSettings"|"CompressedTiming"|"CueSettings"|"CueTiming"|"Enabled"|"MyPlaybacksOnly"|"MIBSettings"|"SheetStyle"|"PresetTiming"|"OffMode"|"Transposed"|"Note"|"EmptyLastCooking"|"AdjustColumns"|"Cmd"|"HoldList"|"Hidden"|"NoFixedColumns"|"Loops"|"EnableX"|"TrackSheet"|"EnableY"|"ShowName"|"ForceExpanded"|"SelectionOnly"|"AutoColumns"|"EnableZ"|"EnableGrid"|"ShowKey"|"HazeEnabled"|"ShowTabs"|"RememberSorting"|"EnableShuffle"|"LinkToEncoderBank"|"EnableLayers"|"SkipPatched"|"ShowGrandMaster"|"MAgic"|"FeatureSort"|"ShowCustomMasters"|"FixtureSort"|"OnlySelection"|"BrightnessOverdriveMode"|"ShowLayerToolbar"|"TestBar"|"ShowFilterToolbar"|"Attribute"|"ShowUserSettings"|"Id"|"ShowStepButtons"|"AutoScroll"|"Value"|"ShowEncoderBank"|"OwnDataPresent"|"CueOnly"|"ShowLayerToolbar"|"OwnNonCookedDataPresent"|"FadeEncoder"|"ShowCommandlineField"|"ShowRecipes"|"ShowTimeButtons"|"ShowNotes"|"ShowEncoderPageSelector"|"ShowEmpty"|"RecipeTemplate"|"FeatureGraphic"|"ShowToolPopups"|"TestCommand"|"ShowFunctionSelector"|"ShowEncoderLabel"|"ShowBottomMenu"|"ShowGrandMaster"|"ShowPov"|"RightClickToEdit"|"FadeEncoder"|"AutoPov"|"ObjectActionEnabled"|"ShowFunctionSelector"|"ShowResetBar"|"ShowEncoderLabel"|"ShowUserSettings"|"DrawActiveMode"|"ShowTimeButtons"|"ShowToolPopups"|"ShowEncoderBank", property_value: YesNo|boolean)
---@overload fun(property_name: "ZoomFactor", property_value: ZoomFactor)
---@overload fun(property_name: "GetEnableFillUpRight"|"GetEnableUnifyLeft"|"GetEnableUnifyRight"|"AgendaSelected"|"DisableGlobalPresetUpdate"|"GetEnableFillUpLeft"|"GetEnableClone"|"DaySelected", property_value: boolean)
---@overload fun(property_name: "OnUniverseUpClicked"|"OnUniverseDownClicked", property_value: fun(dummyStr: string, button: MouseButtonTypes, X: integer, Y: integer) : boolean)
---@overload fun(property_name: "ResetBlade", property_value: fun(str: string, int: integer) : boolean)
---@overload fun(property_name: "ResetSelectedDay"|"ChangeWindowMode"|"ChangeLinkMode"|"JumpToNext"|"ObtainCurrentCue"|"JumpToToday"|"ResetPov"|"JumpToPrevious"|"ResetShaper"|"ResetAllBlades"|"ResetSelectedAgenda"|"ResetRotation", property_value: fun(text: string) : boolean)
---@overload fun(property_name: "HazeLayers"|"Height"|"Page"|"Cont.Size"|"Cont.Ref"|"TCSlot"|"ColumnsCount"|"RealtimeIteration"|"SplitSize"|"AutoColumnsWidth"|"Page"|"VisibleGrid"|"TimerIndex"|"SnapGrid"|"PaddingBottom"|"LastConnectionTime"|"PaddingLeft"|"DimmerIncrement"|"PaddingRight"|"AmountHue"|"PaddingTop"|"Mode"|"MemoryLimit"|"AmountSaturation"|"ParameterCount"|"InitialWhiteFilter"|"ColumnsCount"|"Page"|"FileSize"|"Index"|"Page"|"Count"|"SplitSize"|"No"|"SoftwareID"|"PoolObjectContentSizeLimitation"|"SubPoolSelectorValue"|"SubPoolSelectorIndex"|"Texture"|"Width", property_value: integer)
---@overload fun(property_name: "StageFilterList", property_value: integer[])
---@overload fun(property_name: "RowHeightFactor"|"Timezone"|"Physical"|"Zoom"|"FOV"|"Pan"|"Tilt"|"Roll"|"ResolutionScale3D"|"ResolutionScaleLight"|"DilutionScale"|"NativeColors"|"Scale"|"Aspect"|"HazeParticleQuality"|"HazeScale"|"HazeParticleSize"|"HazeBlend"|"HazeAnimationSpeed", property_value: number)
---@overload fun(property_name: "GridColumnConfigurationType"|"Type"|"User"|"LastReceivedMidi"|"ChildName"|"FeatureGroup"|"ContentFilterType"|"*"|"Trigger"|"NewShowStartDescription"|"Type"|"LayerFilter"|"TimezoneStr"|"TitlePrefix"|"StoredData"|"ClassFilter"|"FileName"|"FixtureTypeFilter"|"Type"|"ToolAction"|"FileName"|"SelectedFilter"|"FilePath"|"GroupName"|"Interface"|"FileContent"|"Author"|"SelectionCount"|"DependencyExport"|"ManufacturerID"|"Path"|"DeviceModelID"|"Name"|"Note"|"SoftwareVersionLabel"|"Comment"|"Description"|"Note"|"DisplayPool"|"TargetName"|"SelectedDataPool", property_value: string)
---@overload fun(property_name: "LayerFilterList"|"ClassFilterList"|"FixtureTypeFilterList"|"VisibleTitlebuttons", property_value: string[])
function View3DSettings:ActiveDisplay(property_name, property_value) end