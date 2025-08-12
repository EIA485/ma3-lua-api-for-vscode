---@meta

---@class NetworkStations: Object
local NetworkStations = {}
---@return "NetworkStations"
function NetworkStations:GetClass() end
---@return "NetworkStation"
function NetworkStations:GetChildClass() end
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
---@overload fun(index: integer, class: "NetworkStation", undo: Undo?): NetworkStation
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkStation
function NetworkStations:Create(index, class, undo) end
---@overload fun(class: "NetworkStation", undo: Undo?, count: integer?): NetworkStation
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkStation
function NetworkStations:Append(class, undo, count) end
---@overload fun(class: "NetworkStation", undo: Undo?): NetworkStation
---@overload fun(class: nil, undo: Undo?): NetworkStation
function NetworkStations:Acquire(class, undo) end
---@overload fun(class: "NetworkStation", undo: Undo?): NetworkStation
---@overload fun(class: nil, undo: Undo?): NetworkStation
---@deprecated use "Acquire" instead
function NetworkStations:Aquire(class, undo) end
---@overload fun(index: integer, class: "NetworkStation", undo: Undo?, count: integer?): NetworkStation
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkStation
function NetworkStations:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "NetworkStation"): NetworkStation
---@overload fun(name: string, class: nil): NetworkStation
function NetworkStations:Find(name, class) end
---@overload fun(name: string, class: "NetworkStation"): NetworkStation
---@overload fun(name: string, class: nil): Object
function NetworkStations:FindRecursive(name, class) end
