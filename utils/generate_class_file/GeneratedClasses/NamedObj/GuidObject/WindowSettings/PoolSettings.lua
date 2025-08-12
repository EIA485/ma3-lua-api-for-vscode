---@meta

---@class PoolSettings: WindowSettings
---@field ShowEmpty integer
---@field PoolColor UColor
---@field EmptyColor UColor
---@field ForNoneColor UColor
---@field ForSomeColor UColor
---@field ForAllColor UColor
---@field ShowBottomMenu integer
---@field RightClick
ToEdit integer
---@field ObjectActionEnabled integer
---@field PoolColumnsCount integer
---@field DataPool Pool
---@field PoolType Pooltype
---@field DrawActiveMode integer
local PoolSettings = {
    ShowEmpty="1",
    ShowBottomMenu="No",
    ["RightClick
ToEdit"]="false",
    ObjectActionEnabled="No",
    PoolColumnsCount="Not Defined",
    PoolType="Sequence"
}
---@return "PoolSettings"
function PoolSettings:GetClass() end
---@return "Object"
function PoolSettings:GetChildClass() end
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
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "ShowTitleBar", role: nil): integer
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "RequestDefaultTitlebuttons", role: nil): integer
---@overload fun(name: "TitleButtonMask", role: nil): string
---@overload fun(name: "ShowEmpty", role: nil): integer
---@overload fun(name: "PoolColor"|"EmptyColor"|"ForNoneColor"|"ForSomeColor"|"ForAllColor", role: nil): UColor
---@overload fun(name: "ShowBottomMenu"|"RightClick
ToEdit"|"ObjectActionEnabled"|"PoolColumnsCount", role: nil): integer
---@overload fun(name: "DataPool", role: nil): Pool
---@overload fun(name: "PoolType", role: nil): Pooltype
---@overload fun(name: "DrawActiveMode", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowEmpty"|"PoolColor"|"EmptyColor"|"ForNoneColor"|"ForSomeColor"|"ForAllColor"|"ShowBottomMenu"|"RightClick
ToEdit"|"ObjectActionEnabled"|"PoolColumnsCount"|"DataPool"|"PoolType"|"DrawActiveMode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PoolSettings:Get(name, role) end
