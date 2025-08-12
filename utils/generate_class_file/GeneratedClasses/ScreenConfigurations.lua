---@meta

---@class ScreenConfigurations: Object
local ScreenConfigurations = {}
---@return "ScreenConfigurations"
function ScreenConfigurations:GetClass() end
---@return "ScreenConfig"
function ScreenConfigurations:GetChildClass() end
---@return UserProfile
function ScreenConfigurations:Parent() end
---@param index integer
---@return ScreenConfig
function ScreenConfigurations:Ptr(index) end
---@return ScreenConfig[]
function ScreenConfigurations:Children() end
---@return ScreenConfig?
function ScreenConfigurations:CurrentChild() end
---@overload fun(name: integer, role: nil): ScreenConfig
function ScreenConfigurations:Get(name, role) end
---@overload fun(index: integer, class: "ScreenConfig", undo: Undo?): ScreenConfig
---@overload fun(index: integer, class: nil, undo: Undo?): ScreenConfig
function ScreenConfigurations:Create(index, class, undo) end
---@overload fun(class: "ScreenConfig", undo: Undo?, count: integer?): ScreenConfig
---@overload fun(class: nil, undo: Undo?, count: integer?): ScreenConfig
function ScreenConfigurations:Append(class, undo, count) end
---@overload fun(class: "ScreenConfig", undo: Undo?): ScreenConfig
---@overload fun(class: nil, undo: Undo?): ScreenConfig
function ScreenConfigurations:Acquire(class, undo) end
---@overload fun(class: "ScreenConfig", undo: Undo?): ScreenConfig
---@overload fun(class: nil, undo: Undo?): ScreenConfig
---@deprecated use "Acquire" instead
function ScreenConfigurations:Aquire(class, undo) end
---@overload fun(index: integer, class: "ScreenConfig", undo: Undo?, count: integer?): ScreenConfig
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ScreenConfig
function ScreenConfigurations:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ScreenConfig"): ScreenConfig
---@overload fun(name: string, class: nil): ScreenConfig
function ScreenConfigurations:Find(name, class) end
---@overload fun(name: string, class: "ScreenConfig"): ScreenConfig
---@overload fun(name: string, class: nil): Object
function ScreenConfigurations:FindRecursive(name, class) end
