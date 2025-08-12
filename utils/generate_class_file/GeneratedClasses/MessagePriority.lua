---@meta

---@class MessagePriority: Object
---@field Count integer Shows how many messages are stored for this priority
---@field CreateNotification integer
local MessagePriority = {
    CreateNotification="false"
}
---@return "MessagePriority"
function MessagePriority:GetClass() end
---@return "Object"
function MessagePriority:GetChildClass() end
---@return MessageCategory
function MessagePriority:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Count"|"CreateNotification", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Count"|"CreateNotification", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MessagePriority:Get(name, role) end
