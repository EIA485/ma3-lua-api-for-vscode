---@meta

---@class NetworkStations: Object
local NetworkStations = {}
---@return "NetworkStations"
function NetworkStations:GetClass() end
---@return "NetworkStation"
function NetworkStations:GetChildClass() end
---@generic T : NetworkStations
---@param class `T`
---@return boolean
function NetworkStations:IsClass(class) end
---@return HostTypes
function NetworkStations:Parent() end
---@param index integer
---@return NetworkStation
function NetworkStations:Ptr(index) end
---@return NetworkStation[]
function NetworkStations:Children() end
---@return NetworkStation?
function NetworkStations:CurrentChild() end
---@overload fun(name: integer, role: nil): NetworkStation
function NetworkStations:Get(name, role) end
---@generic T : NetworkStation
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkStation
function NetworkStations:Create(index, class, undo) end
---@generic T : NetworkStation
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkStation
function NetworkStations:Append(class, undo, count) end
---@generic T : NetworkStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkStation
function NetworkStations:Acquire(class, undo) end
---@generic T : NetworkStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkStation
---@deprecated use "Acquire" instead
function NetworkStations:Aquire(class, undo) end
---@generic T : NetworkStation
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkStation
function NetworkStations:Insert(index, class, undo, count) end
---@generic T : NetworkStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkStation
function NetworkStations:Find(class, undo) end
---@overload fun(property_name: "HostData", property_value: Container.SharedPtr<class Manet.HostDataExt>)
---@overload fun(property_name: "NACKCountTotal", property_value: NackStat)
---@overload fun(property_name: "HostData", property_value: Container.SharedPtr<class Manet.HostDataExt>)
---@overload fun(property_name: "NACKCountTotal", property_value: NackStat)
---@overload fun(property_name: "FlowControlLevel"|"NACKCountPer1m5m10m", property_value: integer)
---@overload fun(property_name: "Enabled"|"RemoteIP"|"Status"|"Mask"|"MasterPrio"|"MinimumVersion"|"Type"|"VersionBig"|"ShowFile"|"IP"|"VersionSmall"|"Session"|"OnlineTime"|"Location"|"SessionIndex"|"SessionSlot", property_value: string)
function NetworkStations:NACKCountTotal(property_name, property_value) end