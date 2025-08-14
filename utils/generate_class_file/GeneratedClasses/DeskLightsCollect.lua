---@meta

---@class DeskLightsCollect: Object
---@field LedFeedbackDuration integer
local DeskLightsCollect = {
    LedFeedbackDuration="30"
}
---@return "DeskLightsCollect"
function DeskLightsCollect:GetClass() end
---@return "DeskLightsSet"
function DeskLightsCollect:GetChildClass() end
---@return StationSettings
function DeskLightsCollect:Parent() end
---@param index integer
---@return DeskLightsSet
function DeskLightsCollect:Ptr(index) end
---@return DeskLightsSet[]
function DeskLightsCollect:Children() end
---@return DeskLightsSet?
function DeskLightsCollect:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "LedFeedbackDuration"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "LedFeedbackDuration"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DeskLightsSet
function DeskLightsCollect:Get(name, role) end
---@generic T : DeskLightsSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Create(index, class, undo) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DeskLightsSet
function DeskLightsCollect:Append(class, undo, count) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Acquire(class, undo) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
---@deprecated use "Acquire" instead
function DeskLightsCollect:Aquire(class, undo) end
---@generic T : DeskLightsSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DeskLightsSet
function DeskLightsCollect:Insert(index, class, undo, count) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Find(class, undo) end