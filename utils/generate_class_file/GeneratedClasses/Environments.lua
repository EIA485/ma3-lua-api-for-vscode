---@meta

---@class Environments: Object
---@field ActiveEnvironment SelectedEnvironment
local Environments = {
    ActiveEnvironment="0"
}
---@return "Environments"
function Environments:GetClass() end
---@return "UserEnvironment"
function Environments:GetChildClass() end
---@generic T : Environments
---@param class `T`
---@return boolean
function Environments:IsClass(class) end
---@return UserProfile
function Environments:Parent() end
---@param index integer
---@return UserEnvironment
function Environments:Ptr(index) end
---@return UserEnvironment[]
function Environments:Children() end
---@return UserEnvironment?
function Environments:CurrentChild() end
---@return 16
function Environments:PropertyCount() end
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
---@overload fun(idx: 15): "ActiveEnvironment"
function Environments:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: SelectedEnvironment, ReadOnly: False, ImportIgnore: False}
function Environments:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "UInt8"
function Environments:PropertyType(idx) end
---@overload fun(name: "ActiveEnvironment", role: nil): SelectedEnvironment
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ActiveEnvironment", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UserEnvironment
function Environments:Get(name, role) end
---@generic T : UserEnvironment
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserEnvironment
function Environments:Create(index, class, undo) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserEnvironment
function Environments:Append(class, undo, count) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserEnvironment
function Environments:Acquire(class, undo) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserEnvironment
---@deprecated use "Acquire" instead
function Environments:Aquire(class, undo) end
---@generic T : UserEnvironment
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserEnvironment
function Environments:Insert(index, class, undo, count) end
---@generic T : UserEnvironment
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserEnvironment
function Environments:Find(class, undo) end
---@overload fun(property_name: "ActiveEnvironment", property_value: SelectedEnvironment, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Environments:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "ActiveSel", property_value: SelectedSelection)
---@overload fun(property_name: "CurrentSelectionRef", property_value: Selection)
---@overload fun(property_name: "ProgPart", property_value: ProgPart)
---@overload fun(property_name: "AlignTransition", property_value: TransitionMode)
---@overload fun(property_name: "AlignMode"|"AlignCombined", property_value: AlignMode)
---@overload fun(property_name: "ProgPart", property_value: ProgPart)
---@overload fun(property_name: "ActiveSel", property_value: SelectedSelection)
---@overload fun(property_name: "CurrentSelectionRef", property_value: Selection)
---@overload fun(property_name: "AlignTransition", property_value: TransitionMode)
---@overload fun(property_name: "StepMask"|"MultiStepSelected"|"AllStepSelected"|"Sync"|"SingleStep"|"Freeze", property_value: YesNo|boolean)
---@overload fun(property_name: "StepMaskFirst"|"AlignRotXZ"|"StepMaskLast"|"FirstStep"|"AlignRotYZ"|"ActiveSelIndex"|"AlignRotXY"|"LastStep", property_value: integer)
function Environments:SetChildren(property_name, property_value) end