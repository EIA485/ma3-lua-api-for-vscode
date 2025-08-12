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
---@overload fun(index: integer, class: "PresetUpdate", undo: Undo?): PresetUpdate
---@overload fun(index: integer, class: nil, undo: Undo?): PresetUpdate
function PresetUpdates:Create(index, class, undo) end
---@overload fun(class: "PresetUpdate", undo: Undo?, count: integer?): PresetUpdate
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetUpdate
function PresetUpdates:Append(class, undo, count) end
---@overload fun(class: "PresetUpdate", undo: Undo?): PresetUpdate
---@overload fun(class: nil, undo: Undo?): PresetUpdate
function PresetUpdates:Acquire(class, undo) end
---@overload fun(class: "PresetUpdate", undo: Undo?): PresetUpdate
---@overload fun(class: nil, undo: Undo?): PresetUpdate
---@deprecated use "Acquire" instead
function PresetUpdates:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetUpdate", undo: Undo?, count: integer?): PresetUpdate
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetUpdate
function PresetUpdates:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetUpdate"): PresetUpdate
---@overload fun(name: string, class: nil): PresetUpdate
function PresetUpdates:Find(name, class) end
---@overload fun(name: string, class: "PresetUpdate"): PresetUpdate
---@overload fun(name: string, class: nil): Object
function PresetUpdates:FindRecursive(name, class) end
