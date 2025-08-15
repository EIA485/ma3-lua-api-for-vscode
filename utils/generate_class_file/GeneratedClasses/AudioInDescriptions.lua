---@meta

---@class AudioInDescriptions: Object
local AudioInDescriptions = {}
---@return "AudioInDescriptions"
function AudioInDescriptions:GetClass() end
---@return "AudioInDeviceDescription"
function AudioInDescriptions:GetChildClass() end
---@generic T : AudioInDescriptions
---@param class `T`
---@return boolean
function AudioInDescriptions:IsClass(class) end
---@param index integer
---@return AudioInDeviceDescription
function AudioInDescriptions:Ptr(index) end
---@return AudioInDeviceDescription[]
function AudioInDescriptions:Children() end
---@return AudioInDeviceDescription?
function AudioInDescriptions:CurrentChild() end
---@overload fun(name: integer, role: nil): AudioInDeviceDescription
function AudioInDescriptions:Get(name, role) end
---@generic T : AudioInDeviceDescription
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): AudioInDeviceDescription
function AudioInDescriptions:Create(index, class, undo) end
---@generic T : AudioInDeviceDescription
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): AudioInDeviceDescription
function AudioInDescriptions:Append(class, undo, count) end
---@generic T : AudioInDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AudioInDeviceDescription
function AudioInDescriptions:Acquire(class, undo) end
---@generic T : AudioInDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AudioInDeviceDescription
---@deprecated use "Acquire" instead
function AudioInDescriptions:Aquire(class, undo) end
---@generic T : AudioInDeviceDescription
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AudioInDeviceDescription
function AudioInDescriptions:Insert(index, class, undo, count) end
---@generic T : AudioInDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AudioInDeviceDescription
function AudioInDescriptions:Find(class, undo) end
function AudioInDescriptions:SpeedMaster(property_name, property_value) end