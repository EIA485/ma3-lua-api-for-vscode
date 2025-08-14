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
---@overload fun(name: "WorldServerStatus"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Visible"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "WorldServer"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "WorldServer"|"WorldServerStatus"|"Visible"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): CloudMember
function Cloud:Get(name, role) end
---@generic T : CloudMember
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): CloudMember
function Cloud:Create(index, class, undo) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): CloudMember
function Cloud:Append(class, undo, count) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CloudMember
function Cloud:Acquire(class, undo) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CloudMember
---@deprecated use "Acquire" instead
function Cloud:Aquire(class, undo) end
---@generic T : CloudMember
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CloudMember
function Cloud:Insert(index, class, undo, count) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CloudMember
function Cloud:Find(class, undo) end