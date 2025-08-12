---@meta

---@class SoundPoolSettingsCollect: Object
local SoundPoolSettingsCollect = {}
---@return "SoundPoolSettingsCollect"
function SoundPoolSettingsCollect:GetClass() end
---@return "SoundPoolSettings"
function SoundPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return SoundPoolSettings
function SoundPoolSettingsCollect:Ptr(index) end
---@return SoundPoolSettings[]
function SoundPoolSettingsCollect:Children() end
---@return SoundPoolSettings?
function SoundPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SoundPoolSettings
function SoundPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "SoundPoolSettings", undo: Undo?): SoundPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SoundPoolSettings
function SoundPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SoundPoolSettings", undo: Undo?, count: integer?): SoundPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SoundPoolSettings
function SoundPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SoundPoolSettings", undo: Undo?): SoundPoolSettings
---@overload fun(class: nil, undo: Undo?): SoundPoolSettings
function SoundPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SoundPoolSettings", undo: Undo?): SoundPoolSettings
---@overload fun(class: nil, undo: Undo?): SoundPoolSettings
---@deprecated use "Acquire" instead
function SoundPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SoundPoolSettings", undo: Undo?, count: integer?): SoundPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SoundPoolSettings
function SoundPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SoundPoolSettings"): SoundPoolSettings
---@overload fun(name: string, class: nil): SoundPoolSettings
function SoundPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SoundPoolSettings"): SoundPoolSettings
---@overload fun(name: string, class: nil): Object
function SoundPoolSettingsCollect:FindRecursive(name, class) end
