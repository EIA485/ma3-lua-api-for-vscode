---@meta

---@class Certificates: Object
---@field SerialNumber string
---@field Date string
---@field WorldserverExpireTime number
local Certificates = {
    WorldserverExpireTime="0"
}
---@return "Certificates"
function Certificates:GetClass() end
---@return "Certificate"
function Certificates:GetChildClass() end
---@return Root
function Certificates:Parent() end
---@param index integer
---@return Certificate
function Certificates:Ptr(index) end
---@return Certificate[]
function Certificates:Children() end
---@return Certificate?
function Certificates:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "WorldserverExpireTime", role: nil): number
---@overload fun(name: "SerialNumber"|"Date"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SerialNumber"|"Date"|"WorldserverExpireTime"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Certificate
function Certificates:Get(name, role) end
---@generic T : Certificate
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Certificate
function Certificates:Create(index, class, undo) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Certificate
function Certificates:Append(class, undo, count) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Certificate
function Certificates:Acquire(class, undo) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Certificate
---@deprecated use "Acquire" instead
function Certificates:Aquire(class, undo) end
---@generic T : Certificate
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Certificate
function Certificates:Insert(index, class, undo, count) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Certificate
function Certificates:Find(class, undo) end