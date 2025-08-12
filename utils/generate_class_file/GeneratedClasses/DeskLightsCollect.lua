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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"LedFeedbackDuration", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"LedFeedbackDuration", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DeskLightsSet
function DeskLightsCollect:Get(name, role) end
---@overload fun(index: integer, class: "DeskLightsSet", undo: Undo?): DeskLightsSet
---@overload fun(index: integer, class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Create(index, class, undo) end
---@overload fun(class: "DeskLightsSet", undo: Undo?, count: integer?): DeskLightsSet
---@overload fun(class: nil, undo: Undo?, count: integer?): DeskLightsSet
function DeskLightsCollect:Append(class, undo, count) end
---@overload fun(class: "DeskLightsSet", undo: Undo?): DeskLightsSet
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Acquire(class, undo) end
---@overload fun(class: "DeskLightsSet", undo: Undo?): DeskLightsSet
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
---@deprecated use "Acquire" instead
function DeskLightsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "DeskLightsSet", undo: Undo?, count: integer?): DeskLightsSet
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DeskLightsSet
function DeskLightsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DeskLightsSet"): DeskLightsSet
---@overload fun(name: string, class: nil): DeskLightsSet
function DeskLightsCollect:Find(name, class) end
---@overload fun(name: string, class: "DeskLightsSet"): DeskLightsSet
---@overload fun(name: string, class: nil): Object
function DeskLightsCollect:FindRecursive(name, class) end
