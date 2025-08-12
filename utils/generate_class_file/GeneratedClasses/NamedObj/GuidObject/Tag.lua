---@meta

---@class Tag: GuidObject
---@field TagType integer
---@field ForwardCommands integer
---@field DummyAssignable integer
local Tag = {
    TagType="None",
    ForwardCommands="Yes"
}
---@return "Tag"
function Tag:GetClass() end
---@return "TagReference"
function Tag:GetChildClass() end
---@return Tags
function Tag:Parent() end
---@param index integer
---@return TagReference
function Tag:Ptr(index) end
---@return TagReference[]
function Tag:Children() end
---@return TagReference?
function Tag:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "TagType"|"ForwardCommands"|"DummyAssignable", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"TagType"|"ForwardCommands"|"DummyAssignable", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TagReference
function Tag:Get(name, role) end
---@overload fun(index: integer, class: "TagReference", undo: Undo?): TagReference
---@overload fun(index: integer, class: nil, undo: Undo?): TagReference
function Tag:Create(index, class, undo) end
---@overload fun(class: "TagReference", undo: Undo?, count: integer?): TagReference
---@overload fun(class: nil, undo: Undo?, count: integer?): TagReference
function Tag:Append(class, undo, count) end
---@overload fun(class: "TagReference", undo: Undo?): TagReference
---@overload fun(class: nil, undo: Undo?): TagReference
function Tag:Acquire(class, undo) end
---@overload fun(class: "TagReference", undo: Undo?): TagReference
---@overload fun(class: nil, undo: Undo?): TagReference
---@deprecated use "Acquire" instead
function Tag:Aquire(class, undo) end
---@overload fun(index: integer, class: "TagReference", undo: Undo?, count: integer?): TagReference
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TagReference
function Tag:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TagReference"): TagReference
---@overload fun(name: string, class: nil): TagReference
function Tag:Find(name, class) end
---@overload fun(name: string, class: "TagReference"): TagReference
---@overload fun(name: string, class: nil): Object
function Tag:FindRecursive(name, class) end
