---@meta

---@class DriveCollect: Object
local DriveCollect = {}
---@return "DriveCollect"
function DriveCollect:GetClass() end
---@return "Drive"
function DriveCollect:GetChildClass() end
---@generic T : DriveCollect
---@param class `T`
---@return boolean
function DriveCollect:IsClass(class) end
---@param index integer
---@return Drive
function DriveCollect:Ptr(index) end
---@return Drive[]
function DriveCollect:Children() end
---@return Drive?
function DriveCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Drive
function DriveCollect:Get(name, role) end
---@generic T : Drive
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Drive
function DriveCollect:Create(index, class, undo) end
---@generic T : Drive
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Drive
function DriveCollect:Append(class, undo, count) end
---@generic T : Drive
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Drive
function DriveCollect:Acquire(class, undo) end
---@generic T : Drive
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Drive
---@deprecated use "Acquire" instead
function DriveCollect:Aquire(class, undo) end
---@generic T : Drive
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Drive
function DriveCollect:Insert(index, class, undo, count) end
---@generic T : Drive
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Drive
function DriveCollect:Find(class, undo) end
---@overload fun(property_name: "FreeSpaceStr", property_value: string)
---@overload fun(property_name: "FreeSpace"|"TotalSpace", property_value: integer)
---@overload fun(property_name: "FreeSpaceStr", property_value: string)
function DriveCollect:FreeSpaceStr(property_name, property_value) end