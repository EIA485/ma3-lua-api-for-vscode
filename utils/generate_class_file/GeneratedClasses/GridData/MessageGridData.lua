---@meta

---@class MessageGridData: GridData
---@field OnSelectMessageType fun(str: string) : boolean Action to select the current message type
local MessageGridData = {
    OnSelectMessageType="in:OnSelectMessageType(s;)"
}
---@return "MessageGridData"
function MessageGridData:GetClass() end
---@return "Object"
function MessageGridData:GetChildClass() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "OnSelectMessageType", role: nil): fun(str: string) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "OnSelectMessageType"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MessageGridData:Get(name, role) end