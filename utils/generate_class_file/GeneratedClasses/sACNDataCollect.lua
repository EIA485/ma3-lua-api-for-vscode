---@meta

---@class sACNDataCollect: Object
local sACNDataCollect = {}
---@return "sACNDataCollect"
function sACNDataCollect:GetClass() end
---@return "sACNData"
function sACNDataCollect:GetChildClass() end
---@generic T : sACNDataCollect
---@param class `T`
---@return boolean
function sACNDataCollect:IsClass(class) end
---@return sACN
function sACNDataCollect:Parent() end
---@param index integer
---@return sACNData
function sACNDataCollect:Ptr(index) end
---@return sACNData[]
function sACNDataCollect:Children() end
---@return sACNData?
function sACNDataCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): sACNData
function sACNDataCollect:Get(name, role) end
---@generic T : sACNData
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): sACNData
function sACNDataCollect:Create(index, class, undo) end
---@generic T : sACNData
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): sACNData
function sACNDataCollect:Append(class, undo, count) end
---@generic T : sACNData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): sACNData
function sACNDataCollect:Acquire(class, undo) end
---@generic T : sACNData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): sACNData
---@deprecated use "Acquire" instead
function sACNDataCollect:Aquire(class, undo) end
---@generic T : sACNData
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): sACNData
function sACNDataCollect:Insert(index, class, undo, count) end
---@generic T : sACNData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): sACNData
function sACNDataCollect:Find(class, undo) end
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "DestinationIP", property_value: Manet.IP4)
---@overload fun(property_name: "InputPriority", property_value: DmxPrio)
---@overload fun(property_name: "Delay", property_value: number)
---@overload fun(property_name: "Mode", property_value: SacnDataMode)
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "InputPriority", property_value: DmxPrio)
---@overload fun(property_name: "DestinationIP", property_value: Manet.IP4)
---@overload fun(property_name: "Mode", property_value: SacnDataMode)
---@overload fun(property_name: "PreviewOnly"|"Enabled", property_value: YesNo|boolean)
---@overload fun(property_name: "LocalUniverse"|"Amount"|"sACNUniverse"|"Priority"|"TTL", property_value: integer)
---@overload fun(property_name: "Delay", property_value: number)
function sACNDataCollect:Mode(property_name, property_value) end