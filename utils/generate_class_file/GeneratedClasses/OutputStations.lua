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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Action", role: nil): fun(command: string) : boolean
---@overload fun(name: "MyOutputStation", role: nil): OutputStation
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Action"|"MyOutputStation", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputStationCollect
function OutputStations:Get(name, role) end
---@overload fun(index: integer, class: "OutputStationCollect", undo: Undo?): OutputStationCollect
---@overload fun(index: integer, class: nil, undo: Undo?): OutputStationCollect
function OutputStations:Create(index, class, undo) end
---@overload fun(class: "OutputStationCollect", undo: Undo?, count: integer?): OutputStationCollect
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputStationCollect
function OutputStations:Append(class, undo, count) end
---@overload fun(class: "OutputStationCollect", undo: Undo?): OutputStationCollect
---@overload fun(class: nil, undo: Undo?): OutputStationCollect
function OutputStations:Acquire(class, undo) end
---@overload fun(class: "OutputStationCollect", undo: Undo?): OutputStationCollect
---@overload fun(class: nil, undo: Undo?): OutputStationCollect
---@deprecated use "Acquire" instead
function OutputStations:Aquire(class, undo) end
---@overload fun(index: integer, class: "OutputStationCollect", undo: Undo?, count: integer?): OutputStationCollect
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputStationCollect
function OutputStations:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "OutputStationCollect"): OutputStationCollect
---@overload fun(name: string, class: nil): OutputStationCollect
function OutputStations:Find(name, class) end
---@overload fun(name: string, class: "OutputStationCollect"): OutputStationCollect
---@overload fun(name: string, class: nil): Object
function OutputStations:FindRecursive(name, class) end
