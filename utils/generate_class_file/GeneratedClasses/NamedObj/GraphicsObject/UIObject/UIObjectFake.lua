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
---@overload fun(index: integer, class: "UIObjectFake", undo: Undo?): UIObjectFake
---@overload fun(index: integer, class: "BaseItemButtons", undo: Undo?): BaseItemButtons
---@overload fun(index: integer, class: "UIGridInternals", undo: Undo?): UIGridInternals
---@overload fun(index: integer, class: "AudioPreview", undo: Undo?): AudioPreview
---@overload fun(index: integer, class: nil, undo: Undo?): UIObjectFake
function UIObjectFake:Create(index, class, undo) end
---@overload fun(class: "UIObjectFake", undo: Undo?, count: integer?): UIObjectFake
---@overload fun(class: "BaseItemButtons", undo: Undo?, count: integer?): BaseItemButtons
---@overload fun(class: "UIGridInternals", undo: Undo?, count: integer?): UIGridInternals
---@overload fun(class: "AudioPreview", undo: Undo?, count: integer?): AudioPreview
---@overload fun(class: nil, undo: Undo?, count: integer?): UIObjectFake
function UIObjectFake:Append(class, undo, count) end
---@overload fun(class: "UIObjectFake", undo: Undo?): UIObjectFake
---@overload fun(class: "BaseItemButtons", undo: Undo?): BaseItemButtons
---@overload fun(class: "UIGridInternals", undo: Undo?): UIGridInternals
---@overload fun(class: "AudioPreview", undo: Undo?): AudioPreview
---@overload fun(class: nil, undo: Undo?): UIObjectFake
function UIObjectFake:Acquire(class, undo) end
---@overload fun(class: "UIObjectFake", undo: Undo?): UIObjectFake
---@overload fun(class: "BaseItemButtons", undo: Undo?): BaseItemButtons
---@overload fun(class: "UIGridInternals", undo: Undo?): UIGridInternals
---@overload fun(class: "AudioPreview", undo: Undo?): AudioPreview
---@overload fun(class: nil, undo: Undo?): UIObjectFake
---@deprecated use "Acquire" instead
function UIObjectFake:Aquire(class, undo) end
---@overload fun(index: integer, class: "UIObjectFake", undo: Undo?, count: integer?): UIObjectFake
---@overload fun(index: integer, class: "BaseItemButtons", undo: Undo?, count: integer?): BaseItemButtons
---@overload fun(index: integer, class: "UIGridInternals", undo: Undo?, count: integer?): UIGridInternals
---@overload fun(index: integer, class: "AudioPreview", undo: Undo?, count: integer?): AudioPreview
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIObjectFake
function UIObjectFake:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UIObjectFake"): UIObjectFake
---@overload fun(name: string, class: "BaseItemButtons"): BaseItemButtons
---@overload fun(name: string, class: "UIGridInternals"): UIGridInternals
---@overload fun(name: string, class: "AudioPreview"): AudioPreview
---@overload fun(name: string, class: nil): UIObjectFake
function UIObjectFake:Find(name, class) end
---@overload fun(name: string, class: "UIObjectFake"): UIObjectFake
---@overload fun(name: string, class: "BaseItemButtons"): BaseItemButtons
---@overload fun(name: string, class: "UIGridInternals"): UIGridInternals
---@overload fun(name: string, class: "AudioPreview"): AudioPreview
---@overload fun(name: string, class: nil): Object
function UIObjectFake:FindRecursive(name, class) end
