---@meta

---@class Unknown: USBDeviceContainer
local Unknown = {}
---@return "Unknown"
function Unknown:GetClass() end
---@return "USBDeviceUnknown"
function Unknown:GetChildClass() end
---@generic T : Unknown
---@param class `T`
---@return boolean
function Unknown:IsClass(class) end
---@param index integer
---@return USBDeviceUnknown
function Unknown:Ptr(index) end
---@return USBDeviceUnknown[]
function Unknown:Children() end
---@return USBDeviceUnknown?
function Unknown:CurrentChild() end
---@overload fun(name: integer, role: nil): USBDeviceUnknown
function Unknown:Get(name, role) end
---@generic T : USBDeviceUnknown
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceUnknown
function Unknown:Create(index, class, undo) end
---@generic T : USBDeviceUnknown
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceUnknown
function Unknown:Append(class, undo, count) end
---@generic T : USBDeviceUnknown
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceUnknown
function Unknown:Acquire(class, undo) end
---@generic T : USBDeviceUnknown
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceUnknown
---@deprecated use "Acquire" instead
function Unknown:Aquire(class, undo) end
---@generic T : USBDeviceUnknown
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceUnknown
function Unknown:Insert(index, class, undo, count) end
---@generic T : USBDeviceUnknown
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceUnknown
function Unknown:Find(class, undo) end
---@overload fun(property_name: "DeviceKey"|"DeviceTypeID", property_value: string)
function Unknown:SetChildren(property_name, property_value) end