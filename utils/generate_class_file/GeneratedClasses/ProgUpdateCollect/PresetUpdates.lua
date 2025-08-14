---@meta

---@class PresetUpdates: ProgUpdateCollect
local PresetUpdates = {}
---@return "PresetUpdates"
function PresetUpdates:GetClass() end
---@return "PresetUpdate"
function PresetUpdates:GetChildClass() end
---@param index integer
---@return PresetUpdate
function PresetUpdates:Ptr(index) end
---@return PresetUpdate[]
function PresetUpdates:Children() end
---@return PresetUpdate?
function PresetUpdates:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetUpdate
function PresetUpdates:Get(name, role) end
---@generic T : PresetUpdate
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetUpdate
function PresetUpdates:Create(index, class, undo) end
---@generic T : PresetUpdate
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetUpdate
function PresetUpdates:Append(class, undo, count) end
---@generic T : PresetUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetUpdate
function PresetUpdates:Acquire(class, undo) end
---@generic T : PresetUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetUpdate
---@deprecated use "Acquire" instead
function PresetUpdates:Aquire(class, undo) end
---@generic T : PresetUpdate
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetUpdate
function PresetUpdates:Insert(index, class, undo, count) end
---@generic T : PresetUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetUpdate
function PresetUpdates:Find(class, undo) end