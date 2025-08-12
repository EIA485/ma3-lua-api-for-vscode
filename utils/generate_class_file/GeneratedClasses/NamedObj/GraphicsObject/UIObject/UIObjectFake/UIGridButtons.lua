---@meta

---@class UIGridButtons: UIObjectFake
local UIGridButtons = {}
---@return "UIGridButtons"
function UIGridButtons:GetClass() end
---@return "UIGridButton"
function UIGridButtons:GetChildClass() end
---@return UIGridButtonsCollect
function UIGridButtons:Parent() end
---@param index integer
---@return UIGridButton
function UIGridButtons:Ptr(index) end
---@return UIGridButton[]
function UIGridButtons:Children() end
---@return UIGridButton?
function UIGridButtons:CurrentChild() end
---@overload fun(name: integer, role: nil): UIGridButton
function UIGridButtons:Get(name, role) end
---@overload fun(index: integer, class: "UIGridButton", undo: Undo?): UIGridButton
---@overload fun(index: integer, class: "UIGridLevelButton", undo: Undo?): UIGridLevelButton
---@overload fun(index: integer, class: "SequenceCmdRunButton", undo: Undo?): SequenceCmdRunButton
---@overload fun(index: integer, class: nil, undo: Undo?): UIGridButton
function UIGridButtons:Create(index, class, undo) end
---@overload fun(class: "UIGridButton", undo: Undo?, count: integer?): UIGridButton
---@overload fun(class: "UIGridLevelButton", undo: Undo?, count: integer?): UIGridLevelButton
---@overload fun(class: "SequenceCmdRunButton", undo: Undo?, count: integer?): SequenceCmdRunButton
---@overload fun(class: nil, undo: Undo?, count: integer?): UIGridButton
function UIGridButtons:Append(class, undo, count) end
---@overload fun(class: "UIGridButton", undo: Undo?): UIGridButton
---@overload fun(class: "UIGridLevelButton", undo: Undo?): UIGridLevelButton
---@overload fun(class: "SequenceCmdRunButton", undo: Undo?): SequenceCmdRunButton
---@overload fun(class: nil, undo: Undo?): UIGridButton
function UIGridButtons:Acquire(class, undo) end
---@overload fun(class: "UIGridButton", undo: Undo?): UIGridButton
---@overload fun(class: "UIGridLevelButton", undo: Undo?): UIGridLevelButton
---@overload fun(class: "SequenceCmdRunButton", undo: Undo?): SequenceCmdRunButton
---@overload fun(class: nil, undo: Undo?): UIGridButton
---@deprecated use "Acquire" instead
function UIGridButtons:Aquire(class, undo) end
---@overload fun(index: integer, class: "UIGridButton", undo: Undo?, count: integer?): UIGridButton
---@overload fun(index: integer, class: "UIGridLevelButton", undo: Undo?, count: integer?): UIGridLevelButton
---@overload fun(index: integer, class: "SequenceCmdRunButton", undo: Undo?, count: integer?): SequenceCmdRunButton
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIGridButton
function UIGridButtons:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UIGridButton"): UIGridButton
---@overload fun(name: string, class: "UIGridLevelButton"): UIGridLevelButton
---@overload fun(name: string, class: "SequenceCmdRunButton"): SequenceCmdRunButton
---@overload fun(name: string, class: nil): UIGridButton
function UIGridButtons:Find(name, class) end
---@overload fun(name: string, class: "UIGridButton"): UIGridButton
---@overload fun(name: string, class: "UIGridLevelButton"): UIGridLevelButton
---@overload fun(name: string, class: "SequenceCmdRunButton"): SequenceCmdRunButton
---@overload fun(name: string, class: nil): Object
function UIGridButtons:FindRecursive(name, class) end
