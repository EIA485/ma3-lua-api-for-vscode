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
---@overload fun(index: integer, class: "Presets", undo: Undo?): Presets
---@overload fun(index: integer, class: nil, undo: Undo?): Presets
function PresetPools:Create(index, class, undo) end
---@overload fun(class: "Presets", undo: Undo?, count: integer?): Presets
---@overload fun(class: nil, undo: Undo?, count: integer?): Presets
function PresetPools:Append(class, undo, count) end
---@overload fun(class: "Presets", undo: Undo?): Presets
---@overload fun(class: nil, undo: Undo?): Presets
function PresetPools:Acquire(class, undo) end
---@overload fun(class: "Presets", undo: Undo?): Presets
---@overload fun(class: nil, undo: Undo?): Presets
---@deprecated use "Acquire" instead
function PresetPools:Aquire(class, undo) end
---@overload fun(index: integer, class: "Presets", undo: Undo?, count: integer?): Presets
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Presets
function PresetPools:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Presets"): Presets
---@overload fun(name: string, class: nil): Presets
function PresetPools:Find(name, class) end
---@overload fun(name: string, class: "Presets"): Presets
---@overload fun(name: string, class: nil): Object
function PresetPools:FindRecursive(name, class) end
