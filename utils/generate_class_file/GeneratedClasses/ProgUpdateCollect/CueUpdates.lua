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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ObjectList", role: nil): integer[]
---@overload fun(name: "FilterMode", role: nil): ProgUpdateCueMode
---@overload fun(name: "ObjectList", role: nil): integer[]
---@overload fun(name: "ChangeCount", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ObjectList"|"FilterMode"|"ObjectList"|"ChangeCount", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): CueUpdate
function CueUpdates:Get(name, role) end
---@overload fun(index: integer, class: "CueUpdate", undo: Undo?): CueUpdate
---@overload fun(index: integer, class: nil, undo: Undo?): CueUpdate
function CueUpdates:Create(index, class, undo) end
---@overload fun(class: "CueUpdate", undo: Undo?, count: integer?): CueUpdate
---@overload fun(class: nil, undo: Undo?, count: integer?): CueUpdate
function CueUpdates:Append(class, undo, count) end
---@overload fun(class: "CueUpdate", undo: Undo?): CueUpdate
---@overload fun(class: nil, undo: Undo?): CueUpdate
function CueUpdates:Acquire(class, undo) end
---@overload fun(class: "CueUpdate", undo: Undo?): CueUpdate
---@overload fun(class: nil, undo: Undo?): CueUpdate
---@deprecated use "Acquire" instead
function CueUpdates:Aquire(class, undo) end
---@overload fun(index: integer, class: "CueUpdate", undo: Undo?, count: integer?): CueUpdate
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CueUpdate
function CueUpdates:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "CueUpdate"): CueUpdate
---@overload fun(name: string, class: nil): CueUpdate
function CueUpdates:Find(name, class) end
---@overload fun(name: string, class: "CueUpdate"): CueUpdate
---@overload fun(name: string, class: nil): Object
function CueUpdates:FindRecursive(name, class) end
