---@meta

---@class MessageGridSettingsCollect: Object
local MessageGridSettingsCollect = {}
---@return "MessageGridSettingsCollect"
function MessageGridSettingsCollect:GetClass() end
---@return "MessageGridSettings"
function MessageGridSettingsCollect:GetChildClass() end
---@param index integer
---@return MessageGridSettings
function MessageGridSettingsCollect:Ptr(index) end
---@return MessageGridSettings[]
function MessageGridSettingsCollect:Children() end
---@return MessageGridSettings?
function MessageGridSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): MessageGridSettings
function MessageGridSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "MessageGridSettings", undo: Undo?): MessageGridSettings
---@overload fun(index: integer, class: nil, undo: Undo?): MessageGridSettings
function MessageGridSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "MessageGridSettings", undo: Undo?, count: integer?): MessageGridSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): MessageGridSettings
function MessageGridSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "MessageGridSettings", undo: Undo?): MessageGridSettings
---@overload fun(class: nil, undo: Undo?): MessageGridSettings
function MessageGridSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "MessageGridSettings", undo: Undo?): MessageGridSettings
---@overload fun(class: nil, undo: Undo?): MessageGridSettings
---@deprecated use "Acquire" instead
function MessageGridSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "MessageGridSettings", undo: Undo?, count: integer?): MessageGridSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessageGridSettings
function MessageGridSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MessageGridSettings"): MessageGridSettings
---@overload fun(name: string, class: nil): MessageGridSettings
function MessageGridSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "MessageGridSettings"): MessageGridSettings
---@overload fun(name: string, class: nil): Object
function MessageGridSettingsCollect:FindRecursive(name, class) end
