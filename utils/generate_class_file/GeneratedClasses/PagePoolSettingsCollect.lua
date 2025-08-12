---@meta

---@class PagePoolSettingsCollect: Object
local PagePoolSettingsCollect = {}
---@return "PagePoolSettingsCollect"
function PagePoolSettingsCollect:GetClass() end
---@return "PagePoolSettings"
function PagePoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PagePoolSettings
function PagePoolSettingsCollect:Ptr(index) end
---@return PagePoolSettings[]
function PagePoolSettingsCollect:Children() end
---@return PagePoolSettings?
function PagePoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PagePoolSettings
function PagePoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PagePoolSettings", undo: Undo?): PagePoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PagePoolSettings
function PagePoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PagePoolSettings", undo: Undo?, count: integer?): PagePoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PagePoolSettings
function PagePoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PagePoolSettings", undo: Undo?): PagePoolSettings
---@overload fun(class: nil, undo: Undo?): PagePoolSettings
function PagePoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PagePoolSettings", undo: Undo?): PagePoolSettings
---@overload fun(class: nil, undo: Undo?): PagePoolSettings
---@deprecated use "Acquire" instead
function PagePoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PagePoolSettings", undo: Undo?, count: integer?): PagePoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PagePoolSettings
function PagePoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PagePoolSettings"): PagePoolSettings
---@overload fun(name: string, class: nil): PagePoolSettings
function PagePoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PagePoolSettings"): PagePoolSettings
---@overload fun(name: string, class: nil): Object
function PagePoolSettingsCollect:FindRecursive(name, class) end
