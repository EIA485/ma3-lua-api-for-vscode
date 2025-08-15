---@meta

---@class RenderQualities: GenericPool
local RenderQualities = {}
---@return "RenderQualities"
function RenderQualities:GetClass() end
---@return "RenderQuality"
function RenderQualities:GetChildClass() end
---@generic T : RenderQualities
---@param class `T`
---@return boolean
function RenderQualities:IsClass(class) end
---@return UserProfile
function RenderQualities:Parent() end
---@param index integer
---@return RenderQuality
function RenderQualities:Ptr(index) end
---@return RenderQuality[]
function RenderQualities:Children() end
---@return RenderQuality?
function RenderQualities:CurrentChild() end
---@overload fun(name: integer, role: nil): RenderQuality
function RenderQualities:Get(name, role) end
---@generic T : RenderQuality
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RenderQuality
function RenderQualities:Create(index, class, undo) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RenderQuality
function RenderQualities:Append(class, undo, count) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RenderQuality
function RenderQualities:Acquire(class, undo) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RenderQuality
---@deprecated use "Acquire" instead
function RenderQualities:Aquire(class, undo) end
---@generic T : RenderQuality
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RenderQuality
function RenderQualities:Insert(index, class, undo, count) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RenderQuality
function RenderQualities:Find(class, undo) end
---@overload fun(property_name: "BeamMode", property_value: BeamMode)
---@overload fun(property_name: "HazeLayers", property_value: integer)
---@overload fun(property_name: "BodyQuality3d", property_value: BodyQuality3d)
---@overload fun(property_name: "BeamModePatch", property_value: BeamModePatch)
---@overload fun(property_name: "HazeEnabled", property_value: YesNo|boolean)
---@overload fun(property_name: "BodyQuality3dPatch", property_value: BodyQuality3dPatch)
---@overload fun(property_name: "ShadowMode", property_value: ShadowMode)
---@overload fun(property_name: "GoboMode", property_value: GoboMode)
---@overload fun(property_name: "DilutionType", property_value: FalloffType)
---@overload fun(property_name: "MultiLedBeamMode", property_value: MultiLedBeamMode)
---@overload fun(property_name: "BeamMode", property_value: BeamMode)
---@overload fun(property_name: "BeamModePatch", property_value: BeamModePatch)
---@overload fun(property_name: "BodyQuality3d", property_value: BodyQuality3d)
---@overload fun(property_name: "BodyQuality3dPatch", property_value: BodyQuality3dPatch)
---@overload fun(property_name: "DilutionType", property_value: FalloffType)
---@overload fun(property_name: "GoboMode", property_value: GoboMode)
---@overload fun(property_name: "MultiLedBeamMode", property_value: MultiLedBeamMode)
---@overload fun(property_name: "ShadowMode", property_value: ShadowMode)
---@overload fun(property_name: "HazeEnabled", property_value: YesNo|boolean)
---@overload fun(property_name: "HazeLayers", property_value: integer)
---@overload fun(property_name: "NativeColors"|"ResolutionScaleLight"|"HazeParticleQuality"|"HazeScale"|"ResolutionScale3D"|"HazeParticleSize"|"HazeBlend"|"DilutionScale"|"HazeAnimationSpeed", property_value: number)
function RenderQualities:MultiLedBeamMode(property_name, property_value) end