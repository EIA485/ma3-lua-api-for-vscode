---@meta

---@class RandomChannel: GeneratorBaseChannel
---@field SpeedMaster SpeedMaster
---@field Speed SpeedPropertyValue
---@field SpeedVariance integer
---@field Phase integer
---@field PhaseVariance integer
---@field Low integer
---@field LowVariance integer
---@field High integer
---@field HighVariance integer
---@field Attack integer
---@field Decay integer
---@field Ratio integer
---@field RatioVariance integer
---@field SpeedOnce YesNo|boolean
---@field PhaseOnce YesNo|boolean
---@field RandomStart YesNo|boolean
local RandomChannel = {
    SpeedMaster="None",
    Speed="60.00",
    SpeedVariance="0.00",
    Phase="0.00",
    PhaseVariance="0.00",
    Low="0.00",
    LowVariance="0.00",
    High="100.00",
    HighVariance="0.00",
    Attack="100.00",
    Decay="100.00",
    Ratio="50.00",
    RatioVariance="0.00",
    SpeedOnce="0",
    PhaseOnce="1",
    RandomStart="0"
}
---@return "RandomChannel"
function RandomChannel:GetClass() end
---@return "Object"
function RandomChannel:GetChildClass() end
---@generic T : RandomChannel
---@param class `T`
---@return boolean
function RandomChannel:IsClass(class) end
---@return RandomChannels
function RandomChannel:Parent() end
---@return 33
function RandomChannel:PropertyCount() end
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
---@overload fun(idx: 17): "SpeedMaster"
---@overload fun(idx: 18): "Speed"
---@overload fun(idx: 19): "SpeedVariance"
---@overload fun(idx: 20): "Phase"
---@overload fun(idx: 21): "PhaseVariance"
---@overload fun(idx: 22): "Low"
---@overload fun(idx: 23): "LowVariance"
---@overload fun(idx: 24): "High"
---@overload fun(idx: 25): "HighVariance"
---@overload fun(idx: 26): "Attack"
---@overload fun(idx: 27): "Decay"
---@overload fun(idx: 28): "Ratio"
---@overload fun(idx: 29): "RatioVariance"
---@overload fun(idx: 30): "SpeedOnce"
---@overload fun(idx: 31): "PhaseOnce"
---@overload fun(idx: 32): "RandomStart"
function RandomChannel:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|30|31|32): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|18|19|20|21|22|23|24|25|26|27|28|29): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: GenVirtualDimmer, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17): {ExportIgnore: False, EnumCollection: SpeedMaster, ReadOnly: False, ImportIgnore: False}
function RandomChannel:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15|16|30|31|32): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12|19): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 17): "UInt8"
---@overload fun(idx: 18): "Int64Time"
---@overload fun(idx: 20|21|22|23|24|25|26|27|28|29): "Int32"
function RandomChannel:PropertyType(idx) end
---@overload fun(name: "Attribute", role: nil): AttributeIndexPropertyValue
---@overload fun(name: "VirtualDimmer", role: nil): GenVirtualDimmer|boolean
---@overload fun(name: "SpeedMaster", role: nil): SpeedMaster
---@overload fun(name: "Speed", role: nil): SpeedPropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"SpeedOnce"|"PhaseOnce"|"RandomStart", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"SpeedVariance"|"Phase"|"PhaseVariance"|"Low"|"LowVariance"|"High"|"HighVariance"|"Attack"|"Decay"|"Ratio"|"RatioVariance", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attribute"|"VirtualDimmer"|"SpeedMaster"|"Speed"|"SpeedVariance"|"Phase"|"PhaseVariance"|"Low"|"LowVariance"|"High"|"HighVariance"|"Attack"|"Decay"|"Ratio"|"RatioVariance"|"SpeedOnce"|"PhaseOnce"|"RandomStart", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RandomChannel:Get(name, role) end
---@overload fun(property_name: "Attribute", property_value: AttributeIndexPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "VirtualDimmer", property_value: GenVirtualDimmer|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Speed", property_value: SpeedPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"SpeedOnce"|"PhaseOnce"|"RandomStart", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"SpeedVariance"|"Phase"|"PhaseVariance"|"Low"|"LowVariance"|"High"|"HighVariance"|"Attack"|"Decay"|"Ratio"|"RatioVariance", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function RandomChannel:Set(property_name, property_value, override_change_level) end