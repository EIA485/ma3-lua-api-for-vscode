---@meta

---@class DriveCollect: Object
local DriveCollect = {}
---@return "DriveCollect"
function DriveCollect:GetClass() end
---@return "Drive"
function DriveCollect:GetChildClass() end
---@param index integer
---@return Drive
function DriveCollect:Ptr(index) end
---@return Drive[]
function DriveCollect:Children() end
---@return Drive?
function DriveCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Drive
function DriveCollect:Get(name, role) end
---@overload fun(index: integer, class: "Drive", undo: Undo?): Drive
---@overload fun(index: integer, class: nil, undo: Undo?): Drive
function DriveCollect:Create(index, class, undo) end
---@overload fun(class: "Drive", undo: Undo?, count: integer?): Drive
---@overload fun(class: nil, undo: Undo?, count: integer?): Drive
function DriveCollect:Append(class, undo, count) end
---@overload fun(class: "Drive", undo: Undo?): Drive
---@overload fun(class: nil, undo: Undo?): Drive
function DriveCollect:Acquire(class, undo) end
---@overload fun(class: "Drive", undo: Undo?): Drive
---@overload fun(class: nil, undo: Undo?): Drive
---@deprecated use "Acquire" instead
function DriveCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Drive", undo: Undo?, count: integer?): Drive
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Drive
function DriveCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Drive"): Drive
---@overload fun(name: string, class: nil): Drive
function DriveCollect:Find(name, class) end
---@overload fun(name: string, class: "Drive"): Drive
---@overload fun(name: string, class: nil): Object
function DriveCollect:FindRecursive(name, class) end
