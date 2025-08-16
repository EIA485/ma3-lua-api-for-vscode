---@meta

---@class UserAttributePreferences: Object
---@field DualEncoderFactor EncoderFactor
---@field DualEncoderPressFactor EncoderFactor
---@field TimeLayerResolution AttriebuteEncoderResolutionSmall
---@field PhaserLayerResolution AttriebuteEncoderResolutionSmall
---@field LinkResolution EncoderLinkResolution
local UserAttributePreferences = {
    DualEncoderFactor="Div5",
    DualEncoderPressFactor="Div25",
    TimeLayerResolution="Coarse",
    PhaserLayerResolution="Coarse"
}
---@return "UserAttributePreferences"
function UserAttributePreferences:GetClass() end
---@return "UserAttribute"
function UserAttributePreferences:GetChildClass() end
---@generic T : UserAttributePreferences
---@param class `T`
---@return boolean
function UserAttributePreferences:IsClass(class) end
---@return UserProfile
function UserAttributePreferences:Parent() end
---@param index integer
---@return UserAttribute
function UserAttributePreferences:Ptr(index) end
---@return UserAttribute[]
function UserAttributePreferences:Children() end
---@return UserAttribute?
function UserAttributePreferences:CurrentChild() end
---@return 20
function UserAttributePreferences:PropertyCount() end
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
---@overload fun(idx: 15): "DualEncoderFactor"
---@overload fun(idx: 16): "DualEncoderPressFactor"
---@overload fun(idx: 17): "TimeLayerResolution"
---@overload fun(idx: 18): "PhaserLayerResolution"
---@overload fun(idx: 19): "LinkResolution"
function UserAttributePreferences:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15|16): {ExportIgnore: False, EnumCollection: EncoderFactor, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17|18): {ExportIgnore: False, EnumCollection: AttriebuteEncoderResolutionSmall, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 19): {ExportIgnore: False, EnumCollection: EncoderLinkResolution, ReadOnly: False, ImportIgnore: False}
function UserAttributePreferences:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|16|17|18): "Int32"
---@overload fun(idx: 19): "UInt8"
function UserAttributePreferences:PropertyType(idx) end
---@overload fun(name: "TimeLayerResolution"|"PhaserLayerResolution", role: nil): AttriebuteEncoderResolutionSmall
---@overload fun(name: "DualEncoderFactor"|"DualEncoderPressFactor", role: nil): EncoderFactor
---@overload fun(name: "LinkResolution", role: nil): EncoderLinkResolution
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DualEncoderFactor"|"DualEncoderPressFactor"|"TimeLayerResolution"|"PhaserLayerResolution"|"LinkResolution", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UserAttribute
function UserAttributePreferences:Get(name, role) end
---@generic T : UserAttribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Create(index, class, undo) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserAttribute
function UserAttributePreferences:Append(class, undo, count) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Acquire(class, undo) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserAttribute
---@deprecated use "Acquire" instead
function UserAttributePreferences:Aquire(class, undo) end
---@generic T : UserAttribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserAttribute
function UserAttributePreferences:Insert(index, class, undo, count) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Find(class, undo) end
---@overload fun(property_name: "TimeLayerResolution"|"PhaserLayerResolution", property_value: AttriebuteEncoderResolutionSmall, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DualEncoderFactor"|"DualEncoderPressFactor", property_value: EncoderFactor, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LinkResolution", property_value: EncoderLinkResolution, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function UserAttributePreferences:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "IgnoreChannelFunctions", property_value: Yes|true)
---@overload fun(property_name: "EncoderPressFactor", property_value: EncoderFactor)
---@overload fun(property_name: "NaturalReadout", property_value: ValueReadoutModeDefault)
---@overload fun(property_name: "EncoderResolution", property_value: AttriebuteEncoderResolutionDefault)
---@overload fun(property_name: "EncoderResolution", property_value: AttriebuteEncoderResolutionDefault)
---@overload fun(property_name: "EncoderPressFactor", property_value: EncoderFactor)
---@overload fun(property_name: "NaturalReadout", property_value: ValueReadoutModeDefault)
---@overload fun(property_name: "IgnoreChannelFunctions", property_value: Yes|true)
function UserAttributePreferences:SetChildren(property_name, property_value) end