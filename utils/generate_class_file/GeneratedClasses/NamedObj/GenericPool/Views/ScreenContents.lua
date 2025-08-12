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
---@overload fun(index: integer, class: "ScreenContent", undo: Undo?): ScreenContent
---@overload fun(index: integer, class: nil, undo: Undo?): ScreenContent
function ScreenContents:Create(index, class, undo) end
---@overload fun(class: "ScreenContent", undo: Undo?, count: integer?): ScreenContent
---@overload fun(class: nil, undo: Undo?, count: integer?): ScreenContent
function ScreenContents:Append(class, undo, count) end
---@overload fun(class: "ScreenContent", undo: Undo?): ScreenContent
---@overload fun(class: nil, undo: Undo?): ScreenContent
function ScreenContents:Acquire(class, undo) end
---@overload fun(class: "ScreenContent", undo: Undo?): ScreenContent
---@overload fun(class: nil, undo: Undo?): ScreenContent
---@deprecated use "Acquire" instead
function ScreenContents:Aquire(class, undo) end
---@overload fun(index: integer, class: "ScreenContent", undo: Undo?, count: integer?): ScreenContent
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ScreenContent
function ScreenContents:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ScreenContent"): ScreenContent
---@overload fun(name: string, class: nil): ScreenContent
function ScreenContents:Find(name, class) end
---@overload fun(name: string, class: "ScreenContent"): ScreenContent
---@overload fun(name: string, class: nil): Object
function ScreenContents:FindRecursive(name, class) end
