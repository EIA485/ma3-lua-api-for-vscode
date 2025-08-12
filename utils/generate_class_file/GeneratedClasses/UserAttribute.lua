---@meta

---@class UserAttribute: Object
---@field Natural
Readout ValueReadoutMode
---@field Encoder
Resolution integer
---@field EncoderPress
Factor integer
---@field IgnoreChannelFunctions integer
local UserAttribute = {}
---@return "UserAttribute"
function UserAttribute:GetClass() end
---@return "Object"
function UserAttribute:GetChildClass() end
---@return UserAttributePreferences
function UserAttribute:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Natural
Readout", role: nil): ValueReadoutMode
---@overload fun(name: "Encoder
Resolution"|"EncoderPress
Factor"|"IgnoreChannelFunctions", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Natural
Readout"|"Encoder
Resolution"|"EncoderPress
Factor"|"IgnoreChannelFunctions", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UserAttribute:Get(name, role) end
