---@meta

---@class OSCBase: Object
---@field EnableInput integer
---@field EnableOutput integer
---@field Interface string
---@field PreferredIP Manet.IP4
local OSCBase = {
    EnableInput="No",
    EnableOutput="No",
    Interface="0"
}
---@return "OSCBase"
function OSCBase:GetClass() end
---@return "OSCData"
function OSCBase:GetChildClass() end
---@return ShowData
function OSCBase:Parent() end
---@param index integer
---@return OSCData
function OSCBase:Ptr(index) end
---@return OSCData[]
function OSCBase:Children() end
---@return OSCData?
function OSCBase:CurrentChild() end
---@overload fun(name: "PreferredIP", role: nil): Manet.IP4
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "EnableInput"|"EnableOutput"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Interface"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "EnableInput"|"EnableOutput"|"Interface"|"PreferredIP"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OSCData
function OSCBase:Get(name, role) end
---@generic T : OSCData
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): OSCData
function OSCBase:Create(index, class, undo) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): OSCData
function OSCBase:Append(class, undo, count) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OSCData
function OSCBase:Acquire(class, undo) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OSCData
---@deprecated use "Acquire" instead
function OSCBase:Aquire(class, undo) end
---@generic T : OSCData
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OSCData
function OSCBase:Insert(index, class, undo, count) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OSCData
function OSCBase:Find(class, undo) end