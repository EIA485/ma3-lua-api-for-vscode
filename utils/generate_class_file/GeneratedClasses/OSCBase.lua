---@meta

---@class OSCBase: Object
---@field EnableInput YesNo|boolean
---@field EnableOutput YesNo|boolean
---@field Interface string
---@field PreferredIP Manet.IP4
local OSCBase = {
    EnableInput="No",
    EnableOutput="No",
    Interface="0"
}
---@return "OSCBase"
function OSCBase:GetClass() end
---@return "OSCData"
function OSCBase:GetChildClass() end
---@generic T : OSCBase
---@param class `T`
---@return boolean
function OSCBase:IsClass(class) end
---@return ShowData
function OSCBase:Parent() end
---@param index integer
---@return OSCData
function OSCBase:Ptr(index) end
---@return OSCData[]
function OSCBase:Children() end
---@return OSCData?
function OSCBase:CurrentChild() end
---@return 19
function OSCBase:PropertyCount() end
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
---@overload fun(idx: 15): "EnableInput"
---@overload fun(idx: 16): "EnableOutput"
---@overload fun(idx: 17): "Interface"
---@overload fun(idx: 18): "PreferredIP"
function OSCBase:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15|16): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|17|18): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function OSCBase:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15|16): "UInt32"
---@overload fun(idx: 7|8|13|17): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 18): "Custom"
function OSCBase:PropertyType(idx) end
---@overload fun(name: "PreferredIP", role: nil): Manet.IP4
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"EnableInput"|"EnableOutput", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Interface", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"EnableInput"|"EnableOutput"|"Interface"|"PreferredIP", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OSCData
function OSCBase:Get(name, role) end
---@generic T : OSCData
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): OSCData
function OSCBase:Create(index, class, undo) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): OSCData
function OSCBase:Append(class, undo, count) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OSCData
function OSCBase:Acquire(class, undo) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OSCData
---@deprecated use "Acquire" instead
function OSCBase:Aquire(class, undo) end
---@generic T : OSCData
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OSCData
function OSCBase:Insert(index, class, undo, count) end
---@generic T : OSCData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OSCData
function OSCBase:Find(class, undo) end
---@overload fun(property_name: "PreferredIP", property_value: Manet.IP4, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"EnableInput"|"EnableOutput", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Interface", property_value: string, override_change_level: ChangeLevel?)
function OSCBase:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DestinationIP", property_value: Manet.IP4)
---@overload fun(property_name: "Mode", property_value: OSCMode)
---@overload fun(property_name: "DestinationIP", property_value: Manet.IP4)
---@overload fun(property_name: "Mode", property_value: OSCMode)
---@overload fun(property_name: "Receive"|"Send"|"ReceiveCommand"|"SendCommand"|"EchoInput"|"EchoOutput", property_value: YesNo|boolean)
---@overload fun(property_name: "Port"|"FaderRange", property_value: integer)
---@overload fun(property_name: "ExecutorKnob"|"Key"|"Prefix"|"DataPool"|"Page"|"Fader", property_value: string)
function OSCBase:SetChildren(property_name, property_value) end