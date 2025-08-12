---@meta

---@class CloningWindowSettings: WindowSettings
---@field DependenciesAllowed integer
---@field GetEnableClone boolean
---@field GetEnableFillUpLeft boolean
---@field GetEnableFillUpRight boolean
---@field GetEnableUnifyLeft boolean
---@field GetEnableUnifyRight boolean
---@field HasSequenceFilter integer Has Sequence Filter
---@field HasGroupFilter integer Has Group Filter
---@field HasPresetFilter integer Has Preset Filter
---@field HasWorldFilter integer Has World Filter
---@field HasLayoutFilter integer Has Layout Filter
---@field AllSequenceItems integer All Sequence Items
---@field AllGroupItems integer All Group Items
---@field AllPresetItems integer All Preset Items
---@field AllWorldItems integer All World Items
---@field AllLayoutItems integer All Layout Items
local CloningWindowSettings = {
    DependenciesAllowed="1",
    HasSequenceFilter="0",
    HasGroupFilter="0",
    HasPresetFilter="0",
    HasWorldFilter="0",
    HasLayoutFilter="0",
    AllSequenceItems="0",
    AllGroupItems="0",
    AllPresetItems="0",
    AllWorldItems="0",
    AllLayoutItems="0"
}
---@return "CloningWindowSettings"
function CloningWindowSettings:GetClass() end
---@return "Object"
function CloningWindowSettings:GetChildClass() end
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
---@overload fun(name: "DependenciesAllowed", role: nil): integer
---@overload fun(name: "GetEnableClone"|"GetEnableFillUpLeft"|"GetEnableFillUpRight"|"GetEnableUnifyLeft"|"GetEnableUnifyRight", role: nil): boolean
---@overload fun(name: "HasSequenceFilter"|"HasGroupFilter"|"HasPresetFilter"|"HasWorldFilter"|"HasLayoutFilter"|"AllSequenceItems"|"AllGroupItems"|"AllPresetItems"|"AllWorldItems"|"AllLayoutItems", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"DependenciesAllowed"|"GetEnableClone"|"GetEnableFillUpLeft"|"GetEnableFillUpRight"|"GetEnableUnifyLeft"|"GetEnableUnifyRight"|"HasSequenceFilter"|"HasGroupFilter"|"HasPresetFilter"|"HasWorldFilter"|"HasLayoutFilter"|"AllSequenceItems"|"AllGroupItems"|"AllPresetItems"|"AllWorldItems"|"AllLayoutItems", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CloningWindowSettings:Get(name, role) end
