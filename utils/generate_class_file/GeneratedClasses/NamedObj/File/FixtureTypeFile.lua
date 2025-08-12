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
---@param index integer
---@return FixtureTypeModeFile
function FixtureTypeFile:Ptr(index) end
---@return FixtureTypeModeFile[]
function FixtureTypeFile:Children() end
---@return FixtureTypeModeFile?
function FixtureTypeFile:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Objectname"|"FileName", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel", role: nil): string
---@overload fun(name: "Lock", role: nil): integer
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "ActualSource"|"Source", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"FileSize"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"Version"|"ActualSource"|"Source", role: Enums.Roles): string
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
---@overload fun(name: string, class: "FixtureTypeModeFile"): FixtureTypeModeFile
---@overload fun(name: string, class: nil): FixtureTypeModeFile
function FixtureTypeFile:Find(name, class) end
---@overload fun(name: string, class: "FixtureTypeModeFile"): FixtureTypeModeFile
---@overload fun(name: string, class: nil): Object
function FixtureTypeFile:FindRecursive(name, class) end
