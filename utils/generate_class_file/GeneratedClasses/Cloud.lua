---@meta

---@class Cloud: Object
---@field WorldServer string
---@field WorldServerStatus OnOff|boolean
---@field Visible YesNo|boolean
local Cloud = {
    Visible="0"
}
---@return "Cloud"
function Cloud:GetClass() end
---@return "CloudMember"
function Cloud:GetChildClass() end
---@generic T : Cloud
---@param class `T`
---@return boolean
function Cloud:IsClass(class) end
---@return Root
function Cloud:Parent() end
---@param index integer
---@return CloudMember
function Cloud:Ptr(index) end
---@return CloudMember[]
function Cloud:Children() end
---@return CloudMember?
function Cloud:CurrentChild() end
---@return 18
function Cloud:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "WorldServer"
---@overload fun(idx: 16): "WorldServerStatus"
---@overload fun(idx: 17): "Visible"
function Cloud:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|17): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16): {ExportIgnore: True, EnumCollection: OnOff, ReadOnly: False, ImportIgnore: False}
function Cloud:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|17): "UInt32"
---@overload fun(idx: 7|8|13|15): "String"
---@overload fun(idx: 10|11|16): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function Cloud:PropertyType(idx) end
---@overload fun(name: "WorldServerStatus", role: nil): OnOff|boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Visible", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"WorldServer", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"WorldServer"|"WorldServerStatus"|"Visible", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): CloudMember
function Cloud:Get(name, role) end
---@generic T : CloudMember
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): CloudMember
function Cloud:Create(index, class, undo) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): CloudMember
function Cloud:Append(class, undo, count) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CloudMember
function Cloud:Acquire(class, undo) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CloudMember
---@deprecated use "Acquire" instead
function Cloud:Aquire(class, undo) end
---@generic T : CloudMember
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CloudMember
function Cloud:Insert(index, class, undo, count) end
---@generic T : CloudMember
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CloudMember
function Cloud:Find(class, undo) end
---@overload fun(property_name: "WorldServerStatus", property_value: OnOff|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Visible", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"WorldServer", property_value: string, override_change_level: ChangeLevel?)
function Cloud:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Session"|"Location"|"Type"|"Version"|"SubType"|"GlobalIP"|"LocalIP"|"Station", property_value: string)
function Cloud:SetChildren(property_name, property_value) end