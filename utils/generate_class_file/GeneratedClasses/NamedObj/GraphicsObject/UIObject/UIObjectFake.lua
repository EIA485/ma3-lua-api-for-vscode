---@meta

---@class UIObjectFake: UIObject
local UIObjectFake = {}
---@return "UIObjectFake"
function UIObjectFake:GetClass() end
---@return "UIObjectFake"
function UIObjectFake:GetChildClass() end
---@param index integer
---@return UIObjectFake
function UIObjectFake:Ptr(index) end
---@return UIObjectFake[]
function UIObjectFake:Children() end
---@return UIObjectFake?
function UIObjectFake:CurrentChild() end
---@overload fun(name: integer, role: nil): UIObjectFake
function UIObjectFake:Get(name, role) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
function UIObjectFake:Create(index, class, undo) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function UIObjectFake:Append(class, undo, count) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@return T
function UIObjectFake:Acquire(class, undo) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@return T
---@deprecated use "Acquire" instead
function UIObjectFake:Aquire(class, undo) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function UIObjectFake:Insert(index, class, undo, count) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@return T
function UIObjectFake:Find(class, undo) end