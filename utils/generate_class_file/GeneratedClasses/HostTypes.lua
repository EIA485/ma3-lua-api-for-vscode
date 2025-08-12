---@meta

---@class HostTypes: Object
local HostTypes = {}
---@return "HostTypes"
function HostTypes:GetClass() end
---@return "NetworkStations"
function HostTypes:GetChildClass() end
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
---@overload fun(index: integer, class: "NetworkStations", undo: Undo?): NetworkStations
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkStations
function HostTypes:Create(index, class, undo) end
---@overload fun(class: "NetworkStations", undo: Undo?, count: integer?): NetworkStations
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkStations
function HostTypes:Append(class, undo, count) end
---@overload fun(class: "NetworkStations", undo: Undo?): NetworkStations
---@overload fun(class: nil, undo: Undo?): NetworkStations
function HostTypes:Acquire(class, undo) end
---@overload fun(class: "NetworkStations", undo: Undo?): NetworkStations
---@overload fun(class: nil, undo: Undo?): NetworkStations
---@deprecated use "Acquire" instead
function HostTypes:Aquire(class, undo) end
---@overload fun(index: integer, class: "NetworkStations", undo: Undo?, count: integer?): NetworkStations
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkStations
function HostTypes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "NetworkStations"): NetworkStations
---@overload fun(name: string, class: nil): NetworkStations
function HostTypes:Find(name, class) end
---@overload fun(name: string, class: "NetworkStations"): NetworkStations
---@overload fun(name: string, class: nil): Object
function HostTypes:FindRecursive(name, class) end
