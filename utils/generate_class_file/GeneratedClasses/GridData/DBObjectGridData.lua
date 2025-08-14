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
---@overload fun(name: "DefaultToken", role: nil): PresetActionToken
---@overload fun(name: "DefaultRole", role: nil): ValueRole
---@overload fun(name: "ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "CreateFrameSelection", role: nil): fun(cmdline: Cmdline) : integer
---@overload fun(name: "HeaderRows"|"FilterMask"|"HierarchyFilterMask"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "HeaderRows"|"DefaultToken"|"ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget"|"FilterMask"|"HierarchyFilterMask"|"DefaultRole"|"CreateFrameSelection"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DBObjectGridData:Get(name, role) end