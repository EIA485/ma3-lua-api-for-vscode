---@meta

---@class OutputStationCollect: NamedObj
---@field Devicesin
Session integer
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Devicesin
Session", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Devicesin
Session", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputStation
function OutputStationCollect:Get(name, role) end
---@overload fun(index: integer, class: "OutputStation", undo: Undo?): OutputStation
---@overload fun(index: integer, class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Create(index, class, undo) end
---@overload fun(class: "OutputStation", undo: Undo?, count: integer?): OutputStation
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputStation
function OutputStationCollect:Append(class, undo, count) end
---@overload fun(class: "OutputStation", undo: Undo?): OutputStation
---@overload fun(class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Acquire(class, undo) end
---@overload fun(class: "OutputStation", undo: Undo?): OutputStation
---@overload fun(class: nil, undo: Undo?): OutputStation
---@deprecated use "Acquire" instead
function OutputStationCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "OutputStation", undo: Undo?, count: integer?): OutputStation
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputStation
function OutputStationCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "OutputStation"): OutputStation
---@overload fun(name: string, class: nil): OutputStation
function OutputStationCollect:Find(name, class) end
---@overload fun(name: string, class: "OutputStation"): OutputStation
---@overload fun(name: string, class: nil): Object
function OutputStationCollect:FindRecursive(name, class) end
