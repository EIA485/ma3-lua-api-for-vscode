---@meta

---@class Unknown: USBDeviceContainer
local Unknown = {}
---@return "Unknown"
function Unknown:GetClass() end
---@return "USBDeviceUnknown"
function Unknown:GetChildClass() end
---@param index integer
---@return USBDeviceUnknown
function Unknown:Ptr(index) end
---@return USBDeviceUnknown[]
function Unknown:Children() end
---@return USBDeviceUnknown?
function Unknown:CurrentChild() end
---@overload fun(name: integer, role: nil): USBDeviceUnknown
function Unknown:Get(name, role) end
---@overload fun(index: integer, class: "USBDeviceUnknown", undo: Undo?): USBDeviceUnknown
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceUnknown
function Unknown:Create(index, class, undo) end
---@overload fun(class: "USBDeviceUnknown", undo: Undo?, count: integer?): USBDeviceUnknown
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceUnknown
function Unknown:Append(class, undo, count) end
---@overload fun(class: "USBDeviceUnknown", undo: Undo?): USBDeviceUnknown
---@overload fun(class: nil, undo: Undo?): USBDeviceUnknown
function Unknown:Acquire(class, undo) end
---@overload fun(class: "USBDeviceUnknown", undo: Undo?): USBDeviceUnknown
---@overload fun(class: nil, undo: Undo?): USBDeviceUnknown
---@deprecated use "Acquire" instead
function Unknown:Aquire(class, undo) end
---@overload fun(index: integer, class: "USBDeviceUnknown", undo: Undo?, count: integer?): USBDeviceUnknown
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceUnknown
function Unknown:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "USBDeviceUnknown"): USBDeviceUnknown
---@overload fun(name: string, class: nil): USBDeviceUnknown
function Unknown:Find(name, class) end
---@overload fun(name: string, class: "USBDeviceUnknown"): USBDeviceUnknown
---@overload fun(name: string, class: nil): Object
function Unknown:FindRecursive(name, class) end
