---@meta

---@class Emitter: NamedObj
---@field Color Colors.RGB<float>
---@field Intensity number
---@field DominantWaveLength number
---@field DiodePart string
local Emitter = {
    Color="1,1,1,1",
    Intensity="1",
    DominantWaveLength="0"
}
---@return "Emitter"
function Emitter:GetClass() end
---@return "MeasurementEmitter"
function Emitter:GetChildClass() end
---@return Emitters
function Emitter:Parent() end
---@param index integer
---@return MeasurementEmitter
function Emitter:Ptr(index) end
---@return MeasurementEmitter[]
function Emitter:Children() end
---@return MeasurementEmitter?
function Emitter:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "Intensity"|"DominantWaveLength", role: nil): number
---@overload fun(name: "DiodePart", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Color"|"Intensity"|"DominantWaveLength"|"DiodePart", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementEmitter
function Emitter:Get(name, role) end
---@overload fun(index: integer, class: "MeasurementEmitter", undo: Undo?): MeasurementEmitter
---@overload fun(index: integer, class: nil, undo: Undo?): MeasurementEmitter
function Emitter:Create(index, class, undo) end
---@overload fun(class: "MeasurementEmitter", undo: Undo?, count: integer?): MeasurementEmitter
---@overload fun(class: nil, undo: Undo?, count: integer?): MeasurementEmitter
function Emitter:Append(class, undo, count) end
---@overload fun(class: "MeasurementEmitter", undo: Undo?): MeasurementEmitter
---@overload fun(class: nil, undo: Undo?): MeasurementEmitter
function Emitter:Acquire(class, undo) end
---@overload fun(class: "MeasurementEmitter", undo: Undo?): MeasurementEmitter
---@overload fun(class: nil, undo: Undo?): MeasurementEmitter
---@deprecated use "Acquire" instead
function Emitter:Aquire(class, undo) end
---@overload fun(index: integer, class: "MeasurementEmitter", undo: Undo?, count: integer?): MeasurementEmitter
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MeasurementEmitter
function Emitter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MeasurementEmitter"): MeasurementEmitter
---@overload fun(name: string, class: nil): MeasurementEmitter
function Emitter:Find(name, class) end
---@overload fun(name: string, class: "MeasurementEmitter"): MeasurementEmitter
---@overload fun(name: string, class: nil): Object
function Emitter:FindRecursive(name, class) end
