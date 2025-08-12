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
---@overload fun(name: "SearchString", role: nil): string
---@overload fun(name: "RowFilter", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"HeaderRows"|"DefaultToken"|"ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget"|"FilterMask"|"HierarchyFilterMask"|"DefaultRole"|"CreateFrameSelection"|"SearchString"|"RowFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function AssignmentEditorGridData:Get(name, role) end
