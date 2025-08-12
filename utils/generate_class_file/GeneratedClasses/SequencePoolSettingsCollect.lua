---@meta

---@class SequencePoolSettingsCollect: Object
local SequencePoolSettingsCollect = {}
---@return "SequencePoolSettingsCollect"
function SequencePoolSettingsCollect:GetClass() end
---@return "SequencePoolSettings"
function SequencePoolSettingsCollect:GetChildClass() end
---@param index integer
---@return SequencePoolSettings
function SequencePoolSettingsCollect:Ptr(index) end
---@return SequencePoolSettings[]
function SequencePoolSettingsCollect:Children() end
---@return SequencePoolSettings?
function SequencePoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SequencePoolSettings
function SequencePoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "SequencePoolSettings", undo: Undo?): SequencePoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SequencePoolSettings
function SequencePoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SequencePoolSettings", undo: Undo?, count: integer?): SequencePoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SequencePoolSettings
function SequencePoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SequencePoolSettings", undo: Undo?): SequencePoolSettings
---@overload fun(class: nil, undo: Undo?): SequencePoolSettings
function SequencePoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SequencePoolSettings", undo: Undo?): SequencePoolSettings
---@overload fun(class: nil, undo: Undo?): SequencePoolSettings
---@deprecated use "Acquire" instead
function SequencePoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SequencePoolSettings", undo: Undo?, count: integer?): SequencePoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SequencePoolSettings
function SequencePoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SequencePoolSettings"): SequencePoolSettings
---@overload fun(name: string, class: nil): SequencePoolSettings
function SequencePoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SequencePoolSettings"): SequencePoolSettings
---@overload fun(name: string, class: nil): Object
function SequencePoolSettingsCollect:FindRecursive(name, class) end
