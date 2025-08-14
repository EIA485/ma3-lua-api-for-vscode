---@meta

---@class TemporaryWindowSettings: Object
local TemporaryWindowSettings = {}
---@return "TemporaryWindowSettings"
function TemporaryWindowSettings:GetClass() end
---@return "WindowSettings"
function TemporaryWindowSettings:GetChildClass() end
---@return UserProfile
function TemporaryWindowSettings:Parent() end
---@param index integer
---@return WindowSettings
function TemporaryWindowSettings:Ptr(index) end
---@return WindowSettings[]
function TemporaryWindowSettings:Children() end
---@return WindowSettings?
function TemporaryWindowSettings:CurrentChild() end
---@overload fun(name: integer, role: nil): WindowSettings
function TemporaryWindowSettings:Get(name, role) end
---@generic T : WindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowSettings
function TemporaryWindowSettings:Create(index, class, undo) end
---@generic T : WindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowSettings
function TemporaryWindowSettings:Append(class, undo, count) end
---@generic T : WindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowSettings
function TemporaryWindowSettings:Acquire(class, undo) end
---@generic T : WindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowSettings
---@deprecated use "Acquire" instead
function TemporaryWindowSettings:Aquire(class, undo) end
---@generic T : WindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowSettings
function TemporaryWindowSettings:Insert(index, class, undo, count) end
---@generic T : WindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowSettings
function TemporaryWindowSettings:Find(class, undo) end