---@meta

---@class UIGridButtonsCollect: UIObjectFake
local UIGridButtonsCollect = {}
---@return "UIGridButtonsCollect"
function UIGridButtonsCollect:GetClass() end
---@return "UIGridButtons"
function UIGridButtonsCollect:GetChildClass() end
---@return UIGridInternals
function UIGridButtonsCollect:Parent() end
---@param index integer
---@return UIGridButtons
function UIGridButtonsCollect:Ptr(index) end
---@return UIGridButtons[]
function UIGridButtonsCollect:Children() end
---@return UIGridButtons?
function UIGridButtonsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): UIGridButtons
function UIGridButtonsCollect:Get(name, role) end
---@overload fun(index: integer, class: "UIGridButtons", undo: Undo?): UIGridButtons
---@overload fun(index: integer, class: nil, undo: Undo?): UIGridButtons
function UIGridButtonsCollect:Create(index, class, undo) end
---@overload fun(class: "UIGridButtons", undo: Undo?, count: integer?): UIGridButtons
---@overload fun(class: nil, undo: Undo?, count: integer?): UIGridButtons
function UIGridButtonsCollect:Append(class, undo, count) end
---@overload fun(class: "UIGridButtons", undo: Undo?): UIGridButtons
---@overload fun(class: nil, undo: Undo?): UIGridButtons
function UIGridButtonsCollect:Acquire(class, undo) end
---@overload fun(class: "UIGridButtons", undo: Undo?): UIGridButtons
---@overload fun(class: nil, undo: Undo?): UIGridButtons
---@deprecated use "Acquire" instead
function UIGridButtonsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "UIGridButtons", undo: Undo?, count: integer?): UIGridButtons
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIGridButtons
function UIGridButtonsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UIGridButtons"): UIGridButtons
---@overload fun(name: string, class: nil): UIGridButtons
function UIGridButtonsCollect:Find(name, class) end
---@overload fun(name: string, class: "UIGridButtons"): UIGridButtons
---@overload fun(name: string, class: nil): Object
function UIGridButtonsCollect:FindRecursive(name, class) end
