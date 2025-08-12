---@meta

---@class ProgUpdate: Object
---@field DataPoolNo integer
---@field DataPoolName string
---@field Parent string
---@field Name string
---@field Number string
local ProgUpdate = {}
---@return "ProgUpdate"
function ProgUpdate:GetClass() end
---@return "Object"
function ProgUpdate:GetChildClass() end
---@return ProgUpdateCollect
function ProgUpdate:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DataPoolNo", role: nil): integer
---@overload fun(name: "DataPoolName"|"Parent"|"Name"|"Number", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DataPoolNo"|"DataPoolName"|"Parent"|"Name"|"Number", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ProgUpdate:Get(name, role) end
