---@meta

---@class AssignmentEditorGridData: DBObjectGridData
---@field SearchString string
---@field RowFilter integer
local AssignmentEditorGridData = {
    RowFilter="All"
}
---@return "AssignmentEditorGridData"
function AssignmentEditorGridData:GetClass() end
---@return "Object"
function AssignmentEditorGridData:GetChildClass() end
---@overload fun(name: "DefaultToken", role: nil): PresetActionToken
---@overload fun(name: "DefaultRole", role: nil): ValueRole
---@overload fun(name: "ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "CreateFrameSelection", role: nil): fun(cmdline: Cmdline) : integer
---@overload fun(name: "RowFilter"|"HeaderRows"|"FilterMask"|"HierarchyFilterMask"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "SearchString"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SearchString"|"RowFilter"|"HeaderRows"|"DefaultToken"|"ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget"|"FilterMask"|"HierarchyFilterMask"|"DefaultRole"|"CreateFrameSelection"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function AssignmentEditorGridData:Get(name, role) end