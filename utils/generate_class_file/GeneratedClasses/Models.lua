---@meta

---@class Models: Object Container for all 3D models of a fixture type.
---@field IgnoreEnforceUniqueChildNames YesNo|boolean
local Models = {}
---@return "Models"
function Models:GetClass() end
---@return "Model"
function Models:GetChildClass() end
---@generic T : Models
---@param class `T`
---@return boolean
function Models:IsClass(class) end
---@return FixtureType
function Models:Parent() end
---@param index integer
---@return Model
function Models:Ptr(index) end
---@return Model[]
function Models:Children() end
---@return Model?
function Models:CurrentChild() end
---@return 16
function Models:PropertyCount() end
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
---@overload fun(idx: 15): "IgnoreEnforceUniqueChildNames"
function Models:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Models:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "UInt8"
function Models:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"IgnoreEnforceUniqueChildNames", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IgnoreEnforceUniqueChildNames", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Model
function Models:Get(name, role) end
---@generic T : Model
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Model
function Models:Create(index, class, undo) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Model
function Models:Append(class, undo, count) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Model
function Models:Acquire(class, undo) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Model
---@deprecated use "Acquire" instead
function Models:Aquire(class, undo) end
---@generic T : Model
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Model
function Models:Insert(index, class, undo, count) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Model
function Models:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Models:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Mesh", property_value: Mesh)
---@overload fun(property_name: "File", property_value: string)
---@overload fun(property_name: "Length"|"Height"|"Width", property_value: LengthPropertyValue)
---@overload fun(property_name: "Mesh", property_value: Mesh)
---@overload fun(property_name: "CastShadow"|"DimensionsfollowRatio", property_value: YesNo|boolean)
---@overload fun(property_name: "File", property_value: string)
function Models:SetChildren(property_name, property_value) end