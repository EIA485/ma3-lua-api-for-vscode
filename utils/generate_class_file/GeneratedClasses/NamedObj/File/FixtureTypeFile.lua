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
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Lock"|"FileSize"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Source"|"Objectname"|"FileName"|"DateModified"|"Path"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"Version"|"ActualSource"|"Source"|"Objectname"|"FileName"|"FileSize"|"DateModified"|"Path"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
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