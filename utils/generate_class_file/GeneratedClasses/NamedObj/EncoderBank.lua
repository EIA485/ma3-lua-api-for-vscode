---@meta

---@class EncoderBank: NamedObj
---@field Command string
---@field SpecialDialogTab SpecialWindowTab
local EncoderBank = {
    SpecialDialogTab="None"
}
---@return "EncoderBank"
function EncoderBank:GetClass() end
---@return "EncoderPage"
function EncoderBank:GetChildClass() end
---@generic T : EncoderBank
---@param class `T`
---@return boolean
function EncoderBank:IsClass(class) end
---@return EncoderBar
function EncoderBank:Parent() end
---@param index integer
---@return EncoderPage
function EncoderBank:Ptr(index) end
---@return EncoderPage[]
function EncoderBank:Children() end
---@return EncoderPage?
function EncoderBank:CurrentChild() end
---@return 17
function EncoderBank:PropertyCount() end
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
---@overload fun(idx: 15): "Command"
---@overload fun(idx: 16): "SpecialDialogTab"
function EncoderBank:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: SpecialWindowTab, ReadOnly: False, ImportIgnore: False}
function EncoderBank:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|15): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16): "UInt8"
function EncoderBank:PropertyType(idx) end
---@overload fun(name: "SpecialDialogTab", role: nil): SpecialWindowTab
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Command", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Command"|"SpecialDialogTab", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): EncoderPage
function EncoderBank:Get(name, role) end
---@generic T : EncoderPage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderPage
function EncoderBank:Create(index, class, undo) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderPage
function EncoderBank:Append(class, undo, count) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderPage
function EncoderBank:Acquire(class, undo) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderPage
---@deprecated use "Acquire" instead
function EncoderBank:Aquire(class, undo) end
---@generic T : EncoderPage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderPage
function EncoderBank:Insert(index, class, undo, count) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderPage
function EncoderBank:Find(class, undo) end
---@overload fun(property_name: "SpecialDialogTab", property_value: SpecialWindowTab, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Command", property_value: string, override_change_level: ChangeLevel?)
function EncoderBank:Set(property_name, property_value, override_change_level) end
function EncoderBank:SetChildren(property_name, property_value) end