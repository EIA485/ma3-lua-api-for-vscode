---@meta

---@class RemoteCollect: Object
---@field Enabled integer
---@field FeedbackInput integer
local RemoteCollect = {
    Enabled="No",
    FeedbackInput="No"
}
---@return "RemoteCollect"
function RemoteCollect:GetClass() end
---@return "Remote"
function RemoteCollect:GetChildClass() end
---@return Remotes
function RemoteCollect:Parent() end
---@param index integer
---@return Remote
function RemoteCollect:Ptr(index) end
---@return Remote[]
function RemoteCollect:Children() end
---@return Remote?
function RemoteCollect:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Enabled"|"FeedbackInput", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Enabled"|"FeedbackInput", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Remote
function RemoteCollect:Get(name, role) end
---@overload fun(index: integer, class: "Remote", undo: Undo?): Remote
---@overload fun(index: integer, class: nil, undo: Undo?): Remote
function RemoteCollect:Create(index, class, undo) end
---@overload fun(class: "Remote", undo: Undo?, count: integer?): Remote
---@overload fun(class: nil, undo: Undo?, count: integer?): Remote
function RemoteCollect:Append(class, undo, count) end
---@overload fun(class: "Remote", undo: Undo?): Remote
---@overload fun(class: nil, undo: Undo?): Remote
function RemoteCollect:Acquire(class, undo) end
---@overload fun(class: "Remote", undo: Undo?): Remote
---@overload fun(class: nil, undo: Undo?): Remote
---@deprecated use "Acquire" instead
function RemoteCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Remote", undo: Undo?, count: integer?): Remote
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Remote
function RemoteCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Remote"): Remote
---@overload fun(name: string, class: nil): Remote
function RemoteCollect:Find(name, class) end
---@overload fun(name: string, class: "Remote"): Remote
---@overload fun(name: string, class: nil): Object
function RemoteCollect:FindRecursive(name, class) end
