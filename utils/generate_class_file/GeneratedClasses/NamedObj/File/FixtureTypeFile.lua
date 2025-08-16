---@meta

---@class FixtureTypeFile: File Library cache entry for a fixture type.
---@field Manufacturer string
---@field RDMManufacturer string
---@field RdmDeviceModel string
---@field Lock integer
---@field Version Stream.Version
---@field ActualSource string
---@field Source string
local FixtureTypeFile = {}
---@return "FixtureTypeFile"
function FixtureTypeFile:GetClass() end
---@return "FixtureTypeModeFile"
function FixtureTypeFile:GetChildClass() end
---@generic T : FixtureTypeFile
---@param class `T`
---@return boolean
function FixtureTypeFile:IsClass(class) end
---@param index integer
---@return FixtureTypeModeFile
function FixtureTypeFile:Ptr(index) end
---@return FixtureTypeModeFile[]
function FixtureTypeFile:Children() end
---@return FixtureTypeModeFile?
function FixtureTypeFile:CurrentChild() end
---@return 26
function FixtureTypeFile:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Index"
---@overload fun(idx: 4): "Count"
---@overload fun(idx: 5): "No"
---@overload fun(idx: 6): "Name"
---@overload fun(idx: 7): "Note"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Objectname"
---@overload fun(idx: 15): "FileName"
---@overload fun(idx: 16): "FileSize"
---@overload fun(idx: 17): "DateModified"
---@overload fun(idx: 18): "Path"
---@overload fun(idx: 19): "Manufacturer"
---@overload fun(idx: 20): "RDMManufacturer"
---@overload fun(idx: 21): "RdmDeviceModel"
---@overload fun(idx: 22): "Lock"
---@overload fun(idx: 23): "Version"
---@overload fun(idx: 24): "ActualSource"
---@overload fun(idx: 25): "Source"
function FixtureTypeFile:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|4|5|16|17|22|24|25): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 6|7|12|14|15|18|19|20|21): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 13): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 23): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function FixtureTypeFile:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|8|22): "UInt32"
---@overload fun(idx: 6|7|12|14|15|17|18|19|20|21|24|25): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11|16): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 23): "Custom"
function FixtureTypeFile:PropertyType(idx) end
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"FileSize"|"Lock", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Objectname"|"FileName"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Source", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"FileSize"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"Version"|"ActualSource"|"Source", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureTypeModeFile
function FixtureTypeFile:Get(name, role) end
---@overload fun(index: integer, class: "FixtureTypeModeFile", undo: Undo?): FixtureTypeModeFile
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureTypeModeFile
function FixtureTypeFile:Create(index, class, undo) end
---@overload fun(class: "FixtureTypeModeFile", undo: Undo?, count: integer?): FixtureTypeModeFile
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureTypeModeFile
function FixtureTypeFile:Append(class, undo, count) end
---@overload fun(class: "FixtureTypeModeFile", undo: Undo?): FixtureTypeModeFile
---@overload fun(class: nil, undo: Undo?): FixtureTypeModeFile
function FixtureTypeFile:Acquire(class, undo) end
---@overload fun(class: "FixtureTypeModeFile", undo: Undo?): FixtureTypeModeFile
---@overload fun(class: nil, undo: Undo?): FixtureTypeModeFile
---@deprecated use "Acquire" instead
function FixtureTypeFile:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureTypeModeFile", undo: Undo?, count: integer?): FixtureTypeModeFile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureTypeModeFile
function FixtureTypeFile:Insert(index, class, undo, count) end
---@overload fun(class: "FixtureTypeModeFile", undo: Undo?): FixtureTypeModeFile
---@overload fun(class: nil, undo: Undo?): FixtureTypeModeFile
function FixtureTypeFile:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"FileSize"|"Lock", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Objectname"|"FileName"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Source", property_value: string, override_change_level: ChangeLevel?)
function FixtureTypeFile:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DMXFootprint", property_value: [DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak])
---@overload fun(property_name: "Lock", property_value: integer)
---@overload fun(property_name: "VirtualChannels"|"NonVirtualChannels", property_value: DeskLightChannel[])
---@overload fun(property_name: "DMXFootprint", property_value: [DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak])
---@overload fun(property_name: "Lock", property_value: integer)
---@overload fun(property_name: "Mode"|"Description", property_value: string)
function FixtureTypeFile:SetChildren(property_name, property_value) end