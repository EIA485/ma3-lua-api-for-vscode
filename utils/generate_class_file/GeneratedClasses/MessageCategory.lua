---@meta

---@class MessageCategory: Object
---@field CreateNotification integer
local MessageCategory = {
    CreateNotification="false"
}
---@return "MessageCategory"
function MessageCategory:GetClass() end
---@return "MessagePriority"
function MessageCategory:GetChildClass() end
---@return MessageCenter
function MessageCategory:Parent() end
---@param index integer
---@return MessagePriority
function MessageCategory:Ptr(index) end
---@return MessagePriority[]
function MessageCategory:Children() end
---@return MessagePriority?
function MessageCategory:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"CreateNotification", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"CreateNotification", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MessagePriority
function MessageCategory:Get(name, role) end
---@overload fun(index: integer, class: "MessagePriority", undo: Undo?): MessagePriority
---@overload fun(index: integer, class: nil, undo: Undo?): MessagePriority
function MessageCategory:Create(index, class, undo) end
---@overload fun(class: "MessagePriority", undo: Undo?, count: integer?): MessagePriority
---@overload fun(class: nil, undo: Undo?, count: integer?): MessagePriority
function MessageCategory:Append(class, undo, count) end
---@overload fun(class: "MessagePriority", undo: Undo?): MessagePriority
---@overload fun(class: nil, undo: Undo?): MessagePriority
function MessageCategory:Acquire(class, undo) end
---@overload fun(class: "MessagePriority", undo: Undo?): MessagePriority
---@overload fun(class: nil, undo: Undo?): MessagePriority
---@deprecated use "Acquire" instead
function MessageCategory:Aquire(class, undo) end
---@overload fun(index: integer, class: "MessagePriority", undo: Undo?, count: integer?): MessagePriority
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessagePriority
function MessageCategory:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MessagePriority"): MessagePriority
---@overload fun(name: string, class: nil): MessagePriority
function MessageCategory:Find(name, class) end
---@overload fun(name: string, class: "MessagePriority"): MessagePriority
---@overload fun(name: string, class: nil): Object
function MessageCategory:FindRecursive(name, class) end
