---@meta

---@class Storage: USBDeviceContainer
local Storage = {}
---@return "Storage"
function Storage:GetClass() end
---@return "USBDeviceStorage"
function Storage:GetChildClass() end
---@param index integer
---@return USBDeviceStorage
function Storage:Ptr(index) end
---@return USBDeviceStorage[]
function Storage:Children() end
---@return USBDeviceStorage?
function Storage:CurrentChild() end
---@overload fun(name: integer, role: nil): USBDeviceStorage
function Storage:Get(name, role) end
---@overload fun(index: integer, class: "USBDeviceStorage", undo: Undo?): USBDeviceStorage
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceStorage
function Storage:Create(index, class, undo) end
---@overload fun(class: "USBDeviceStorage", undo: Undo?, count: integer?): USBDeviceStorage
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceStorage
function Storage:Append(class, undo, count) end
---@overload fun(class: "USBDeviceStorage", undo: Undo?): USBDeviceStorage
---@overload fun(class: nil, undo: Undo?): USBDeviceStorage
function Storage:Acquire(class, undo) end
---@overload fun(class: "USBDeviceStorage", undo: Undo?): USBDeviceStorage
---@overload fun(class: nil, undo: Undo?): USBDeviceStorage
---@deprecated use "Acquire" instead
function Storage:Aquire(class, undo) end
---@overload fun(index: integer, class: "USBDeviceStorage", undo: Undo?, count: integer?): USBDeviceStorage
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceStorage
function Storage:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "USBDeviceStorage"): USBDeviceStorage
---@overload fun(name: string, class: nil): USBDeviceStorage
function Storage:Find(name, class) end
---@overload fun(name: string, class: "USBDeviceStorage"): USBDeviceStorage
---@overload fun(name: string, class: nil): Object
function Storage:FindRecursive(name, class) end
