---@meta

---@class Devices: Object
local Devices = {}
---@return "Devices"
function Devices:GetClass() end
---@return "Device"
function Devices:GetChildClass() end
---@return Pult
function Devices:Parent() end
---@param index integer
---@return Device
function Devices:Ptr(index) end
---@return Device[]
function Devices:Children() end
---@return Device?
function Devices:CurrentChild() end
---@overload fun(name: integer, role: nil): Device
function Devices:Get(name, role) end
---@overload fun(index: integer, class: "Device", undo: Undo?): Device
---@overload fun(index: integer, class: "GestureManager", undo: Undo?): GestureManager
---@overload fun(index: integer, class: "Touch", undo: Undo?): Touch
---@overload fun(index: integer, class: "Keyboard", undo: Undo?): Keyboard
---@overload fun(index: integer, class: nil, undo: Undo?): Device
function Devices:Create(index, class, undo) end
---@overload fun(class: "Device", undo: Undo?, count: integer?): Device
---@overload fun(class: "GestureManager", undo: Undo?, count: integer?): GestureManager
---@overload fun(class: "Touch", undo: Undo?, count: integer?): Touch
---@overload fun(class: "Keyboard", undo: Undo?, count: integer?): Keyboard
---@overload fun(class: nil, undo: Undo?, count: integer?): Device
function Devices:Append(class, undo, count) end
---@overload fun(class: "Device", undo: Undo?): Device
---@overload fun(class: "GestureManager", undo: Undo?): GestureManager
---@overload fun(class: "Touch", undo: Undo?): Touch
---@overload fun(class: "Keyboard", undo: Undo?): Keyboard
---@overload fun(class: nil, undo: Undo?): Device
function Devices:Acquire(class, undo) end
---@overload fun(class: "Device", undo: Undo?): Device
---@overload fun(class: "GestureManager", undo: Undo?): GestureManager
---@overload fun(class: "Touch", undo: Undo?): Touch
---@overload fun(class: "Keyboard", undo: Undo?): Keyboard
---@overload fun(class: nil, undo: Undo?): Device
---@deprecated use "Acquire" instead
function Devices:Aquire(class, undo) end
---@overload fun(index: integer, class: "Device", undo: Undo?, count: integer?): Device
---@overload fun(index: integer, class: "GestureManager", undo: Undo?, count: integer?): GestureManager
---@overload fun(index: integer, class: "Touch", undo: Undo?, count: integer?): Touch
---@overload fun(index: integer, class: "Keyboard", undo: Undo?, count: integer?): Keyboard
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Device
function Devices:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Device"): Device
---@overload fun(name: string, class: "GestureManager"): GestureManager
---@overload fun(name: string, class: "Touch"): Touch
---@overload fun(name: string, class: "Keyboard"): Keyboard
---@overload fun(name: string, class: nil): Device
function Devices:Find(name, class) end
---@overload fun(name: string, class: "Device"): Device
---@overload fun(name: string, class: "GestureManager"): GestureManager
---@overload fun(name: string, class: "Touch"): Touch
---@overload fun(name: string, class: "Keyboard"): Keyboard
---@overload fun(name: string, class: nil): Object
function Devices:FindRecursive(name, class) end
