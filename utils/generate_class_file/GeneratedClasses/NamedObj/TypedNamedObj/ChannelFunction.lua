---@meta

---@class ChannelFunction: TypedNamedObj Defines a functional range in a channel type.
---@field Attribute Attribute
---@field DMXFrom DMXPropertyValue
---@field DMXTo DMXPropertyValue
---@field Default DMXPropertyValue
---@field PhysicalFrom number
---@field PhysicalTo number
---@field RealFade number
---@field RealAcceleration number
---@field Wheel Wheel
---@field Emitter Emitter
---@field Gamut Gamut
---@field ColorSpaceData ColorSpaceData
---@field Filter FTFilter
---@field DMXInvert Yes|true
---@field EncoderInvert Yes|true
---@field IgnoreFollow Yes|true
---@field EncoderLoop Yes|true
---@field ModeMaster ChannelFunction
---@field ModeMasterDirect ChannelFunction
---@field ModeMasterDMXChannelDirect DMXChannel
---@field ModeFrom DMXPropertyValue
---@field ModeTo DMXPropertyValue
---@field OriginalAttribute string
---@field CustomName string
local ChannelFunction = {
    DMXFrom="000000",
    DMXTo="16777215",
    PhysicalFrom="0",
    PhysicalTo="1",
    RealFade="0",
    RealAcceleration="0",
    ModeFrom="000000",
    ModeTo="FFFFFF"
}
---@return "ChannelFunction"
function ChannelFunction:GetClass() end
---@return "ChannelSet"
function ChannelFunction:GetChildClass() end
---@generic T : ChannelFunction
---@param class `T`
---@return boolean
function ChannelFunction:IsClass(class) end
---@return LogicalChannel
function ChannelFunction:Parent() end
---@param index integer
---@return ChannelSet
function ChannelFunction:Ptr(index) end
---@return ChannelSet[]
function ChannelFunction:Children() end
---@return ChannelSet?
function ChannelFunction:CurrentChild() end
---@return 40
function ChannelFunction:PropertyCount() end
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
---@overload fun(idx: 15): "Type"
---@overload fun(idx: 16): "Attribute"
---@overload fun(idx: 17): "DMXFrom"
---@overload fun(idx: 18): "DMXTo"
---@overload fun(idx: 19): "Default"
---@overload fun(idx: 20): "PhysicalFrom"
---@overload fun(idx: 21): "PhysicalTo"
---@overload fun(idx: 22): "RealFade"
---@overload fun(idx: 23): "RealAcceleration"
---@overload fun(idx: 24): "Wheel"
---@overload fun(idx: 25): "Emitter"
---@overload fun(idx: 26): "Gamut"
---@overload fun(idx: 27): "ColorSpaceData"
---@overload fun(idx: 28): "Filter"
---@overload fun(idx: 29): "DMXInvert"
---@overload fun(idx: 30): "EncoderInvert"
---@overload fun(idx: 31): "IgnoreFollow"
---@overload fun(idx: 32): "EncoderLoop"
---@overload fun(idx: 33): "ModeMaster"
---@overload fun(idx: 34): "ModeMasterDirect"
---@overload fun(idx: 35): "ModeMasterDMXChannelDirect"
---@overload fun(idx: 36): "ModeFrom"
---@overload fun(idx: 37): "ModeTo"
---@overload fun(idx: 38): "OriginalAttribute"
---@overload fun(idx: 39): "CustomName"
function ChannelFunction:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|18): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16|17|19|20|21|22|23|24|25|26|27|28|33|36|37|38|39): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|34|35): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 29|30|31|32): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
function ChannelFunction:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|17|18|19|29|30|31|32|36|37): "UInt32"
---@overload fun(idx: 7|8|13|15|38|39): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16|24|25|26|27|28|33|34|35): "Handle"
---@overload fun(idx: 20|21): "Double"
---@overload fun(idx: 22|23): "Float"
function ChannelFunction:PropertyType(idx) end
---@overload fun(name: "Attribute", role: nil): Attribute
---@overload fun(name: "ModeMaster"|"ModeMasterDirect", role: nil): ChannelFunction
---@overload fun(name: "ColorSpaceData", role: nil): ColorSpaceData
---@overload fun(name: "ModeMasterDMXChannelDirect", role: nil): DMXChannel
---@overload fun(name: "DMXFrom"|"DMXTo"|"Default"|"ModeFrom"|"ModeTo", role: nil): DMXPropertyValue
---@overload fun(name: "Emitter", role: nil): Emitter
---@overload fun(name: "Filter", role: nil): FTFilter
---@overload fun(name: "Gamut", role: nil): Gamut
---@overload fun(name: "Wheel", role: nil): Wheel
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "DMXInvert"|"EncoderInvert"|"IgnoreFollow"|"EncoderLoop", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "PhysicalFrom"|"PhysicalTo"|"RealFade"|"RealAcceleration", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Type"|"OriginalAttribute"|"CustomName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Attribute"|"DMXFrom"|"DMXTo"|"Default"|"PhysicalFrom"|"PhysicalTo"|"RealFade"|"RealAcceleration"|"Wheel"|"Emitter"|"Gamut"|"ColorSpaceData"|"Filter"|"DMXInvert"|"EncoderInvert"|"IgnoreFollow"|"EncoderLoop"|"ModeMaster"|"ModeMasterDirect"|"ModeMasterDMXChannelDirect"|"ModeFrom"|"ModeTo"|"OriginalAttribute"|"CustomName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ChannelSet
function ChannelFunction:Get(name, role) end
---@generic T : ChannelSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Create(index, class, undo) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ChannelSet
function ChannelFunction:Append(class, undo, count) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Acquire(class, undo) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelSet
---@deprecated use "Acquire" instead
function ChannelFunction:Aquire(class, undo) end
---@generic T : ChannelSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ChannelSet
function ChannelFunction:Insert(index, class, undo, count) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Find(class, undo) end
---@overload fun(property_name: "Attribute", property_value: Attribute, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ModeMaster", property_value: ChannelFunction, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ColorSpaceData", property_value: ColorSpaceData, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DMXFrom"|"DMXTo"|"Default"|"ModeFrom"|"ModeTo", property_value: DMXPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Emitter", property_value: Emitter, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Filter", property_value: FTFilter, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Gamut", property_value: Gamut, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Wheel", property_value: Wheel, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DMXInvert"|"EncoderInvert"|"IgnoreFollow"|"EncoderLoop", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PhysicalFrom"|"PhysicalTo"|"RealFade"|"RealAcceleration", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Type"|"OriginalAttribute"|"CustomName", property_value: string, override_change_level: ChangeLevel?)
function ChannelFunction:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "HasPhysical", property_value: Yes|true)
---@overload fun(property_name: "WheelSlotIndex", property_value: integer)
---@overload fun(property_name: "DMXFrom"|"DMXTo", property_value: DMXPropertyValue)
---@overload fun(property_name: "HasPhysical", property_value: Yes|true)
---@overload fun(property_name: "WheelSlotIndex", property_value: integer)
---@overload fun(property_name: "PhysicalTo"|"PhysicalFrom", property_value: number)
function ChannelFunction:WheelSlotIndex(property_name, property_value) end