---@meta

---@class Addon: NamedObj
---@field Author string
---@field Version string
---@field Data8 integer[]
---@field DataIP Manet.IP4[]
---@field Data64 integer[]
---@field DataDouble number[]
---@field DataString string[]
local Addon = {}
---@return "Addon"
function Addon:GetClass() end
---@return "AddonApi"
function Addon:GetChildClass() end
---@return Addons
function Addon:Parent() end
---@param index integer
---@return AddonApi
function Addon:Ptr(index) end
---@return AddonApi[]
function Addon:Children() end
---@return AddonApi?
function Addon:CurrentChild() end
---@overload fun(name: "DataIP", role: nil): Manet.IP4[]
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Data8"|"Data64", role: nil): integer[]
---@overload fun(name: "DataDouble", role: nil): number[]
---@overload fun(name: "Author"|"Version"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DataString", role: nil): string[]
---@overload fun(name: "Author"|"Version"|"Data8"|"DataIP"|"Data64"|"DataDouble"|"DataString"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): AddonApi
function Addon:Get(name, role) end
---@generic T : AddonApi
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): AddonApi
function Addon:Create(index, class, undo) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): AddonApi
function Addon:Append(class, undo, count) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AddonApi
function Addon:Acquire(class, undo) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AddonApi
---@deprecated use "Acquire" instead
function Addon:Aquire(class, undo) end
---@generic T : AddonApi
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AddonApi
function Addon:Insert(index, class, undo, count) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AddonApi
function Addon:Find(class, undo) end