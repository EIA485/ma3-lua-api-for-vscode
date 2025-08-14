---@meta

---@class ScreenContents: Views
local ScreenContents = {}
---@return "ScreenContents"
function ScreenContents:GetClass() end
---@return "ScreenContent"
function ScreenContents:GetChildClass() end
---@return ScreenConfig
function ScreenContents:Parent() end
---@param index integer
---@return ScreenContent
function ScreenContents:Ptr(index) end
---@return ScreenContent[]
function ScreenContents:Children() end
---@return ScreenContent?
function ScreenContents:CurrentChild() end
---@overload fun(name: integer, role: nil): ScreenContent
function ScreenContents:Get(name, role) end
---@generic T : ScreenContent
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ScreenContent
function ScreenContents:Create(index, class, undo) end
---@generic T : ScreenContent
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ScreenContent
function ScreenContents:Append(class, undo, count) end
---@generic T : ScreenContent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenContent
function ScreenContents:Acquire(class, undo) end
---@generic T : ScreenContent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenContent
---@deprecated use "Acquire" instead
function ScreenContents:Aquire(class, undo) end
---@generic T : ScreenContent
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ScreenContent
function ScreenContents:Insert(index, class, undo, count) end
---@generic T : ScreenContent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenContent
function ScreenContents:Find(class, undo) end