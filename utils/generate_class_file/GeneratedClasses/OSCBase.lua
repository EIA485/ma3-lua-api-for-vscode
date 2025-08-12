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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"EnableInput"|"EnableOutput", role: nil): integer
---@overload fun(name: "Interface", role: nil): string
---@overload fun(name: "PreferredIP", role: nil): Manet.IP4
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"EnableInput"|"EnableOutput"|"Interface"|"PreferredIP", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OSCData
function OSCBase:Get(name, role) end
---@overload fun(index: integer, class: "OSCData", undo: Undo?): OSCData
---@overload fun(index: integer, class: nil, undo: Undo?): OSCData
function OSCBase:Create(index, class, undo) end
---@overload fun(class: "OSCData", undo: Undo?, count: integer?): OSCData
---@overload fun(class: nil, undo: Undo?, count: integer?): OSCData
function OSCBase:Append(class, undo, count) end
---@overload fun(class: "OSCData", undo: Undo?): OSCData
---@overload fun(class: nil, undo: Undo?): OSCData
function OSCBase:Acquire(class, undo) end
---@overload fun(class: "OSCData", undo: Undo?): OSCData
---@overload fun(class: nil, undo: Undo?): OSCData
---@deprecated use "Acquire" instead
function OSCBase:Aquire(class, undo) end
---@overload fun(index: integer, class: "OSCData", undo: Undo?, count: integer?): OSCData
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OSCData
function OSCBase:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "OSCData"): OSCData
---@overload fun(name: string, class: nil): OSCData
function OSCBase:Find(name, class) end
---@overload fun(name: string, class: "OSCData"): OSCData
---@overload fun(name: string, class: nil): Object
function OSCBase:FindRecursive(name, class) end
