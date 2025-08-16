---@meta

---@class LogicalChannel: TypedObject
---@field Name string
---@field Attribute Attribute
---@field Snap Yes|true
---@field Master MasterReaction
---@field MibFade TimeDefault
---@field DMXChangeTimeLimit TimeDefault
---@field DmxCurve DmxCurve
local LogicalChannel = {
    Master="None",
    MibFade="Default",
    DMXChangeTimeLimit="Default"
}
---@return "LogicalChannel"
function LogicalChannel:GetClass() end
---@return "ChannelFunction"
function LogicalChannel:GetChildClass() end
---@generic T : LogicalChannel
---@param class `T`
---@return boolean
function LogicalChannel:IsClass(class) end
---@return DMXChannel
function LogicalChannel:Parent() end
---@param index integer
---@return ChannelFunction
function LogicalChannel:Ptr(index) end
---@return ChannelFunction[]
function LogicalChannel:Children() end
---@return ChannelFunction?
function LogicalChannel:CurrentChild() end
---@return 22
function LogicalChannel:PropertyCount() end
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
---@overload fun(idx: 16): "Attribute"
---@overload fun(idx: 17): "Snap"
---@overload fun(idx: 18): "Master"
---@overload fun(idx: 19): "MibFade"
---@overload fun(idx: 20): "DMXChangeTimeLimit"
---@overload fun(idx: 21): "DmxCurve"
function LogicalChannel:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|14|15): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|16|21): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 17): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 18): {ExportIgnore: False, EnumCollection: MasterReaction, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 19|20): {ExportIgnore: False, EnumCollection: TimeDefault, ReadOnly: False, ImportIgnore: False}
function LogicalChannel:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|17|18): "UInt32"
---@overload fun(idx: 7|12|14|15): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 16|21): "Handle"
---@overload fun(idx: 19|20): "Int64Time"
function LogicalChannel:PropertyType(idx) end
---@overload fun(name: "Attribute", role: nil): Attribute
---@overload fun(name: "DmxCurve", role: nil): DmxCurve
---@overload fun(name: "Master", role: nil): MasterReaction
---@overload fun(name: "MibFade"|"DMXChangeTimeLimit", role: nil): TimeDefault
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Snap", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Note"|"DependencyExport"|"Type"|"Name", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Name"|"Attribute"|"Snap"|"Master"|"MibFade"|"DMXChangeTimeLimit"|"DmxCurve", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ChannelFunction
function LogicalChannel:Get(name, role) end
---@generic T : ChannelFunction
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Create(index, class, undo) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ChannelFunction
function LogicalChannel:Append(class, undo, count) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Acquire(class, undo) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelFunction
---@deprecated use "Acquire" instead
function LogicalChannel:Aquire(class, undo) end
---@generic T : ChannelFunction
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ChannelFunction
function LogicalChannel:Insert(index, class, undo, count) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Find(class, undo) end
---@overload fun(property_name: "Attribute", property_value: Attribute, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DmxCurve", property_value: DmxCurve, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Master", property_value: MasterReaction, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MibFade"|"DMXChangeTimeLimit", property_value: TimeDefault, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Snap", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Note"|"DependencyExport"|"Type"|"Name", property_value: string, override_change_level: ChangeLevel?)
function LogicalChannel:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Attribute", property_value: Attribute)
---@overload fun(property_name: "ModeMaster", property_value: ChannelFunction)
---@overload fun(property_name: "Wheel", property_value: Wheel)
---@overload fun(property_name: "Gamut", property_value: Gamut)
---@overload fun(property_name: "ColorSpaceData", property_value: ColorSpaceData)
---@overload fun(property_name: "Filter", property_value: FTFilter)
---@overload fun(property_name: "Emitter", property_value: Emitter)
---@overload fun(property_name: "Attribute", property_value: Attribute)
---@overload fun(property_name: "ModeMaster", property_value: ChannelFunction)
---@overload fun(property_name: "ColorSpaceData", property_value: ColorSpaceData)
---@overload fun(property_name: "DMXFrom"|"DMXTo"|"Default"|"ModeFrom"|"ModeTo", property_value: DMXPropertyValue)
---@overload fun(property_name: "Emitter", property_value: Emitter)
---@overload fun(property_name: "Filter", property_value: FTFilter)
---@overload fun(property_name: "Gamut", property_value: Gamut)
---@overload fun(property_name: "Wheel", property_value: Wheel)
---@overload fun(property_name: "DMXInvert"|"EncoderInvert"|"IgnoreFollow"|"EncoderLoop", property_value: Yes|true)
---@overload fun(property_name: "PhysicalFrom"|"PhysicalTo"|"RealAcceleration"|"RealFade", property_value: number)
---@overload fun(property_name: "OriginalAttribute"|"CustomName", property_value: string)
function LogicalChannel:SetChildren(property_name, property_value) end