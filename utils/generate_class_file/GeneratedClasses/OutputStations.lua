---@meta

---@class OutputStations: Object
---@field Action fun(command: string) : boolean 0:command
---@field MyOutputStation OutputStation
local OutputStations = {
    Action="in:(s;)"
}
---@return "OutputStations"
function OutputStations:GetClass() end
---@return "OutputStationCollect"
function OutputStations:GetChildClass() end
---@generic T : OutputStations
---@param class `T`
---@return boolean
function OutputStations:IsClass(class) end
---@return DeviceConfigurations
function OutputStations:Parent() end
---@param index integer
---@return OutputStationCollect
function OutputStations:Ptr(index) end
---@return OutputStationCollect[]
function OutputStations:Children() end
---@return OutputStationCollect?
function OutputStations:CurrentChild() end
---@return 17
function OutputStations:PropertyCount() end
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
---@overload fun(idx: 15): "Action"
---@overload fun(idx: 16): "MyOutputStation"
function OutputStations:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|16): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function OutputStations:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Action"
---@overload fun(idx: 16): "Handle"
function OutputStations:PropertyType(idx) end
---@overload fun(name: "MyOutputStation", role: nil): OutputStation
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Action", role: nil): fun(command: string) : boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Action"|"MyOutputStation", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputStationCollect
function OutputStations:Get(name, role) end
---@generic T : OutputStationCollect
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): OutputStationCollect
function OutputStations:Create(index, class, undo) end
---@generic T : OutputStationCollect
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputStationCollect
function OutputStations:Append(class, undo, count) end
---@generic T : OutputStationCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStationCollect
function OutputStations:Acquire(class, undo) end
---@generic T : OutputStationCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStationCollect
---@deprecated use "Acquire" instead
function OutputStations:Aquire(class, undo) end
---@generic T : OutputStationCollect
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputStationCollect
function OutputStations:Insert(index, class, undo, count) end
---@generic T : OutputStationCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStationCollect
function OutputStations:Find(class, undo) end
---@overload fun(property_name: "MyOutputStation", property_value: OutputStation, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Action", property_value: fun(command: string) : boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function OutputStations:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DevicesinSession", property_value: integer)
---@overload fun(property_name: "DevicesinSession", property_value: integer)
function OutputStations:SetChildren(property_name, property_value) end