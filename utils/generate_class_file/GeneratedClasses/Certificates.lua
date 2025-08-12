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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SerialNumber"|"Date", role: nil): string
---@overload fun(name: "WorldserverExpireTime", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SerialNumber"|"Date"|"WorldserverExpireTime", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Certificate
function Certificates:Get(name, role) end
---@overload fun(index: integer, class: "Certificate", undo: Undo?): Certificate
---@overload fun(index: integer, class: nil, undo: Undo?): Certificate
function Certificates:Create(index, class, undo) end
---@overload fun(class: "Certificate", undo: Undo?, count: integer?): Certificate
---@overload fun(class: nil, undo: Undo?, count: integer?): Certificate
function Certificates:Append(class, undo, count) end
---@overload fun(class: "Certificate", undo: Undo?): Certificate
---@overload fun(class: nil, undo: Undo?): Certificate
function Certificates:Acquire(class, undo) end
---@overload fun(class: "Certificate", undo: Undo?): Certificate
---@overload fun(class: nil, undo: Undo?): Certificate
---@deprecated use "Acquire" instead
function Certificates:Aquire(class, undo) end
---@overload fun(index: integer, class: "Certificate", undo: Undo?, count: integer?): Certificate
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Certificate
function Certificates:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Certificate"): Certificate
---@overload fun(name: string, class: nil): Certificate
function Certificates:Find(name, class) end
---@overload fun(name: string, class: "Certificate"): Certificate
---@overload fun(name: string, class: nil): Object
function Certificates:FindRecursive(name, class) end
