---@meta

---@class RunningPresets: RunningPlaybacks
local RunningPresets = {}
---@return "RunningPresets"
function RunningPresets:GetClass() end
---@return "Preset"
function RunningPresets:GetChildClass() end
---@return RunningPlaybacksCollect
function RunningPresets:Parent() end
---@param index integer
---@return Preset
function RunningPresets:Ptr(index) end
---@return Preset[]
function RunningPresets:Children() end
---@return Preset?
function RunningPresets:CurrentChild() end
---@overload fun(name: integer, role: nil): Preset
function RunningPresets:Get(name, role) end
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?): Preset
function RunningPresets:Create(index, class, undo) end
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(class: nil, undo: Undo?, count: integer?): Preset
function RunningPresets:Append(class, undo, count) end
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Preset
function RunningPresets:Acquire(class, undo) end
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Preset
---@deprecated use "Acquire" instead
function RunningPresets:Aquire(class, undo) end
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Preset
function RunningPresets:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Preset
function RunningPresets:Find(name, class) end
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Object
function RunningPresets:FindRecursive(name, class) end
