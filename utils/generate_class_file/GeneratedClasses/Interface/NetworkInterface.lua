---@meta

---@class NetworkInterface: Interface
---@field RenewDHCP boolean
local NetworkInterface = {}
---@return "NetworkInterface"
function NetworkInterface:GetClass() end
---@return "IP"
function NetworkInterface:GetChildClass() end
---@return TempNetworkRemoteInterfaceCollect
function NetworkInterface:Parent() end
---@param index integer
---@return IP
function NetworkInterface:Ptr(index) end
---@return IP[]
function NetworkInterface:Children() end
---@return IP?
function NetworkInterface:CurrentChild() end
---@overload fun(name: "RenewDHCP"|"DHCP"|"Link"|"SpeedMbs"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Gateway"|"MAC"|"DHCPTimeout"|"DNS"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "RenewDHCP"|"DHCP"|"Gateway"|"MAC"|"Link"|"SpeedMbs"|"DHCPTimeout"|"DNS"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): IP
function NetworkInterface:Get(name, role) end
---@generic T : IP
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): IP
function NetworkInterface:Create(index, class, undo) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): IP
function NetworkInterface:Append(class, undo, count) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IP
function NetworkInterface:Acquire(class, undo) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IP
---@deprecated use "Acquire" instead
function NetworkInterface:Aquire(class, undo) end
---@generic T : IP
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IP
function NetworkInterface:Insert(index, class, undo, count) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IP
function NetworkInterface:Find(class, undo) end