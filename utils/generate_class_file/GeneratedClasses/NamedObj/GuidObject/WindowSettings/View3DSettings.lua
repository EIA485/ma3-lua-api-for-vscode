---@meta

---@class View3DSettings: WindowSettings
---@field DesiredUiFps integer
---@field MultiBeamBorderSmoothness number
---@field TriangleCalibrationFactor number
---@field PlanarSelectionLines integer Planar Selection Lines
---@field MultiBeamBlur number
---@field DynamicGoboResolution integer
---@field BeamFrustumsRender integer Enable BeamFrustums Render
---@field Setup integer Enable Setup Mode
---@field SelectionMode SelectionMode
---@field SelectionAllowEnvironmentObjects integer
---@field Timing integer Enable the Timing output
---@field Statistics integer Enable the statistics output
---@field AntiAlias integer
---@field Parallel integer
---@field RenderGBufferTextures integer
---@field DisableCalibration integer
---@field DrawRubberbandMATricks integer
---@field PrismLines integer
---@field MarkUnpatched integer
---@field PointOfOrigin integer
---@field ShowSelection integer
---@field RenderEnvironment integer
---@field SubFixtureSupportDuringProjectionSelection integer
---@field SelectFixtureBySpotLabel integer
---@field AxisLines integer
---@field AxisLinesKinematicChain integer
---@field BoundingBoxes integer
---@field ShadowMapStatistics integer
---@field UseBeamColorInformation integer
---@field DrawMArkerBoundaries integer
---@field ModelGroupStatistics integer
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
---@field BloomIntensity BloomIntensity3d
---@field BeamLinesfadeout integer Enable linear fade out when rendering beam lines
---@field Priority integer 3D Framerate has priority. The UI Framerate may suffer from it.
---@field Wireframed integer Enable wireframe mode
---@field Modelscandisableculling integer Enable wireframe mode
---@field Silhouettes integer Enable the selection silhouettes
---@field CullShadows integer
---@field ShadowTransparency integer
---@field ShowFPS integer
---@field NativeColors integer
---@field DeferredDevMode integer
---@field LensShading integer
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
---@field ShowLabelBackground integer
---@field ShowLabel integer
---@field ShowLabFixtureId integer
---@field ShowLabPatch integer
---@field ShowLabName integer
---@field ShowLabCIE integer
---@field ShowLabOnEnd integer
---@field TimeSlotMS number
---@field LinesOverlay integer
---@field LabMaxCount integer
---@field LabOnlySelection integer
---@field LabSelectionPrio integer
---@field ShowSpotLabelSubFixtureId integer
---@field ArrangementDepth integer
---@field ResourceStatistics3D integer
---@field MarkFaultyMeshes integer
---@field LabelFontSize FontSizes
---@field LightBeamOverdrawLimit integer
---@field EnableBVHDebugging integer
---@field ShowPickPoints integer
---@field IgnoreSelectionRenderingOrder integer
---@field ShowToolBar integer
---@field ShowPigtails integer
---@field ForceIterativeRendering integer
---@field DevFlag1 integer
---@field DevFlag2 integer
---@field DevFlag3 integer
---@field DevFlag4 integer
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "ShowTitleBar", role: nil): integer
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "RequestDefaultTitlebuttons", role: nil): integer
---@overload fun(name: "TitleButtonMask", role: nil): string
---@overload fun(name: "DesiredUiFps", role: nil): integer
---@overload fun(name: "MultiBeamBorderSmoothness"|"TriangleCalibrationFactor", role: nil): number
---@overload fun(name: "PlanarSelectionLines", role: nil): integer
---@overload fun(name: "MultiBeamBlur", role: nil): number
---@overload fun(name: "DynamicGoboResolution"|"BeamFrustumsRender"|"Setup", role: nil): integer
---@overload fun(name: "SelectionMode", role: nil): SelectionMode
---@overload fun(name: "SelectionAllowEnvironmentObjects"|"Timing"|"Statistics"|"AntiAlias"|"Parallel"|"RenderGBufferTextures"|"DisableCalibration"|"DrawRubberbandMATricks"|"PrismLines"|"MarkUnpatched"|"PointOfOrigin"|"ShowSelection"|"RenderEnvironment"|"SubFixtureSupportDuringProjectionSelection"|"SelectFixtureBySpotLabel"|"AxisLines"|"AxisLinesKinematicChain"|"BoundingBoxes"|"ShadowMapStatistics"|"UseBeamColorInformation"|"DrawMArkerBoundaries"|"ModelGroupStatistics", role: nil): integer
---@overload fun(name: "PointLightColor"|"AmbientLightColor"|"BackgroundColor"|"LabBackgroundColor"|"LabTextColor", role: nil): Colors.RGB<float>
---@overload fun(name: "LabelBackgroundTransparency"|"LabelTextTransparency"|"ArrangementAlpha", role: nil): number
---@overload fun(name: "Camera", role: nil): Camera
---@overload fun(name: "RenderQuality", role: nil): RenderQuality
---@overload fun(name: "Stage", role: nil): Stage
---@overload fun(name: "ArrangementMarcType", role: nil): ArrangementMarcType
---@overload fun(name: "InputControl3d", role: nil): InputControl3d
---@overload fun(name: "BloomIntensity", role: nil): BloomIntensity3d
---@overload fun(name: "BeamLinesfadeout"|"Priority"|"Wireframed"|"Modelscandisableculling"|"Silhouettes"|"CullShadows"|"ShadowTransparency"|"ShowFPS"|"NativeColors"|"DeferredDevMode"|"LensShading", role: nil): integer
---@overload fun(name: "BeamIntensity"|"SpotIntensity"|"CameraAnimationSpeedMeterSec"|"CameraAnimationSpeedDegreeSec"|"AmbientIntensity"|"PointLightIntensity"|"LuminousIntensitySpread"|"BackgroundIntensity"|"IgnoreNormals"|"StageBorder"|"ProportionalGain"|"IntegrationTime"|"DerivativeTime", role: nil): number
---@overload fun(name: "ShowLabelBackground"|"ShowLabel"|"ShowLabFixtureId"|"ShowLabPatch"|"ShowLabName"|"ShowLabCIE"|"ShowLabOnEnd", role: nil): integer
---@overload fun(name: "TimeSlotMS", role: nil): number
---@overload fun(name: "LinesOverlay"|"LabMaxCount"|"LabOnlySelection"|"LabSelectionPrio"|"ShowSpotLabelSubFixtureId"|"ArrangementDepth"|"ResourceStatistics3D"|"MarkFaultyMeshes", role: nil): integer
---@overload fun(name: "LabelFontSize", role: nil): FontSizes
---@overload fun(name: "LightBeamOverdrawLimit"|"EnableBVHDebugging"|"ShowPickPoints"|"IgnoreSelectionRenderingOrder"|"ShowToolBar"|"ShowPigtails"|"ForceIterativeRendering"|"DevFlag1"|"DevFlag2"|"DevFlag3"|"DevFlag4", role: nil): integer
---@overload fun(name: "Dev1"|"Dev2"|"Dev3"|"Dev4", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"DesiredUiFps"|"MultiBeamBorderSmoothness"|"TriangleCalibrationFactor"|"PlanarSelectionLines"|"MultiBeamBlur"|"DynamicGoboResolution"|"BeamFrustumsRender"|"Setup"|"SelectionMode"|"SelectionAllowEnvironmentObjects"|"Timing"|"Statistics"|"AntiAlias"|"Parallel"|"RenderGBufferTextures"|"DisableCalibration"|"DrawRubberbandMATricks"|"PrismLines"|"MarkUnpatched"|"PointOfOrigin"|"ShowSelection"|"RenderEnvironment"|"SubFixtureSupportDuringProjectionSelection"|"SelectFixtureBySpotLabel"|"AxisLines"|"AxisLinesKinematicChain"|"BoundingBoxes"|"ShadowMapStatistics"|"UseBeamColorInformation"|"DrawMArkerBoundaries"|"ModelGroupStatistics"|"PointLightColor"|"AmbientLightColor"|"BackgroundColor"|"LabBackgroundColor"|"LabTextColor"|"LabelBackgroundTransparency"|"LabelTextTransparency"|"ArrangementAlpha"|"Camera"|"RenderQuality"|"Stage"|"ArrangementMarcType"|"InputControl3d"|"BloomIntensity"|"BeamLinesfadeout"|"Priority"|"Wireframed"|"Modelscandisableculling"|"Silhouettes"|"CullShadows"|"ShadowTransparency"|"ShowFPS"|"NativeColors"|"DeferredDevMode"|"LensShading"|"BeamIntensity"|"SpotIntensity"|"CameraAnimationSpeedMeterSec"|"CameraAnimationSpeedDegreeSec"|"AmbientIntensity"|"PointLightIntensity"|"LuminousIntensitySpread"|"BackgroundIntensity"|"IgnoreNormals"|"StageBorder"|"ProportionalGain"|"IntegrationTime"|"DerivativeTime"|"ShowLabelBackground"|"ShowLabel"|"ShowLabFixtureId"|"ShowLabPatch"|"ShowLabName"|"ShowLabCIE"|"ShowLabOnEnd"|"TimeSlotMS"|"LinesOverlay"|"LabMaxCount"|"LabOnlySelection"|"LabSelectionPrio"|"ShowSpotLabelSubFixtureId"|"ArrangementDepth"|"ResourceStatistics3D"|"MarkFaultyMeshes"|"LabelFontSize"|"LightBeamOverdrawLimit"|"EnableBVHDebugging"|"ShowPickPoints"|"IgnoreSelectionRenderingOrder"|"ShowToolBar"|"ShowPigtails"|"ForceIterativeRendering"|"DevFlag1"|"DevFlag2"|"DevFlag3"|"DevFlag4"|"Dev1"|"Dev2"|"Dev3"|"Dev4", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function View3DSettings:Get(name, role) end
