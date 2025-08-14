---@meta

---@class OutputStationCollect: NamedObj
---@field DevicesinSession integer
local OutputStationCollect = {}
---@return "OutputStationCollect"
function OutputStationCollect:GetClass() end
---@return "OutputStation"
function OutputStationCollect:GetChildClass() end
---@return OutputStations
function OutputStationCollect:Parent() end
---@param index integer
---@return OutputStation
function OutputStationCollect:Ptr(index) end
---@return OutputStation[]
function OutputStationCollect:Children() end
---@return OutputStation?
function OutputStationCollect:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DevicesinSession"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DevicesinSession"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputStation
function OutputStationCollect:Get(name, role) end
---@generic T : OutputStation
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Create(index, class, undo) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputStation
function OutputStationCollect:Append(class, undo, count) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Acquire(class, undo) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStation
---@deprecated use "Acquire" instead
function OutputStationCollect:Aquire(class, undo) end
---@generic T : OutputStation
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputStation
function OutputStationCollect:Insert(index, class, undo, count) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Find(class, undo) end