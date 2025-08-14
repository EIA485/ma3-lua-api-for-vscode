---@meta

---@class RDMPort: Object RDM port
---@field UniverseIndex integer
local RDMPort = {}
---@return "RDMPort"
function RDMPort:GetClass() end
---@return "RDMFixture"
function RDMPort:GetChildClass() end
---@return RDMPorts
function RDMPort:Parent() end
---@param index integer
---@return RDMFixture
function RDMPort:Ptr(index) end
---@return RDMFixture[]
function RDMPort:Children() end
---@return RDMFixture?
function RDMPort:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "UniverseIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "UniverseIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): RDMFixture
function RDMPort:Get(name, role) end
---@generic T : RDMFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RDMFixture
function RDMPort:Create(index, class, undo) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMFixture
function RDMPort:Append(class, undo, count) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixture
function RDMPort:Acquire(class, undo) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixture
---@deprecated use "Acquire" instead
function RDMPort:Aquire(class, undo) end
---@generic T : RDMFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMFixture
function RDMPort:Insert(index, class, undo, count) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixture
function RDMPort:Find(class, undo) end