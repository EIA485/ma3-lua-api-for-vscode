---@meta

---@class Storage: USBDeviceContainer
local Storage = {}
---@return "Storage"
function Storage:GetClass() end
---@return "USBDeviceStorage"
function Storage:GetChildClass() end
---@generic T : Storage
---@param class `T`
---@return boolean
function Storage:IsClass(class) end
---@param index integer
---@return USBDeviceStorage
function Storage:Ptr(index) end
---@return USBDeviceStorage[]
function Storage:Children() end
---@return USBDeviceStorage?
function Storage:CurrentChild() end
---@overload fun(name: integer, role: nil): USBDeviceStorage
function Storage:Get(name, role) end
---@generic T : USBDeviceStorage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceStorage
function Storage:Create(index, class, undo) end
---@generic T : USBDeviceStorage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceStorage
function Storage:Append(class, undo, count) end
---@generic T : USBDeviceStorage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceStorage
function Storage:Acquire(class, undo) end
---@generic T : USBDeviceStorage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceStorage
---@deprecated use "Acquire" instead
function Storage:Aquire(class, undo) end
---@generic T : USBDeviceStorage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceStorage
function Storage:Insert(index, class, undo, count) end
---@generic T : USBDeviceStorage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceStorage
function Storage:Find(class, undo) end
function Storage:SetChildren(property_name, property_value) end