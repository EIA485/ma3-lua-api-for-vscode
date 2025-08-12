---@meta

---@class GelPoolSettings: PoolSettings
---@field DisplayPool string
---@field ShowName integer
---@field ShowKey integer
local GelPoolSettings = {
    DisplayPool="0",
    ShowName="Yes",
    ShowKey="Yes"
}
---@return "GelPoolSettings"
function GelPoolSettings:GetClass() end
---@return "Object"
function GelPoolSettings:GetChildClass() end
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
---@overload fun(name: "DisplayPool", role: nil): string
---@overload fun(name: "ShowName"|"ShowKey", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowEmpty"|"PoolColor"|"EmptyColor"|"ForNoneColor"|"ForSomeColor"|"ForAllColor"|"ShowBottomMenu"|"RightClick
ToEdit"|"ObjectActionEnabled"|"PoolColumnsCount"|"DataPool"|"PoolType"|"DrawActiveMode"|"DisplayPool"|"ShowName"|"ShowKey", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GelPoolSettings:Get(name, role) end
