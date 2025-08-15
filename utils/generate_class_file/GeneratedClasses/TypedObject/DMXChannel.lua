---@meta

---@class DMXChannel: TypedObject
---@field Name string
---@field DMXBreak DMXBreak
---@field Coarse PatchOffset
---@field Fine PatchOffset
---@field Ultra PatchOffset
---@field Frequency ChannelFrequency
---@field CalcAlways YesNo|boolean
---@field VirtualResolution DMXVirtualResolution
---@field DefaultChannelFunction ChannelFunction
---@field Default DMXPropertyValue
---@field Highlight ValueNone
---@field Lowlight ValueNone
---@field Geometry Geometry
local DMXChannel = {
    DMXBreak="1",
    Coarse="None",
    Fine="None",
    Ultra="None",
    Frequency="30",
    CalcAlways="No",
    VirtualResolution="24 bits",
    Default="000000",
    Highlight="None",
    Lowlight="None"
}
---@return "DMXChannel"
function DMXChannel:GetClass() end
---@return "LogicalChannel"
function DMXChannel:GetChildClass() end
---@generic T : DMXChannel
---@param class `T`
---@return boolean
function DMXChannel:IsClass(class) end
---@return DMXChannels
function DMXChannel:Parent() end
---@param index integer
---@return LogicalChannel
function DMXChannel:Ptr(index) end
---@return LogicalChannel[]
function DMXChannel:Children() end
---@return LogicalChannel?
function DMXChannel:CurrentChild() end
---@return 28
function DMXChannel:PropertyCount() end
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
---@overload fun(idx: 14): "Type"
---@overload fun(idx: 15): "Name"
---@overload fun(idx: 16): "DMXBreak"
---@overload fun(idx: 17): "Coarse"
---@overload fun(idx: 18): "Fine"
---@overload fun(idx: 19): "Ultra"
---@overload fun(idx: 20): "Frequency"
---@overload fun(idx: 21): "CalcAlways"
---@overload fun(idx: 22): "VirtualResolution"
---@overload fun(idx: 23): "DefaultChannelFunction"
---@overload fun(idx: 24): "Default"
---@overload fun(idx: 25): "Highlight"
---@overload fun(idx: 26): "Lowlight"
---@overload fun(idx: 27): "Geometry"
function DMXChannel:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|21): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|14|15): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|23|27): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: DMXBreak, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17|18|19): {ExportIgnore: False, EnumCollection: PatchOffset, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: ChannelFrequency, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 22): {ExportIgnore: False, EnumCollection: DMXVirtualResolution, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 24): {ExportIgnore: False, ReadOnly: True, ImportIgnore: False}
---@overload fun(idx: 25|26): {ExportIgnore: False, EnumCollection: ValueNone, ReadOnly: False, ImportIgnore: False}
function DMXChannel:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|24|25|26): "UInt32"
---@overload fun(idx: 7|12|14|15): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 16|17|18|19): "Int32"
---@overload fun(idx: 20|21|22): "UInt8"
---@overload fun(idx: 23|27): "Handle"
function DMXChannel:PropertyType(idx) end
---@overload fun(name: "Frequency", role: nil): ChannelFrequency
---@overload fun(name: "DefaultChannelFunction", role: nil): ChannelFunction
---@overload fun(name: "DMXBreak", role: nil): DMXBreak
---@overload fun(name: "Default", role: nil): DMXPropertyValue
---@overload fun(name: "VirtualResolution", role: nil): DMXVirtualResolution
---@overload fun(name: "Geometry", role: nil): Geometry
---@overload fun(name: "Coarse"|"Fine"|"Ultra", role: nil): PatchOffset
---@overload fun(name: "Highlight"|"Lowlight", role: nil): ValueNone
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"CalcAlways", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Note"|"DependencyExport"|"Type"|"Name", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Name"|"DMXBreak"|"Coarse"|"Fine"|"Ultra"|"Frequency"|"CalcAlways"|"VirtualResolution"|"DefaultChannelFunction"|"Default"|"Highlight"|"Lowlight"|"Geometry", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): LogicalChannel
function DMXChannel:Get(name, role) end
---@generic T : LogicalChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Create(index, class, undo) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LogicalChannel
function DMXChannel:Append(class, undo, count) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Acquire(class, undo) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LogicalChannel
---@deprecated use "Acquire" instead
function DMXChannel:Aquire(class, undo) end
---@generic T : LogicalChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LogicalChannel
function DMXChannel:Insert(index, class, undo, count) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Find(class, undo) end
---@overload fun(property_name: "Frequency", property_value: ChannelFrequency, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DefaultChannelFunction", property_value: ChannelFunction, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DMXBreak", property_value: DMXBreak, override_change_level: ChangeLevel?)
---@overload fun(property_name: "VirtualResolution", property_value: DMXVirtualResolution, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Geometry", property_value: Geometry, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Coarse"|"Fine"|"Ultra", property_value: PatchOffset, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Highlight"|"Lowlight", property_value: ValueNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"CalcAlways", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Note"|"DependencyExport"|"Type"|"Name", property_value: string, override_change_level: ChangeLevel?)
function DMXChannel:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "Attribute", property_value: Attribute)
---@overload fun(property_name: "Snap", property_value: Yes|true)
---@overload fun(property_name: "Master", property_value: MasterReaction)
---@overload fun(property_name: "DmxCurve", property_value: DmxCurve)
---@overload fun(property_name: "Attribute", property_value: Attribute)
---@overload fun(property_name: "DmxCurve", property_value: DmxCurve)
---@overload fun(property_name: "Master", property_value: MasterReaction)
---@overload fun(property_name: "MibFade"|"DMXChangeTimeLimit", property_value: TimeDefault)
---@overload fun(property_name: "Snap", property_value: Yes|true)
---@overload fun(property_name: "Name", property_value: string)
function DMXChannel:DmxCurve(property_name, property_value) end