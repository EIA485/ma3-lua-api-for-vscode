---@meta

---@class Cameras: GenericPool
local Cameras = {}
---@return "Cameras"
function Cameras:GetClass() end
---@return "Camera"
function Cameras:GetChildClass() end
---@generic T : Cameras
---@param class `T`
---@return boolean
function Cameras:IsClass(class) end
---@return UserProfile
function Cameras:Parent() end
---@param index integer
---@return Camera
function Cameras:Ptr(index) end
---@return Camera[]
function Cameras:Children() end
---@return Camera?
function Cameras:CurrentChild() end
---@overload fun(name: integer, role: nil): Camera
function Cameras:Get(name, role) end
---@generic T : Camera
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Camera
function Cameras:Create(index, class, undo) end
---@generic T : Camera
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Camera
function Cameras:Append(class, undo, count) end
---@generic T : Camera
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Camera
function Cameras:Acquire(class, undo) end
---@generic T : Camera
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Camera
---@deprecated use "Acquire" instead
function Cameras:Aquire(class, undo) end
---@generic T : Camera
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Camera
function Cameras:Insert(index, class, undo, count) end
---@generic T : Camera
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Camera
function Cameras:Find(class, undo) end
---@overload fun(property_name: "CameraMode", property_value: CameraMode)
---@overload fun(property_name: "Pivot", property_value: Math.TVector<float>)
---@overload fun(property_name: "CameraMode", property_value: CameraMode)
---@overload fun(property_name: "PosX"|"PosY"|"PosZ"|"PivotDistMin"|"Near"|"Far"|"PivotDistMax", property_value: LengthPropertyValue)
---@overload fun(property_name: "Pivot", property_value: Math.TVector<float>)
---@overload fun(property_name: "Pan"|"Tilt"|"Roll"|"Zoom"|"FOV", property_value: number)
function Cameras:Pivot(property_name, property_value) end