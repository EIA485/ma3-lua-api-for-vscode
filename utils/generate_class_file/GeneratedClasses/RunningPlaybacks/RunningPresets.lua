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
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?): Preset
function RunningPresets:Create(index, class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: nil, undo: Undo?, count: integer?): Preset
function RunningPresets:Append(class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Preset
function RunningPresets:Acquire(class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Preset
---@deprecated use "Acquire" instead
function RunningPresets:Aquire(class, undo) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Preset
function RunningPresets:Insert(index, class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Preset
function RunningPresets:Find(class, undo) end
---@generic T : Recipe|IllegalObject
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: nil): Object
function RunningPresets:FindRecursive(name, class) end