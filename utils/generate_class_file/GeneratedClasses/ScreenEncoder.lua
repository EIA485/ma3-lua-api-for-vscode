---@meta

---@class ScreenEncoder: Object
local ScreenEncoder = {}
---@return "ScreenEncoder"
function ScreenEncoder:GetClass() end
---@return "ScreenEncoderDirection"
function ScreenEncoder:GetChildClass() end
---@return ShowSettings
function ScreenEncoder:Parent() end
---@param index integer
---@return ScreenEncoderDirection
function ScreenEncoder:Ptr(index) end
---@return ScreenEncoderDirection[]
function ScreenEncoder:Children() end
---@return ScreenEncoderDirection?
function ScreenEncoder:CurrentChild() end
---@overload fun(name: integer, role: nil): ScreenEncoderDirection
function ScreenEncoder:Get(name, role) end
---@overload fun(index: integer, class: "ScreenEncoderDirection", undo: Undo?): ScreenEncoderDirection
---@overload fun(index: integer, class: nil, undo: Undo?): ScreenEncoderDirection
function ScreenEncoder:Create(index, class, undo) end
---@overload fun(class: "ScreenEncoderDirection", undo: Undo?, count: integer?): ScreenEncoderDirection
---@overload fun(class: nil, undo: Undo?, count: integer?): ScreenEncoderDirection
function ScreenEncoder:Append(class, undo, count) end
---@overload fun(class: "ScreenEncoderDirection", undo: Undo?): ScreenEncoderDirection
---@overload fun(class: nil, undo: Undo?): ScreenEncoderDirection
function ScreenEncoder:Acquire(class, undo) end
---@overload fun(class: "ScreenEncoderDirection", undo: Undo?): ScreenEncoderDirection
---@overload fun(class: nil, undo: Undo?): ScreenEncoderDirection
---@deprecated use "Acquire" instead
function ScreenEncoder:Aquire(class, undo) end
---@overload fun(index: integer, class: "ScreenEncoderDirection", undo: Undo?, count: integer?): ScreenEncoderDirection
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ScreenEncoderDirection
function ScreenEncoder:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ScreenEncoderDirection"): ScreenEncoderDirection
---@overload fun(name: string, class: nil): ScreenEncoderDirection
function ScreenEncoder:Find(name, class) end
---@overload fun(name: string, class: "ScreenEncoderDirection"): ScreenEncoderDirection
---@overload fun(name: string, class: nil): Object
function ScreenEncoder:FindRecursive(name, class) end
