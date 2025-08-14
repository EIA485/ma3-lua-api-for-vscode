---@meta

---@class CueUpdates: ProgUpdateCollect
---@field FilterMode ProgUpdateCueMode
---@field ObjectList integer[]
---@field ChangeCount integer
local CueUpdates = {}
---@return "CueUpdates"
function CueUpdates:GetClass() end
---@return "CueUpdate"
function CueUpdates:GetChildClass() end
---@param index integer
---@return CueUpdate
function CueUpdates:Ptr(index) end
---@return CueUpdate[]
function CueUpdates:Children() end
---@return CueUpdate?
function CueUpdates:CurrentChild() end
---@overload fun(name: "FilterMode", role: nil): ProgUpdateCueMode
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ChangeCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "ObjectList", role: nil): integer[]
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "FilterMode"|"ObjectList"|"ChangeCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): CueUpdate
function CueUpdates:Get(name, role) end
---@generic T : CueUpdate
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): CueUpdate
function CueUpdates:Create(index, class, undo) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): CueUpdate
function CueUpdates:Append(class, undo, count) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CueUpdate
function CueUpdates:Acquire(class, undo) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CueUpdate
---@deprecated use "Acquire" instead
function CueUpdates:Aquire(class, undo) end
---@generic T : CueUpdate
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CueUpdate
function CueUpdates:Insert(index, class, undo, count) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CueUpdate
function CueUpdates:Find(class, undo) end