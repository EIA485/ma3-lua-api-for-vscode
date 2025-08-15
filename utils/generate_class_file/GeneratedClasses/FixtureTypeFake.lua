---@meta

---@class FixtureTypeFake: Object This is NOT a fixture type, but a mere reference to one
---@field Name string
---@field FTRef Object
---@field Used integer
local FixtureTypeFake = {
    Used="0"
}
---@return "FixtureTypeFake"
function FixtureTypeFake:GetClass() end
---@return "DMXModeFake"
function FixtureTypeFake:GetChildClass() end
---@generic T : FixtureTypeFake
---@param class `T`
---@return boolean
function FixtureTypeFake:IsClass(class) end
---@return FixtureTypesOverview
function FixtureTypeFake:Parent() end
---@param index integer
---@return DMXModeFake
function FixtureTypeFake:Ptr(index) end
---@return DMXModeFake[]
function FixtureTypeFake:Children() end
---@return DMXModeFake?
function FixtureTypeFake:CurrentChild() end
---@return 17
function FixtureTypeFake:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Note"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Name"
---@overload fun(idx: 15): "FTRef"
---@overload fun(idx: 16): "Used"
function FixtureTypeFake:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|16): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function FixtureTypeFake:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|16): "UInt32"
---@overload fun(idx: 7|12|14): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 15): "Handle"
function FixtureTypeFake:PropertyType(idx) end
---@overload fun(name: "FTRef", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Used", role: nil): integer
---@overload fun(name: "Note"|"DependencyExport"|"Name", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Name"|"FTRef"|"Used", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DMXModeFake
function FixtureTypeFake:Get(name, role) end
---@generic T : DMXModeFake
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Create(index, class, undo) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXModeFake
function FixtureTypeFake:Append(class, undo, count) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Acquire(class, undo) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXModeFake
---@deprecated use "Acquire" instead
function FixtureTypeFake:Aquire(class, undo) end
---@generic T : DMXModeFake
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXModeFake
function FixtureTypeFake:Insert(index, class, undo, count) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Find(class, undo) end
---@overload fun(property_name: "FTRef", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Used", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Note"|"DependencyExport"|"Name", property_value: string, override_change_level: ChangeLevel?)
function FixtureTypeFake:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DMRef", property_value: Object)
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "DMRef", property_value: Object)
---@overload fun(property_name: "Used", property_value: integer)
function FixtureTypeFake:Used(property_name, property_value) end