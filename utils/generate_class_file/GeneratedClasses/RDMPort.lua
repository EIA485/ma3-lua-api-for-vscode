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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"UniverseIndex", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UniverseIndex", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): RDMFixture
function RDMPort:Get(name, role) end
---@overload fun(index: integer, class: "RDMFixture", undo: Undo?): RDMFixture
---@overload fun(index: integer, class: nil, undo: Undo?): RDMFixture
function RDMPort:Create(index, class, undo) end
---@overload fun(class: "RDMFixture", undo: Undo?, count: integer?): RDMFixture
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMFixture
function RDMPort:Append(class, undo, count) end
---@overload fun(class: "RDMFixture", undo: Undo?): RDMFixture
---@overload fun(class: nil, undo: Undo?): RDMFixture
function RDMPort:Acquire(class, undo) end
---@overload fun(class: "RDMFixture", undo: Undo?): RDMFixture
---@overload fun(class: nil, undo: Undo?): RDMFixture
---@deprecated use "Acquire" instead
function RDMPort:Aquire(class, undo) end
---@overload fun(index: integer, class: "RDMFixture", undo: Undo?, count: integer?): RDMFixture
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMFixture
function RDMPort:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RDMFixture"): RDMFixture
---@overload fun(name: string, class: nil): RDMFixture
function RDMPort:Find(name, class) end
---@overload fun(name: string, class: "RDMFixture"): RDMFixture
---@overload fun(name: string, class: nil): Object
function RDMPort:FindRecursive(name, class) end
