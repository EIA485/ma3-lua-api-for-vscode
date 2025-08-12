---@meta

---@class Interface: Object Represents a network interface card.
---@field DHCP boolean
---@field Gateway string
---@field MAC string
---@field Link boolean
---@field Speed
Mb/s boolean
---@field DHCPTimeout string
---@field DNS string
local Interface = {
    DHCP="Yes",
    Link="Yes",
    ["Speed
Mb/s"]="1000"
}
---@return "Interface"
function Interface:GetClass() end
---@return "NetworkIP"
function Interface:GetChildClass() end
---@return Interfaces
function Interface:Parent() end
---@param index integer
---@return NetworkIP
function Interface:Ptr(index) end
---@return NetworkIP[]
function Interface:Children() end
---@return NetworkIP?
function Interface:CurrentChild() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DHCP"|"Gateway"|"MAC"|"Link"|"Speed
Mb/s"|"DHCPTimeout"|"DNS", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): NetworkIP
function Interface:Get(name, role) end
---@overload fun(index: integer, class: "NetworkIP", undo: Undo?): NetworkIP
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkIP
function Interface:Create(index, class, undo) end
---@overload fun(class: "NetworkIP", undo: Undo?, count: integer?): NetworkIP
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkIP
function Interface:Append(class, undo, count) end
---@overload fun(class: "NetworkIP", undo: Undo?): NetworkIP
---@overload fun(class: nil, undo: Undo?): NetworkIP
function Interface:Acquire(class, undo) end
---@overload fun(class: "NetworkIP", undo: Undo?): NetworkIP
---@overload fun(class: nil, undo: Undo?): NetworkIP
---@deprecated use "Acquire" instead
function Interface:Aquire(class, undo) end
---@overload fun(index: integer, class: "NetworkIP", undo: Undo?, count: integer?): NetworkIP
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkIP
function Interface:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "NetworkIP"): NetworkIP
---@overload fun(name: string, class: nil): NetworkIP
function Interface:Find(name, class) end
---@overload fun(name: string, class: "NetworkIP"): NetworkIP
---@overload fun(name: string, class: nil): Object
function Interface:FindRecursive(name, class) end
