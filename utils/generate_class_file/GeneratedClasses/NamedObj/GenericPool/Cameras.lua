---@meta

---@class Cameras: GenericPool
local Cameras = {}
---@return "Cameras"
function Cameras:GetClass() end
---@return "Camera"
function Cameras:GetChildClass() end
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
---@overload fun(index: integer, class: "Camera", undo: Undo?): Camera
---@overload fun(index: integer, class: nil, undo: Undo?): Camera
function Cameras:Create(index, class, undo) end
---@overload fun(class: "Camera", undo: Undo?, count: integer?): Camera
---@overload fun(class: nil, undo: Undo?, count: integer?): Camera
function Cameras:Append(class, undo, count) end
---@overload fun(class: "Camera", undo: Undo?): Camera
---@overload fun(class: nil, undo: Undo?): Camera
function Cameras:Acquire(class, undo) end
---@overload fun(class: "Camera", undo: Undo?): Camera
---@overload fun(class: nil, undo: Undo?): Camera
---@deprecated use "Acquire" instead
function Cameras:Aquire(class, undo) end
---@overload fun(index: integer, class: "Camera", undo: Undo?, count: integer?): Camera
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Camera
function Cameras:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Camera"): Camera
---@overload fun(name: string, class: nil): Camera
function Cameras:Find(name, class) end
---@overload fun(name: string, class: "Camera"): Camera
---@overload fun(name: string, class: nil): Object
function Cameras:FindRecursive(name, class) end
