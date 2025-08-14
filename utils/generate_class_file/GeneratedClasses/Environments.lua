---@meta

---@class Environments: Object
---@field ActiveEnvironment integer
local Environments = {
    ActiveEnvironment="0"
}
---@return "Environments"
function Environments:GetClass() end
---@return "UserEnvironment"
function Environments:GetChildClass() end
---@return UserProfile
function Environments:Parent() end
---@param index integer
---@return UserEnvironment
function Environments:Ptr(index) end
---@return UserEnvironment[]
function Environments:Children() end
---@return UserEnvironment?
function Environments:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ActiveEnvironment"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "ActiveEnvironment"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UserEnvironment
function Environments:Get(name, role) end
---@generic T : UserEnvironment
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserEnvironment
function Environments:Create(index, class, undo) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserEnvironment
function Environments:Append(class, undo, count) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserEnvironment
function Environments:Acquire(class, undo) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserEnvironment
---@deprecated use "Acquire" instead
function Environments:Aquire(class, undo) end
---@generic T : UserEnvironment
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserEnvironment
function Environments:Insert(index, class, undo, count) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserEnvironment
function Environments:Find(class, undo) end