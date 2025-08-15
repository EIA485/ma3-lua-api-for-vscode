---@meta

---@class DmxUniverse: GuidObject Represents a DMX universe.
---@field Name string
---@field MergeMode DMXMergeMode
---@field Request LicenseRequest
---@field Granted Yes|true
---@field PortOut YesNo|boolean
---@field PortIn YesNo|boolean
---@field PortRDM YesNo|boolean
---@field CoarseParams integer
---@field Used integer
---@field ParkedCount integer
---@field TesterCount integer
---@field PatchInfo [PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo]
local DmxUniverse = {
    MergeMode="Prio",
    Request="Auto",
    CoarseParams="0",
    Used="0",
    ParkedCount="0",
    TesterCount="0"
}
---@return "DmxUniverse"
function DmxUniverse:GetClass() end
---@return "DMX"
function DmxUniverse:GetChildClass() end
---@generic T : DmxUniverse
---@param class `T`
---@return boolean
function DmxUniverse:IsClass(class) end
---@return DmxUniverses
function DmxUniverse:Parent() end
---@param index integer
---@return DMX
function DmxUniverse:Ptr(index) end
---@return DMX[]
function DmxUniverse:Children() end
---@return DMX?
function DmxUniverse:CurrentChild() end
---@return 31
function DmxUniverse:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "UserExpanded"
---@overload fun(idx: 8): "FaderEnabled"
---@overload fun(idx: 9): "Owned"
---@overload fun(idx: 10): "Hidden"
---@overload fun(idx: 11): "DependencyExport"
---@overload fun(idx: 12): "MemoryFootprint"
---@overload fun(idx: 13): "Guid"
---@overload fun(idx: 14): "Scribble"
---@overload fun(idx: 15): "Appearance"
---@overload fun(idx: 16): "NameAndApp"
---@overload fun(idx: 17): "Note"
---@overload fun(idx: 18): "Tags"
---@overload fun(idx: 19): "Name"
---@overload fun(idx: 20): "MergeMode"
---@overload fun(idx: 21): "Request"
---@overload fun(idx: 22): "Granted"
---@overload fun(idx: 23): "PortOut"
---@overload fun(idx: 24): "PortIn"
---@overload fun(idx: 25): "PortRDM"
---@overload fun(idx: 26): "CoarseParams"
---@overload fun(idx: 27): "Used"
---@overload fun(idx: 28): "ParkedCount"
---@overload fun(idx: 29): "TesterCount"
---@overload fun(idx: 30): "PatchInfo"
function DmxUniverse:PropertyName(idx) end
---@overload fun(idx: 0|1|2|23|24|25): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|10): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|26|27|28|29|30): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 8|9): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 11|13|14|15|17|18|19): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 12|16): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: DMXMergeMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 21): {ExportIgnore: False, EnumCollection: LicenseRequest, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 22): {ExportIgnore: True, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
function DmxUniverse:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|7|23|24|25|27): "UInt32"
---@overload fun(idx: 8|9): "Bool"
---@overload fun(idx: 10): "UInt64"
---@overload fun(idx: 11|16|17|19): "String"
---@overload fun(idx: 12): "Int64"
---@overload fun(idx: 13|18|30): "Custom"
---@overload fun(idx: 14|15): "Handle"
---@overload fun(idx: 20|21|22): "UInt8"
---@overload fun(idx: 26): "Int32"
---@overload fun(idx: 28|29): "UInt16"
function DmxUniverse:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "MergeMode", role: nil): DMXMergeMode
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Request", role: nil): LicenseRequest
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"PortOut"|"PortIn"|"PortRDM", role: nil): YesNo|boolean
---@overload fun(name: "Granted", role: nil): Yes|true
---@overload fun(name: "PatchInfo", role: nil): [PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo]
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"CoarseParams"|"Used"|"ParkedCount"|"TesterCount", role: nil): integer
---@overload fun(name: "DependencyExport"|"NameAndApp"|"Note"|"Name", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Name"|"MergeMode"|"Request"|"Granted"|"PortOut"|"PortIn"|"PortRDM"|"CoarseParams"|"Used"|"ParkedCount"|"TesterCount"|"PatchInfo", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DMX
function DmxUniverse:Get(name, role) end
---@generic T : DMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMX
function DmxUniverse:Create(index, class, undo) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMX
function DmxUniverse:Append(class, undo, count) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMX
function DmxUniverse:Acquire(class, undo) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMX
---@deprecated use "Acquire" instead
function DmxUniverse:Aquire(class, undo) end
---@generic T : DMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMX
function DmxUniverse:Insert(index, class, undo, count) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMX
function DmxUniverse:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Request", property_value: LicenseRequest, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"PortOut"|"PortIn"|"PortRDM", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Granted", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PatchInfo", property_value: [PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo], override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"CoarseParams"|"Used"|"ParkedCount"|"TesterCount", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DependencyExport"|"Note"|"Name", property_value: string, override_change_level: ChangeLevel?)
function DmxUniverse:Set(property_name, property_value, override_change_level) end
function DmxUniverse:ActiveDisplay(property_name, property_value) end