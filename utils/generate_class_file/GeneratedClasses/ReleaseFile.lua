---@meta

---@class ReleaseFile: Object
---@field Description string
---@field Version string
---@field Date string
---@field ReleaseFileVersion string
---@field haveUpdate YesNo|boolean
local ReleaseFile = {}
---@return "ReleaseFile"
function ReleaseFile:GetClass() end
---@return "MAPacket"
function ReleaseFile:GetChildClass() end
---@generic T : ReleaseFile
---@param class `T`
---@return boolean
function ReleaseFile:IsClass(class) end
---@return Temp
function ReleaseFile:Parent() end
---@param index integer
---@return MAPacket
function ReleaseFile:Ptr(index) end
---@return MAPacket[]
function ReleaseFile:Children() end
---@return MAPacket?
function ReleaseFile:CurrentChild() end
---@return 20
function ReleaseFile:PropertyCount() end
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
---@overload fun(idx: 15): "Description"
---@overload fun(idx: 16): "Version"
---@overload fun(idx: 17): "Date"
---@overload fun(idx: 18): "ReleaseFileVersion"
---@overload fun(idx: 19): "haveUpdate"
function ReleaseFile:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|19): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|17|18): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function ReleaseFile:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|15|16|17|18): "String"
---@overload fun(idx: 10|11|19): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function ReleaseFile:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"haveUpdate", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Description"|"Version"|"Date"|"ReleaseFileVersion", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Description"|"Version"|"Date"|"ReleaseFileVersion"|"haveUpdate", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MAPacket
function ReleaseFile:Get(name, role) end
---@generic T : MAPacket
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MAPacket
function ReleaseFile:Create(index, class, undo) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MAPacket
function ReleaseFile:Append(class, undo, count) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MAPacket
function ReleaseFile:Acquire(class, undo) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MAPacket
---@deprecated use "Acquire" instead
function ReleaseFile:Aquire(class, undo) end
---@generic T : MAPacket
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MAPacket
function ReleaseFile:Insert(index, class, undo, count) end
---@generic T : MAPacket
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MAPacket
function ReleaseFile:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"haveUpdate", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Description"|"Version"|"Date"|"ReleaseFileVersion", property_value: string, override_change_level: ChangeLevel?)
function ReleaseFile:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Description"|"Sha256sum"|"HostTypes"|"Version"|"Signature"|"Name"|"Date"|"Signature2"|"ID"|"Destination"|"ReleaseFileVersion"|"Tag"|"DestinationMac"|"Type"|"Execute"|"DestinationWin"|"Size"|"ZipSize", property_value: string)
function ReleaseFile:SetChildren(property_name, property_value) end