---@meta

---@class Parameter: NamedObj Ask Andrii
---@field PID integer
---@field Type RDMParameterType
---@field DataType RDMDataType
---@field Command RDMParameterCommand
---@field SensorUnit Pretty RDMSensorUnit
---@field SensorUnitPrefix PrettyRDMSensorUnitPrefix
---@field MinValue integer
---@field MaxValue integer
---@field PDLSize integer
---@field Description string
---@field DescriptionRecieved integer
---@field Poll integer
---@field UserCreated integer
---@field NotSupported integer
local Parameter = {}
---@return "Parameter"
function Parameter:GetClass() end
---@return "ValueBase"
function Parameter:GetChildClass() end
---@return Parameters
function Parameter:Parent() end
---@param index integer
---@return ValueBase
function Parameter:Ptr(index) end
---@return ValueBase[]
function Parameter:Children() end
---@return ValueBase?
function Parameter:CurrentChild() end
---@overload fun(name: "SensorUnit", role: nil): Pretty RDMSensorUnit
---@overload fun(name: "SensorUnitPrefix", role: nil): PrettyRDMSensorUnitPrefix
---@overload fun(name: "DataType", role: nil): RDMDataType
---@overload fun(name: "Command", role: nil): RDMParameterCommand
---@overload fun(name: "Type", role: nil): RDMParameterType
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "PID"|"MinValue"|"MaxValue"|"PDLSize"|"DescriptionRecieved"|"Poll"|"UserCreated"|"NotSupported"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Description"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "PID"|"Type"|"DataType"|"Command"|"SensorUnit"|"SensorUnitPrefix"|"MinValue"|"MaxValue"|"PDLSize"|"Description"|"DescriptionRecieved"|"Poll"|"UserCreated"|"NotSupported"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ValueBase
function Parameter:Get(name, role) end
---@generic T : ValueBase
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ValueBase
function Parameter:Create(index, class, undo) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ValueBase
function Parameter:Append(class, undo, count) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ValueBase
function Parameter:Acquire(class, undo) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ValueBase
---@deprecated use "Acquire" instead
function Parameter:Aquire(class, undo) end
---@generic T : ValueBase
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ValueBase
function Parameter:Insert(index, class, undo, count) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ValueBase
function Parameter:Find(class, undo) end