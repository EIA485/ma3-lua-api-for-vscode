---@meta

---@class RenderQuality: GuidObject
---@field MultiLedBeamMode MultiLedBeamMode
---@field BeamMode BeamMode
---@field BeamModePatch BeamMode
---@field ShadowMode ShadowMode
---@field GoboMode GoboMode
---@field ResolutionScale3D number
---@field ResolutionScaleLight number
---@field DilutionScale number
---@field NativeColors number
---@field DilutionType FalloffType
---@field BodyQuality3d BodyQuality3d
---@field BodyQuality3dPatch BodyQuality3d
---@field HazeParticleQuality number
---@field HazeScale number
---@field HazeParticleSize number
---@field HazeBlend number
---@field HazeAnimationSpeed number
---@field HazeLayers integer
---@field HazeEnabled integer
local RenderQuality = {
    ResolutionScale3D="100.0",
    ResolutionScaleLight="100.0",
    DilutionScale="100.0",
    NativeColors="0.0",
    HazeParticleQuality="50.0",
    HazeScale="100.0",
    HazeParticleSize="50.0",
    HazeBlend="90.0",
    HazeAnimationSpeed="15.0",
    HazeLayers="4",
    HazeEnabled="false"
}
---@return "RenderQuality"
function RenderQuality:GetClass() end
---@return "Object"
function RenderQuality:GetChildClass() end
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
---@overload fun(name: "MultiLedBeamMode", role: nil): MultiLedBeamMode
---@overload fun(name: "BeamMode"|"BeamModePatch", role: nil): BeamMode
---@overload fun(name: "ShadowMode", role: nil): ShadowMode
---@overload fun(name: "GoboMode", role: nil): GoboMode
---@overload fun(name: "ResolutionScale3D"|"ResolutionScaleLight"|"DilutionScale"|"NativeColors", role: nil): number
---@overload fun(name: "DilutionType", role: nil): FalloffType
---@overload fun(name: "BodyQuality3d"|"BodyQuality3dPatch", role: nil): BodyQuality3d
---@overload fun(name: "HazeParticleQuality"|"HazeScale"|"HazeParticleSize"|"HazeBlend"|"HazeAnimationSpeed", role: nil): number
---@overload fun(name: "HazeLayers"|"HazeEnabled", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"MultiLedBeamMode"|"BeamMode"|"BeamModePatch"|"ShadowMode"|"GoboMode"|"ResolutionScale3D"|"ResolutionScaleLight"|"DilutionScale"|"NativeColors"|"DilutionType"|"BodyQuality3d"|"BodyQuality3dPatch"|"HazeParticleQuality"|"HazeScale"|"HazeParticleSize"|"HazeBlend"|"HazeAnimationSpeed"|"HazeLayers"|"HazeEnabled", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RenderQuality:Get(name, role) end
