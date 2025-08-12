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
---@overload fun(index: integer, class: "WindowPhaserEditorSettings", undo: Undo?): WindowPhaserEditorSettings
---@overload fun(index: integer, class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "WindowPhaserEditorSettings", undo: Undo?, count: integer?): WindowPhaserEditorSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "WindowPhaserEditorSettings", undo: Undo?): WindowPhaserEditorSettings
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "WindowPhaserEditorSettings", undo: Undo?): WindowPhaserEditorSettings
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
---@deprecated use "Acquire" instead
function WindowPhaserEditorSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "WindowPhaserEditorSettings", undo: Undo?, count: integer?): WindowPhaserEditorSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "WindowPhaserEditorSettings"): WindowPhaserEditorSettings
---@overload fun(name: string, class: nil): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "WindowPhaserEditorSettings"): WindowPhaserEditorSettings
---@overload fun(name: string, class: nil): Object
function WindowPhaserEditorSettingsCollect:FindRecursive(name, class) end
