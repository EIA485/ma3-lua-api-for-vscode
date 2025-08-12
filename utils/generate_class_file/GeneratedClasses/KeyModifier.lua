---@meta

---@class KeyModifier: Object
---@field Modifier string A string value that a key code should be translated to
---@field Value string A string value that a key code should be translated to
---@field ValueShifted string A string value that a key code should be translated to if a shift key is pressed
local KeyModifier = {}
---@return "KeyModifier"
function KeyModifier:GetClass() end
---@return "Object"
function KeyModifier:GetChildClass() end
---@return KeyboardKey
function KeyModifier:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Modifier"|"Value"|"ValueShifted", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Modifier"|"Value"|"ValueShifted", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function KeyModifier:Get(name, role) end
