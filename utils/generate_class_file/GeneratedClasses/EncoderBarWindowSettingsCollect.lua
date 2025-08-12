---@meta

---@class EncoderBarWindowSettingsCollect: Object
local EncoderBarWindowSettingsCollect = {}
---@return "EncoderBarWindowSettingsCollect"
function EncoderBarWindowSettingsCollect:GetClass() end
---@return "EncoderBarWindowSettings"
function EncoderBarWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Ptr(index) end
---@return EncoderBarWindowSettings[]
function EncoderBarWindowSettingsCollect:Children() end
---@return EncoderBarWindowSettings?
function EncoderBarWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "EncoderBarWindowSettings", undo: Undo?): EncoderBarWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "EncoderBarWindowSettings", undo: Undo?, count: integer?): EncoderBarWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "EncoderBarWindowSettings", undo: Undo?): EncoderBarWindowSettings
---@overload fun(class: nil, undo: Undo?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "EncoderBarWindowSettings", undo: Undo?): EncoderBarWindowSettings
---@overload fun(class: nil, undo: Undo?): EncoderBarWindowSettings
---@deprecated use "Acquire" instead
function EncoderBarWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "EncoderBarWindowSettings", undo: Undo?, count: integer?): EncoderBarWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "EncoderBarWindowSettings"): EncoderBarWindowSettings
---@overload fun(name: string, class: nil): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "EncoderBarWindowSettings"): EncoderBarWindowSettings
---@overload fun(name: string, class: nil): Object
function EncoderBarWindowSettingsCollect:FindRecursive(name, class) end
