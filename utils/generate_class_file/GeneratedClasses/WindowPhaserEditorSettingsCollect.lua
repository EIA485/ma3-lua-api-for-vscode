---@meta

---@class WindowPhaserEditorSettingsCollect: Object
local WindowPhaserEditorSettingsCollect = {}
---@return "WindowPhaserEditorSettingsCollect"
function WindowPhaserEditorSettingsCollect:GetClass() end
---@return "WindowPhaserEditorSettings"
function WindowPhaserEditorSettingsCollect:GetChildClass() end
---@param index integer
---@return WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Ptr(index) end
---@return WindowPhaserEditorSettings[]
function WindowPhaserEditorSettingsCollect:Children() end
---@return WindowPhaserEditorSettings?
function WindowPhaserEditorSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Get(name, role) end
---@generic T : WindowPhaserEditorSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Create(index, class, undo) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Append(class, undo, count) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Acquire(class, undo) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
---@deprecated use "Acquire" instead
function WindowPhaserEditorSettingsCollect:Aquire(class, undo) end
---@generic T : WindowPhaserEditorSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Insert(index, class, undo, count) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Find(class, undo) end