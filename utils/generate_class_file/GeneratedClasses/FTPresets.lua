---@meta

---@class FTPresets: Object Container for all auto-generated preset data inside a fixture type.
local FTPresets = {}
---@return "FTPresets"
function FTPresets:GetClass() end
---@return "FTPresetType"
function FTPresets:GetChildClass() end
---@return DMXMode
function FTPresets:Parent() end
---@param index integer
---@return FTPresetType
function FTPresets:Ptr(index) end
---@return FTPresetType[]
function FTPresets:Children() end
---@return FTPresetType?
function FTPresets:CurrentChild() end
---@overload fun(name: integer, role: nil): FTPresetType
function FTPresets:Get(name, role) end
---@generic T : FTPresetType
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FTPresetType
function FTPresets:Create(index, class, undo) end
---@generic T : FTPresetType
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FTPresetType
function FTPresets:Append(class, undo, count) end
---@generic T : FTPresetType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTPresetType
function FTPresets:Acquire(class, undo) end
---@generic T : FTPresetType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTPresetType
---@deprecated use "Acquire" instead
function FTPresets:Aquire(class, undo) end
---@generic T : FTPresetType
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTPresetType
function FTPresets:Insert(index, class, undo, count) end
---@generic T : FTPresetType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTPresetType
function FTPresets:Find(class, undo) end