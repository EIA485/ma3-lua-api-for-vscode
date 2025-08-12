---@meta

---@class Connector: NamedObj
---@field Type ConnectorType
---@field Gender ConnectorGender
---@field DMXBreak integer
---@field Length number
local Connector = {
    Type="XLR5",
    Gender="Universal",
    DMXBreak="1",
    Length="0"
}
---@return "Connector"
function Connector:GetClass() end
---@return "PowerConsumption"
function Connector:GetChildClass() end
---@return Connectors
function Connector:Parent() end
---@param index integer
---@return PowerConsumption
function Connector:Ptr(index) end
---@return PowerConsumption[]
function Connector:Children() end
---@return PowerConsumption?
function Connector:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type", role: nil): ConnectorType
---@overload fun(name: "Gender", role: nil): ConnectorGender
---@overload fun(name: "DMXBreak", role: nil): integer
---@overload fun(name: "Length", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Gender"|"DMXBreak"|"Length", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): PowerConsumption
function Connector:Get(name, role) end
---@overload fun(index: integer, class: "PowerConsumption", undo: Undo?): PowerConsumption
---@overload fun(index: integer, class: nil, undo: Undo?): PowerConsumption
function Connector:Create(index, class, undo) end
---@overload fun(class: "PowerConsumption", undo: Undo?, count: integer?): PowerConsumption
---@overload fun(class: nil, undo: Undo?, count: integer?): PowerConsumption
function Connector:Append(class, undo, count) end
---@overload fun(class: "PowerConsumption", undo: Undo?): PowerConsumption
---@overload fun(class: nil, undo: Undo?): PowerConsumption
function Connector:Acquire(class, undo) end
---@overload fun(class: "PowerConsumption", undo: Undo?): PowerConsumption
---@overload fun(class: nil, undo: Undo?): PowerConsumption
---@deprecated use "Acquire" instead
function Connector:Aquire(class, undo) end
---@overload fun(index: integer, class: "PowerConsumption", undo: Undo?, count: integer?): PowerConsumption
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PowerConsumption
function Connector:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PowerConsumption"): PowerConsumption
---@overload fun(name: string, class: nil): PowerConsumption
function Connector:Find(name, class) end
---@overload fun(name: string, class: "PowerConsumption"): PowerConsumption
---@overload fun(name: string, class: nil): Object
function Connector:FindRecursive(name, class) end
