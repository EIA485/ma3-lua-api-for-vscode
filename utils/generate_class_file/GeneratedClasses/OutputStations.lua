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
---@return DeviceConfigurations
function OutputStations:Parent() end
---@param index integer
---@return OutputStationCollect
function OutputStations:Ptr(index) end
---@return OutputStationCollect[]
function OutputStations:Children() end
---@return OutputStationCollect?
function OutputStations:CurrentChild() end
---@overload fun(name: "MyOutputStation", role: nil): OutputStation
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Action", role: nil): fun(command: string) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Action"|"MyOutputStation"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
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