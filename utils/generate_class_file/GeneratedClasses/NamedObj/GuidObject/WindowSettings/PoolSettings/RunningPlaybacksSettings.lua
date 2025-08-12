---@meta

---@class RunningPlaybacksSettings: PoolSettings
---@field MyPlaybacks
Only integer Show only my playbacks
---@field Sheet
Style integer Show pool in sheet-style
---@field Off
Mode integer Turn Selected Items Off
---@field Playbacks
ToShow integer Show playbacks of type
---@field Hold
List integer Lock Listed Items in Place while turning them Off
---@field User User
---@field SelectedDataPool string
local RunningPlaybacksSettings = {
    ["MyPlaybacks
Only"]="false",
    ["Sheet
Style"]="false",
    ["Off
Mode"]="false",
    ["Playbacks
ToShow"]="ShowAllPlaybacks",
    ["Hold
List"]="false"
}
---@return "RunningPlaybacksSettings"
function RunningPlaybacksSettings:GetClass() end
---@return "Object"
function RunningPlaybacksSettings:GetChildClass() end
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
---@overload fun(name: "DrawActiveMode"|"MyPlaybacks
Only"|"Sheet
Style"|"Off
Mode"|"Playbacks
ToShow"|"Hold
List", role: nil): integer
---@overload fun(name: "User", role: nil): User
---@overload fun(name: "SelectedDataPool", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowEmpty"|"PoolColor"|"EmptyColor"|"ForNoneColor"|"ForSomeColor"|"ForAllColor"|"ShowBottomMenu"|"RightClick
ToEdit"|"ObjectActionEnabled"|"PoolColumnsCount"|"DataPool"|"PoolType"|"DrawActiveMode"|"MyPlaybacks
Only"|"Sheet
Style"|"Off
Mode"|"Playbacks
ToShow"|"Hold
List"|"User"|"SelectedDataPool", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RunningPlaybacksSettings:Get(name, role) end
