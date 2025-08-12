---@meta

---@class WindowType: NamedObj
---@field WindowName string
---@field IndexKeywords string
---@field Category WindowCategories
---@field Type WindowTypes
---@field MinW integer
---@field MinH integer
---@field MaxW integer
---@field MaxH integer
---@field PresetPoolType integer
---@field SnapToBlockSize integer
---@field Icon Object
local WindowType = {
    MinW="1",
    MinH="1",
    MaxW="0",
    MaxH="0",
    PresetPoolType="0",
    SnapToBlockSize="No"
}
---@return "WindowType"
function WindowType:GetClass() end
---@return "Object"
function WindowType:GetChildClass() end
---@return WindowTypes
function WindowType:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "WindowName"|"IndexKeywords", role: nil): string
---@overload fun(name: "Category", role: nil): WindowCategories
---@overload fun(name: "Type", role: nil): WindowTypes
---@overload fun(name: "MinW"|"MinH"|"MaxW"|"MaxH"|"PresetPoolType"|"SnapToBlockSize", role: nil): integer
---@overload fun(name: "Icon", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"WindowName"|"IndexKeywords"|"Category"|"Type"|"MinW"|"MinH"|"MaxW"|"MaxH"|"PresetPoolType"|"SnapToBlockSize"|"Icon", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowType:Get(name, role) end
