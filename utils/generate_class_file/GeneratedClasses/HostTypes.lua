---@meta

---@class HostTypes: Object
local HostTypes = {}
---@return "HostTypes"
function HostTypes:GetClass() end
---@return "NetworkStations"
function HostTypes:GetChildClass() end
---@generic T : HostTypes
---@param class `T`
---@return boolean
function HostTypes:IsClass(class) end
---@return MAnetSocket
function HostTypes:Parent() end
---@param index integer
---@return NetworkStations
function HostTypes:Ptr(index) end
---@return NetworkStations[]
function HostTypes:Children() end
---@return NetworkStations?
function HostTypes:CurrentChild() end
---@overload fun(name: integer, role: nil): NetworkStations
function HostTypes:Get(name, role) end
---@generic T : NetworkStations
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkStations
function HostTypes:Create(index, class, undo) end
---@generic T : NetworkStations
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkStations
function HostTypes:Append(class, undo, count) end
---@generic T : NetworkStations
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkStations
function HostTypes:Acquire(class, undo) end
---@generic T : NetworkStations
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkStations
---@deprecated use "Acquire" instead
function HostTypes:Aquire(class, undo) end
---@generic T : NetworkStations
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkStations
function HostTypes:Insert(index, class, undo, count) end
---@generic T : NetworkStations
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkStations
function HostTypes:Find(class, undo) end
function HostTypes:SetChildren(property_name, property_value) end