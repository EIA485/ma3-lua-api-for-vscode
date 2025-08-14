---@meta

---@class PresetPools: NamedObj Container for preset pools.
local PresetPools = {}
---@return "PresetPools"
function PresetPools:GetClass() end
---@return "Presets"
function PresetPools:GetChildClass() end
---@return Pool
function PresetPools:Parent() end
---@param index integer
---@return Presets
function PresetPools:Ptr(index) end
---@return Presets[]
function PresetPools:Children() end
---@return Presets?
function PresetPools:CurrentChild() end
---@overload fun(name: integer, role: nil): Presets
function PresetPools:Get(name, role) end
---@generic T : Presets
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Presets
function PresetPools:Create(index, class, undo) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Presets
function PresetPools:Append(class, undo, count) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Presets
function PresetPools:Acquire(class, undo) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Presets
---@deprecated use "Acquire" instead
function PresetPools:Aquire(class, undo) end
---@generic T : Presets
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Presets
function PresetPools:Insert(index, class, undo, count) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Presets
function PresetPools:Find(class, undo) end
---@generic T : Presets|Recipe|IllegalObject
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: nil): Object
function PresetPools:FindRecursive(name, class) end