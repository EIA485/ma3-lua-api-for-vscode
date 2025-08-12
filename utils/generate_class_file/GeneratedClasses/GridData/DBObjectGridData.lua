---@meta

---@class DBObjectGridData: GridData
---@field HeaderRows integer
---@field DefaultToken PresetActionToken
---@field ExplorerMode boolean
---@field UseLocalExpandedState boolean
---@field LocalExpandedStateDefault boolean
---@field IgnoreCmdInput boolean
---@field ShowParentAsHintForMultiTarget boolean
---@field FilterMask integer
---@field HierarchyFilterMask integer
---@field DefaultRole ValueRole
---@field CreateFrameSelection fun(cmdline: Cmdline) : integer
local DBObjectGridData = {
    HeaderRows="2",
    ExplorerMode="No",
    UseLocalExpandedState="No",
    LocalExpandedStateDefault="No",
    IgnoreCmdInput="No",
    ShowParentAsHintForMultiTarget="No",
    FilterMask="0",
    HierarchyFilterMask="0",
    DefaultRole="Default"
}
---@return "DBObjectGridData"
function DBObjectGridData:GetClass() end
---@return "Object"
function DBObjectGridData:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"HeaderRows", role: nil): integer
---@overload fun(name: "DefaultToken", role: nil): PresetActionToken
---@overload fun(name: "ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget", role: nil): boolean
---@overload fun(name: "FilterMask"|"HierarchyFilterMask", role: nil): integer
---@overload fun(name: "DefaultRole", role: nil): ValueRole
---@overload fun(name: "CreateFrameSelection", role: nil): fun(cmdline: Cmdline) : integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"HeaderRows"|"DefaultToken"|"ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget"|"FilterMask"|"HierarchyFilterMask"|"DefaultRole"|"CreateFrameSelection", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DBObjectGridData:Get(name, role) end
