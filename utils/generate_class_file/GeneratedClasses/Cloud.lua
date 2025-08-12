---@meta

---@class Cloud: Object
---@field WorldServer string
---@field WorldServerStatus boolean
---@field Visible integer
local Cloud = {
    Visible="0"
}
---@return "Cloud"
function Cloud:GetClass() end
---@return "CloudMember"
function Cloud:GetChildClass() end
---@return Root
function Cloud:Parent() end
---@param index integer
---@return CloudMember
function Cloud:Ptr(index) end
---@return CloudMember[]
function Cloud:Children() end
---@return CloudMember?
function Cloud:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "WorldServer", role: nil): string
---@overload fun(name: "WorldServerStatus", role: nil): boolean
---@overload fun(name: "Visible", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"WorldServer"|"WorldServerStatus"|"Visible", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): CloudMember
function Cloud:Get(name, role) end
---@overload fun(index: integer, class: "CloudMember", undo: Undo?): CloudMember
---@overload fun(index: integer, class: nil, undo: Undo?): CloudMember
function Cloud:Create(index, class, undo) end
---@overload fun(class: "CloudMember", undo: Undo?, count: integer?): CloudMember
---@overload fun(class: nil, undo: Undo?, count: integer?): CloudMember
function Cloud:Append(class, undo, count) end
---@overload fun(class: "CloudMember", undo: Undo?): CloudMember
---@overload fun(class: nil, undo: Undo?): CloudMember
function Cloud:Acquire(class, undo) end
---@overload fun(class: "CloudMember", undo: Undo?): CloudMember
---@overload fun(class: nil, undo: Undo?): CloudMember
---@deprecated use "Acquire" instead
function Cloud:Aquire(class, undo) end
---@overload fun(index: integer, class: "CloudMember", undo: Undo?, count: integer?): CloudMember
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CloudMember
function Cloud:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "CloudMember"): CloudMember
---@overload fun(name: string, class: nil): CloudMember
function Cloud:Find(name, class) end
---@overload fun(name: string, class: "CloudMember"): CloudMember
---@overload fun(name: string, class: nil): Object
function Cloud:FindRecursive(name, class) end
