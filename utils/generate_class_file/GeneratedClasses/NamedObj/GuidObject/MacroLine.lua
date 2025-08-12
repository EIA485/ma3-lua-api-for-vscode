---@meta

---@class MacroLine: GuidObject
---@field Command string
---@field Wait TimePropertyValue
---@field Enabled integer
---@field AddToCmdline integer
---@field Execute integer
local MacroLine = {
    Wait="Follow",
    Enabled="Yes",
    AddToCmdline="No",
    Execute="Yes"
}
---@return "MacroLine"
function MacroLine:GetClass() end
---@return "Object"
function MacroLine:GetChildClass() end
---@return Macro
function MacroLine:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Command", role: nil): string
---@overload fun(name: "Wait", role: nil): TimePropertyValue
---@overload fun(name: "Enabled"|"AddToCmdline"|"Execute", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Command"|"Wait"|"Enabled"|"AddToCmdline"|"Execute", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MacroLine:Get(name, role) end
