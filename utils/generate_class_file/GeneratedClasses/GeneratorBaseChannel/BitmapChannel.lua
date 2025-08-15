---@meta

---@class BitmapChannel: GeneratorBaseChannel
---@field Source ColorSource
---@field ValueLow integer
---@field ValueHigh integer
local BitmapChannel = {
    Source="Intensity",
    ValueLow="0.0",
    ValueHigh="100.0"
}
---@return "BitmapChannel"
function BitmapChannel:GetClass() end
---@return "Object"
function BitmapChannel:GetChildClass() end
---@generic T : BitmapChannel
---@param class `T`
---@return boolean
function BitmapChannel:IsClass(class) end
---@return BitmapChannels
function BitmapChannel:Parent() end
---@return 20
function BitmapChannel:PropertyCount() end
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
---@overload fun(idx: 15): "Attribute"
---@overload fun(idx: 16): "VirtualDimmer"
---@overload fun(idx: 17): "Source"
---@overload fun(idx: 18): "ValueLow"
---@overload fun(idx: 19): "ValueHigh"
function BitmapChannel:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|18|19): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: GenVirtualDimmer, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17): {ExportIgnore: False, EnumCollection: ColorSource, ReadOnly: False, ImportIgnore: False}
function BitmapChannel:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15|16): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 17): "UInt8"
---@overload fun(idx: 18|19): "Int32"
function BitmapChannel:PropertyType(idx) end
---@overload fun(name: "Attribute", role: nil): AttributeIndexPropertyValue
---@overload fun(name: "Source", role: nil): ColorSource
---@overload fun(name: "VirtualDimmer", role: nil): GenVirtualDimmer|boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ValueLow"|"ValueHigh", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attribute"|"VirtualDimmer"|"Source"|"ValueLow"|"ValueHigh", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BitmapChannel:Get(name, role) end
---@overload fun(property_name: "Attribute", property_value: AttributeIndexPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Source", property_value: ColorSource, override_change_level: ChangeLevel?)
---@overload fun(property_name: "VirtualDimmer", property_value: GenVirtualDimmer|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"ValueLow"|"ValueHigh", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function BitmapChannel:Set(property_name, property_value, override_change_level) end