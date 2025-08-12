---@meta

---@class UIChannel: Object Displays all user interface channels of all subfixtures
---@field Type string
---@field SubAttribute string
---@field Snap integer
---@field Master integer
local UIChannel = {}
---@return "UIChannel"
function UIChannel:GetClass() end
---@return "Object"
function UIChannel:GetChildClass() end
---@return UIChannels
function UIChannel:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type"|"SubAttribute", role: nil): string
---@overload fun(name: "Snap"|"Master", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"SubAttribute"|"Snap"|"Master", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UIChannel:Get(name, role) end
