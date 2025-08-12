---@meta

---@class BitmapPoolSettingsCollect: Object
local BitmapPoolSettingsCollect = {}
---@return "BitmapPoolSettingsCollect"
function BitmapPoolSettingsCollect:GetClass() end
---@return "BitmapPoolSettings"
function BitmapPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return BitmapPoolSettings
function BitmapPoolSettingsCollect:Ptr(index) end
---@return BitmapPoolSettings[]
function BitmapPoolSettingsCollect:Children() end
---@return BitmapPoolSettings?
function BitmapPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): BitmapPoolSettings
function BitmapPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "BitmapPoolSettings", undo: Undo?): BitmapPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "BitmapPoolSettings", undo: Undo?, count: integer?): BitmapPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "BitmapPoolSettings", undo: Undo?): BitmapPoolSettings
---@overload fun(class: nil, undo: Undo?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "BitmapPoolSettings", undo: Undo?): BitmapPoolSettings
---@overload fun(class: nil, undo: Undo?): BitmapPoolSettings
---@deprecated use "Acquire" instead
function BitmapPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "BitmapPoolSettings", undo: Undo?, count: integer?): BitmapPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "BitmapPoolSettings"): BitmapPoolSettings
---@overload fun(name: string, class: nil): BitmapPoolSettings
function BitmapPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "BitmapPoolSettings"): BitmapPoolSettings
---@overload fun(name: string, class: nil): Object
function BitmapPoolSettingsCollect:FindRecursive(name, class) end
