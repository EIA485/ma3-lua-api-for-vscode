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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "DHCP", role: nil): boolean
---@overload fun(name: "Gateway"|"MAC", role: nil): string
---@overload fun(name: "Link"|"Speed
Mb/s", role: nil): boolean
---@overload fun(name: "DHCPTimeout"|"DNS", role: nil): string
---@overload fun(name: "RenewDHCP", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DHCP"|"Gateway"|"MAC"|"Link"|"Speed
Mb/s"|"DHCPTimeout"|"DNS"|"RenewDHCP", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): IP
function NetworkInterface:Get(name, role) end
---@overload fun(index: integer, class: "IP", undo: Undo?): IP
---@overload fun(index: integer, class: nil, undo: Undo?): IP
function NetworkInterface:Create(index, class, undo) end
---@overload fun(class: "IP", undo: Undo?, count: integer?): IP
---@overload fun(class: nil, undo: Undo?, count: integer?): IP
function NetworkInterface:Append(class, undo, count) end
---@overload fun(class: "IP", undo: Undo?): IP
---@overload fun(class: nil, undo: Undo?): IP
function NetworkInterface:Acquire(class, undo) end
---@overload fun(class: "IP", undo: Undo?): IP
---@overload fun(class: nil, undo: Undo?): IP
---@deprecated use "Acquire" instead
function NetworkInterface:Aquire(class, undo) end
---@overload fun(index: integer, class: "IP", undo: Undo?, count: integer?): IP
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IP
function NetworkInterface:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "IP"): IP
---@overload fun(name: string, class: nil): IP
function NetworkInterface:Find(name, class) end
---@overload fun(name: string, class: "IP"): IP
---@overload fun(name: string, class: nil): Object
function NetworkInterface:FindRecursive(name, class) end
