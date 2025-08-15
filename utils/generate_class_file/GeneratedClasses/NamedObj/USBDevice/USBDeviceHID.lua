---@meta

---@class USBDeviceHID: USBDevice
local USBDeviceHID = {}
---@return "USBDeviceHID"
function USBDeviceHID:GetClass() end
---@return "Object"
function USBDeviceHID:GetChildClass() end
---@generic T : USBDeviceHID
---@param class `T`
---@return boolean
function USBDeviceHID:IsClass(class) end
---@return HID
function USBDeviceHID:Parent() end