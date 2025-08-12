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
---@overload fun(index: integer, class: "FTPresetType", undo: Undo?): FTPresetType
---@overload fun(index: integer, class: nil, undo: Undo?): FTPresetType
function FTPresets:Create(index, class, undo) end
---@overload fun(class: "FTPresetType", undo: Undo?, count: integer?): FTPresetType
---@overload fun(class: nil, undo: Undo?, count: integer?): FTPresetType
function FTPresets:Append(class, undo, count) end
---@overload fun(class: "FTPresetType", undo: Undo?): FTPresetType
---@overload fun(class: nil, undo: Undo?): FTPresetType
function FTPresets:Acquire(class, undo) end
---@overload fun(class: "FTPresetType", undo: Undo?): FTPresetType
---@overload fun(class: nil, undo: Undo?): FTPresetType
---@deprecated use "Acquire" instead
function FTPresets:Aquire(class, undo) end
---@overload fun(index: integer, class: "FTPresetType", undo: Undo?, count: integer?): FTPresetType
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTPresetType
function FTPresets:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FTPresetType"): FTPresetType
---@overload fun(name: string, class: nil): FTPresetType
function FTPresets:Find(name, class) end
---@overload fun(name: string, class: "FTPresetType"): FTPresetType
---@overload fun(name: string, class: nil): Object
function FTPresets:FindRecursive(name, class) end
