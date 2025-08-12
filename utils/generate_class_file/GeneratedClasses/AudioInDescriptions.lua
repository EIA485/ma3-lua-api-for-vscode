---@meta

---@class AudioInDescriptions: Object
local AudioInDescriptions = {}
---@return "AudioInDescriptions"
function AudioInDescriptions:GetClass() end
---@return "AudioInDeviceDescription"
function AudioInDescriptions:GetChildClass() end
---@param index integer
---@return AudioInDeviceDescription
function AudioInDescriptions:Ptr(index) end
---@return AudioInDeviceDescription[]
function AudioInDescriptions:Children() end
---@return AudioInDeviceDescription?
function AudioInDescriptions:CurrentChild() end
---@overload fun(name: integer, role: nil): AudioInDeviceDescription
function AudioInDescriptions:Get(name, role) end
---@overload fun(index: integer, class: "AudioInDeviceDescription", undo: Undo?): AudioInDeviceDescription
---@overload fun(index: integer, class: nil, undo: Undo?): AudioInDeviceDescription
function AudioInDescriptions:Create(index, class, undo) end
---@overload fun(class: "AudioInDeviceDescription", undo: Undo?, count: integer?): AudioInDeviceDescription
---@overload fun(class: nil, undo: Undo?, count: integer?): AudioInDeviceDescription
function AudioInDescriptions:Append(class, undo, count) end
---@overload fun(class: "AudioInDeviceDescription", undo: Undo?): AudioInDeviceDescription
---@overload fun(class: nil, undo: Undo?): AudioInDeviceDescription
function AudioInDescriptions:Acquire(class, undo) end
---@overload fun(class: "AudioInDeviceDescription", undo: Undo?): AudioInDeviceDescription
---@overload fun(class: nil, undo: Undo?): AudioInDeviceDescription
---@deprecated use "Acquire" instead
function AudioInDescriptions:Aquire(class, undo) end
---@overload fun(index: integer, class: "AudioInDeviceDescription", undo: Undo?, count: integer?): AudioInDeviceDescription
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AudioInDeviceDescription
function AudioInDescriptions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "AudioInDeviceDescription"): AudioInDeviceDescription
---@overload fun(name: string, class: nil): AudioInDeviceDescription
function AudioInDescriptions:Find(name, class) end
---@overload fun(name: string, class: "AudioInDeviceDescription"): AudioInDeviceDescription
---@overload fun(name: string, class: nil): Object
function AudioInDescriptions:FindRecursive(name, class) end
