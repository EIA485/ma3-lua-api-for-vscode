---@meta

---@class Parameter: NamedObj Ask Andrii
---@field PID integer
---@field Type RDMParameterType
---@field DataType RDMDataType
---@field Command RDMParameterCommand
---@field SensorUnit Pretty RDMSensorUnit
---@field SensorUnit
Prefix PrettyRDMSensorUnitPrefix
---@field MinValue integer
---@field MaxValue integer
---@field PDLSize integer
---@field Description string
---@field Description
Recieved integer
---@field Poll integer
---@field User
Created integer
---@field Not
Supported integer
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"PID", role: nil): integer
---@overload fun(name: "Type", role: nil): RDMParameterType
---@overload fun(name: "DataType", role: nil): RDMDataType
---@overload fun(name: "Command", role: nil): RDMParameterCommand
---@overload fun(name: "SensorUnit", role: nil): Pretty RDMSensorUnit
---@overload fun(name: "SensorUnit
Prefix", role: nil): PrettyRDMSensorUnitPrefix
---@overload fun(name: "MinValue"|"MaxValue"|"PDLSize", role: nil): integer
---@overload fun(name: "Description", role: nil): string
---@overload fun(name: "Description
Recieved"|"Poll"|"User
Created"|"Not
Supported", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PID"|"Type"|"DataType"|"Command"|"SensorUnit"|"SensorUnit
Prefix"|"MinValue"|"MaxValue"|"PDLSize"|"Description"|"Description
Recieved"|"Poll"|"User
Created"|"Not
Supported", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ValueBase
function Parameter:Get(name, role) end
---@overload fun(index: integer, class: "ValueBase", undo: Undo?): ValueBase
---@overload fun(index: integer, class: "ValueSensor", undo: Undo?): ValueSensor
---@overload fun(index: integer, class: "Value_REAL_TIME_CLOCK", undo: Undo?): Value_REAL_TIME_CLOCK
---@overload fun(index: integer, class: "Value_Default_Slot_Value", undo: Undo?): Value_Default_Slot_Value
---@overload fun(index: integer, class: "Value_SLOT_INFO", undo: Undo?): Value_SLOT_INFO
---@overload fun(index: integer, class: "Value_SENSOR_DEFINITION", undo: Undo?): Value_SENSOR_DEFINITION
---@overload fun(index: integer, class: "Value_DMX_PERSONALITY_DESCRIPTION", undo: Undo?): Value_DMX_PERSONALITY_DESCRIPTION
---@overload fun(index: integer, class: "Value_ASCII", undo: Undo?): Value_ASCII
---@overload fun(index: integer, class: "Value_SIGNED_DWORD", undo: Undo?): Value_SIGNED_DWORD
---@overload fun(index: integer, class: "Value_UNSIGNED_DWORD", undo: Undo?): Value_UNSIGNED_DWORD
---@overload fun(index: integer, class: "Value_SIGNED_WORD", undo: Undo?): Value_SIGNED_WORD
---@overload fun(index: integer, class: "Value_UNSIGNED_WORD", undo: Undo?): Value_UNSIGNED_WORD
---@overload fun(index: integer, class: "RDMValue_SIGNED_BYTE", undo: Undo?): RDMValue_SIGNED_BYTE
---@overload fun(index: integer, class: "RDMValue_UNSIGNED_BYTE", undo: Undo?): RDMValue_UNSIGNED_BYTE
---@overload fun(index: integer, class: "ValueBool", undo: Undo?): ValueBool
---@overload fun(index: integer, class: nil, undo: Undo?): ValueBase
function Parameter:Create(index, class, undo) end
---@overload fun(class: "ValueBase", undo: Undo?, count: integer?): ValueBase
---@overload fun(class: "ValueSensor", undo: Undo?, count: integer?): ValueSensor
---@overload fun(class: "Value_REAL_TIME_CLOCK", undo: Undo?, count: integer?): Value_REAL_TIME_CLOCK
---@overload fun(class: "Value_Default_Slot_Value", undo: Undo?, count: integer?): Value_Default_Slot_Value
---@overload fun(class: "Value_SLOT_INFO", undo: Undo?, count: integer?): Value_SLOT_INFO
---@overload fun(class: "Value_SENSOR_DEFINITION", undo: Undo?, count: integer?): Value_SENSOR_DEFINITION
---@overload fun(class: "Value_DMX_PERSONALITY_DESCRIPTION", undo: Undo?, count: integer?): Value_DMX_PERSONALITY_DESCRIPTION
---@overload fun(class: "Value_ASCII", undo: Undo?, count: integer?): Value_ASCII
---@overload fun(class: "Value_SIGNED_DWORD", undo: Undo?, count: integer?): Value_SIGNED_DWORD
---@overload fun(class: "Value_UNSIGNED_DWORD", undo: Undo?, count: integer?): Value_UNSIGNED_DWORD
---@overload fun(class: "Value_SIGNED_WORD", undo: Undo?, count: integer?): Value_SIGNED_WORD
---@overload fun(class: "Value_UNSIGNED_WORD", undo: Undo?, count: integer?): Value_UNSIGNED_WORD
---@overload fun(class: "RDMValue_SIGNED_BYTE", undo: Undo?, count: integer?): RDMValue_SIGNED_BYTE
---@overload fun(class: "RDMValue_UNSIGNED_BYTE", undo: Undo?, count: integer?): RDMValue_UNSIGNED_BYTE
---@overload fun(class: "ValueBool", undo: Undo?, count: integer?): ValueBool
---@overload fun(class: nil, undo: Undo?, count: integer?): ValueBase
function Parameter:Append(class, undo, count) end
---@overload fun(class: "ValueBase", undo: Undo?): ValueBase
---@overload fun(class: "ValueSensor", undo: Undo?): ValueSensor
---@overload fun(class: "Value_REAL_TIME_CLOCK", undo: Undo?): Value_REAL_TIME_CLOCK
---@overload fun(class: "Value_Default_Slot_Value", undo: Undo?): Value_Default_Slot_Value
---@overload fun(class: "Value_SLOT_INFO", undo: Undo?): Value_SLOT_INFO
---@overload fun(class: "Value_SENSOR_DEFINITION", undo: Undo?): Value_SENSOR_DEFINITION
---@overload fun(class: "Value_DMX_PERSONALITY_DESCRIPTION", undo: Undo?): Value_DMX_PERSONALITY_DESCRIPTION
---@overload fun(class: "Value_ASCII", undo: Undo?): Value_ASCII
---@overload fun(class: "Value_SIGNED_DWORD", undo: Undo?): Value_SIGNED_DWORD
---@overload fun(class: "Value_UNSIGNED_DWORD", undo: Undo?): Value_UNSIGNED_DWORD
---@overload fun(class: "Value_SIGNED_WORD", undo: Undo?): Value_SIGNED_WORD
---@overload fun(class: "Value_UNSIGNED_WORD", undo: Undo?): Value_UNSIGNED_WORD
---@overload fun(class: "RDMValue_SIGNED_BYTE", undo: Undo?): RDMValue_SIGNED_BYTE
---@overload fun(class: "RDMValue_UNSIGNED_BYTE", undo: Undo?): RDMValue_UNSIGNED_BYTE
---@overload fun(class: "ValueBool", undo: Undo?): ValueBool
---@overload fun(class: nil, undo: Undo?): ValueBase
function Parameter:Acquire(class, undo) end
---@overload fun(class: "ValueBase", undo: Undo?): ValueBase
---@overload fun(class: "ValueSensor", undo: Undo?): ValueSensor
---@overload fun(class: "Value_REAL_TIME_CLOCK", undo: Undo?): Value_REAL_TIME_CLOCK
---@overload fun(class: "Value_Default_Slot_Value", undo: Undo?): Value_Default_Slot_Value
---@overload fun(class: "Value_SLOT_INFO", undo: Undo?): Value_SLOT_INFO
---@overload fun(class: "Value_SENSOR_DEFINITION", undo: Undo?): Value_SENSOR_DEFINITION
---@overload fun(class: "Value_DMX_PERSONALITY_DESCRIPTION", undo: Undo?): Value_DMX_PERSONALITY_DESCRIPTION
---@overload fun(class: "Value_ASCII", undo: Undo?): Value_ASCII
---@overload fun(class: "Value_SIGNED_DWORD", undo: Undo?): Value_SIGNED_DWORD
---@overload fun(class: "Value_UNSIGNED_DWORD", undo: Undo?): Value_UNSIGNED_DWORD
---@overload fun(class: "Value_SIGNED_WORD", undo: Undo?): Value_SIGNED_WORD
---@overload fun(class: "Value_UNSIGNED_WORD", undo: Undo?): Value_UNSIGNED_WORD
---@overload fun(class: "RDMValue_SIGNED_BYTE", undo: Undo?): RDMValue_SIGNED_BYTE
---@overload fun(class: "RDMValue_UNSIGNED_BYTE", undo: Undo?): RDMValue_UNSIGNED_BYTE
---@overload fun(class: "ValueBool", undo: Undo?): ValueBool
---@overload fun(class: nil, undo: Undo?): ValueBase
---@deprecated use "Acquire" instead
function Parameter:Aquire(class, undo) end
---@overload fun(index: integer, class: "ValueBase", undo: Undo?, count: integer?): ValueBase
---@overload fun(index: integer, class: "ValueSensor", undo: Undo?, count: integer?): ValueSensor
---@overload fun(index: integer, class: "Value_REAL_TIME_CLOCK", undo: Undo?, count: integer?): Value_REAL_TIME_CLOCK
---@overload fun(index: integer, class: "Value_Default_Slot_Value", undo: Undo?, count: integer?): Value_Default_Slot_Value
---@overload fun(index: integer, class: "Value_SLOT_INFO", undo: Undo?, count: integer?): Value_SLOT_INFO
---@overload fun(index: integer, class: "Value_SENSOR_DEFINITION", undo: Undo?, count: integer?): Value_SENSOR_DEFINITION
---@overload fun(index: integer, class: "Value_DMX_PERSONALITY_DESCRIPTION", undo: Undo?, count: integer?): Value_DMX_PERSONALITY_DESCRIPTION
---@overload fun(index: integer, class: "Value_ASCII", undo: Undo?, count: integer?): Value_ASCII
---@overload fun(index: integer, class: "Value_SIGNED_DWORD", undo: Undo?, count: integer?): Value_SIGNED_DWORD
---@overload fun(index: integer, class: "Value_UNSIGNED_DWORD", undo: Undo?, count: integer?): Value_UNSIGNED_DWORD
---@overload fun(index: integer, class: "Value_SIGNED_WORD", undo: Undo?, count: integer?): Value_SIGNED_WORD
---@overload fun(index: integer, class: "Value_UNSIGNED_WORD", undo: Undo?, count: integer?): Value_UNSIGNED_WORD
---@overload fun(index: integer, class: "RDMValue_SIGNED_BYTE", undo: Undo?, count: integer?): RDMValue_SIGNED_BYTE
---@overload fun(index: integer, class: "RDMValue_UNSIGNED_BYTE", undo: Undo?, count: integer?): RDMValue_UNSIGNED_BYTE
---@overload fun(index: integer, class: "ValueBool", undo: Undo?, count: integer?): ValueBool
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ValueBase
function Parameter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ValueBase"): ValueBase
---@overload fun(name: string, class: "ValueSensor"): ValueSensor
---@overload fun(name: string, class: "Value_REAL_TIME_CLOCK"): Value_REAL_TIME_CLOCK
---@overload fun(name: string, class: "Value_Default_Slot_Value"): Value_Default_Slot_Value
---@overload fun(name: string, class: "Value_SLOT_INFO"): Value_SLOT_INFO
---@overload fun(name: string, class: "Value_SENSOR_DEFINITION"): Value_SENSOR_DEFINITION
---@overload fun(name: string, class: "Value_DMX_PERSONALITY_DESCRIPTION"): Value_DMX_PERSONALITY_DESCRIPTION
---@overload fun(name: string, class: "Value_ASCII"): Value_ASCII
---@overload fun(name: string, class: "Value_SIGNED_DWORD"): Value_SIGNED_DWORD
---@overload fun(name: string, class: "Value_UNSIGNED_DWORD"): Value_UNSIGNED_DWORD
---@overload fun(name: string, class: "Value_SIGNED_WORD"): Value_SIGNED_WORD
---@overload fun(name: string, class: "Value_UNSIGNED_WORD"): Value_UNSIGNED_WORD
---@overload fun(name: string, class: "RDMValue_SIGNED_BYTE"): RDMValue_SIGNED_BYTE
---@overload fun(name: string, class: "RDMValue_UNSIGNED_BYTE"): RDMValue_UNSIGNED_BYTE
---@overload fun(name: string, class: "ValueBool"): ValueBool
---@overload fun(name: string, class: nil): ValueBase
function Parameter:Find(name, class) end
---@overload fun(name: string, class: "ValueBase"): ValueBase
---@overload fun(name: string, class: "ValueSensor"): ValueSensor
---@overload fun(name: string, class: "Value_REAL_TIME_CLOCK"): Value_REAL_TIME_CLOCK
---@overload fun(name: string, class: "Value_Default_Slot_Value"): Value_Default_Slot_Value
---@overload fun(name: string, class: "Value_SLOT_INFO"): Value_SLOT_INFO
---@overload fun(name: string, class: "Value_SENSOR_DEFINITION"): Value_SENSOR_DEFINITION
---@overload fun(name: string, class: "Value_DMX_PERSONALITY_DESCRIPTION"): Value_DMX_PERSONALITY_DESCRIPTION
---@overload fun(name: string, class: "Value_ASCII"): Value_ASCII
---@overload fun(name: string, class: "Value_SIGNED_DWORD"): Value_SIGNED_DWORD
---@overload fun(name: string, class: "Value_UNSIGNED_DWORD"): Value_UNSIGNED_DWORD
---@overload fun(name: string, class: "Value_SIGNED_WORD"): Value_SIGNED_WORD
---@overload fun(name: string, class: "Value_UNSIGNED_WORD"): Value_UNSIGNED_WORD
---@overload fun(name: string, class: "RDMValue_SIGNED_BYTE"): RDMValue_SIGNED_BYTE
---@overload fun(name: string, class: "RDMValue_UNSIGNED_BYTE"): RDMValue_UNSIGNED_BYTE
---@overload fun(name: string, class: "ValueBool"): ValueBool
---@overload fun(name: string, class: nil): Object
function Parameter:FindRecursive(name, class) end
