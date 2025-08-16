---@meta

---@class System: GuidObject
---@field SenderIP Manet.IP4
---@field Requested Yes|true
---@field Port integer
---@field MulticastIP Manet.IP4
---@field MapX XYZMapping
---@field MapY XYZMapping
---@field MapZ XYZMapping
---@field InvX Yes|true
---@field InvY Yes|true
---@field InvZ Yes|true
---@field MergeMode DMXMergeMode
---@field DMXPriority DmxPrio
local System = {
    Requested="No",
    MapX="X",
    MapY="Y",
    MapZ="Z",
    InvX="No",
    InvY="No",
    InvZ="No",
    DMXPriority="LTP"
}
---@return "System"
function System:GetClass() end
---@return "Tracker"
function System:GetChildClass() end
---@generic T : System
---@param class `T`
---@return boolean
function System:IsClass(class) end
---@return PSNProtocol
function System:Parent() end
---@param index integer
---@return Tracker
function System:Ptr(index) end
---@return Tracker[]
function System:Children() end
---@return Tracker?
function System:CurrentChild() end
---@return 32
function System:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "SenderIP"
---@overload fun(idx: 21): "Requested"
---@overload fun(idx: 22): "Port"
---@overload fun(idx: 23): "MulticastIP"
---@overload fun(idx: 24): "MapX"
---@overload fun(idx: 25): "MapY"
---@overload fun(idx: 26): "MapZ"
---@overload fun(idx: 27): "InvX"
---@overload fun(idx: 28): "InvY"
---@overload fun(idx: 29): "InvZ"
---@overload fun(idx: 30): "MergeMode"
---@overload fun(idx: 31): "DMXPriority"
function System:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|20): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|22|23): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 21|27|28|29): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 24|25|26): {ExportIgnore: False, EnumCollection: XYZMapping, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 30): {ExportIgnore: False, EnumCollection: DMXMergeMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 31): {ExportIgnore: False, EnumCollection: DmxPrio, ReadOnly: False, ImportIgnore: False}
function System:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|21|24|25|26|27|28|29): "UInt32"
---@overload fun(idx: 7|12|17|18): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|20|23): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 22): "UInt16"
---@overload fun(idx: 30|31): "UInt8"
function System:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "MergeMode", role: nil): DMXMergeMode
---@overload fun(name: "DMXPriority", role: nil): DmxPrio
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "SenderIP"|"MulticastIP", role: nil): Manet.IP4
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "MapX"|"MapY"|"MapZ", role: nil): XYZMapping
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Requested"|"InvX"|"InvY"|"InvZ", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Port", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"SenderIP"|"Requested"|"Port"|"MulticastIP"|"MapX"|"MapY"|"MapZ"|"InvX"|"InvY"|"InvZ"|"MergeMode"|"DMXPriority", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Tracker
function System:Get(name, role) end
---@generic T : Tracker
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Tracker
function System:Create(index, class, undo) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Tracker
function System:Append(class, undo, count) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tracker
function System:Acquire(class, undo) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tracker
---@deprecated use "Acquire" instead
function System:Aquire(class, undo) end
---@generic T : Tracker
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Tracker
function System:Insert(index, class, undo, count) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tracker
function System:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DMXPriority", property_value: DmxPrio, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SenderIP"|"MulticastIP", property_value: Manet.IP4, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MapX"|"MapY"|"MapZ", property_value: XYZMapping, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Requested"|"InvX"|"InvY"|"InvZ", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Port", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function System:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "TrackerID", property_value: integer)
---@overload fun(property_name: "IsOnline", property_value: Yes|true)
---@overload fun(property_name: "MArkerID", property_value: FixtureIdEnum)
---@overload fun(property_name: "MArkerID", property_value: FixtureIdEnum)
---@overload fun(property_name: "IsOnline", property_value: Yes|true)
---@overload fun(property_name: "TrackerID", property_value: integer)
---@overload fun(property_name: "PositionZ"|"RotY"|"PositionX"|"SpeedX"|"SpeedY"|"SpeedZ"|"RotX"|"RotZ"|"PositionY", property_value: number)
function System:SetChildren(property_name, property_value) end