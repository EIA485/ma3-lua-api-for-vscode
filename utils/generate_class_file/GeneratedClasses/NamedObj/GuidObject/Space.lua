---@meta

---@class Space: GuidObject
---@field Color Colors.RGB<float>
---@field MinX LengthPropertyValue
---@field MaxX LengthPropertyValue
---@field MinY LengthPropertyValue
---@field MaxY LengthPropertyValue
---@field MinZ LengthPropertyValue
---@field MaxZ LengthPropertyValue
local Space = {
    Color="1,1,1,1"
}
---@return "Space"
function Space:GetClass() end
---@return "StageElement"
function Space:GetChildClass() end
---@return Spaces
function Space:Parent() end
---@param index integer
---@return StageElement
function Space:Ptr(index) end
---@return StageElement[]
function Space:Children() end
---@return StageElement?
function Space:CurrentChild() end
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
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "MinX"|"MaxX"|"MinY"|"MaxY"|"MinZ"|"MaxZ", role: nil): LengthPropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Color"|"MinX"|"MaxX"|"MinY"|"MaxY"|"MinZ"|"MaxZ", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): StageElement
function Space:Get(name, role) end
---@overload fun(index: integer, class: "StageElement", undo: Undo?): StageElement
---@overload fun(index: integer, class: nil, undo: Undo?): StageElement
function Space:Create(index, class, undo) end
---@overload fun(class: "StageElement", undo: Undo?, count: integer?): StageElement
---@overload fun(class: nil, undo: Undo?, count: integer?): StageElement
function Space:Append(class, undo, count) end
---@overload fun(class: "StageElement", undo: Undo?): StageElement
---@overload fun(class: nil, undo: Undo?): StageElement
function Space:Acquire(class, undo) end
---@overload fun(class: "StageElement", undo: Undo?): StageElement
---@overload fun(class: nil, undo: Undo?): StageElement
---@deprecated use "Acquire" instead
function Space:Aquire(class, undo) end
---@overload fun(index: integer, class: "StageElement", undo: Undo?, count: integer?): StageElement
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): StageElement
function Space:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "StageElement"): StageElement
---@overload fun(name: string, class: nil): StageElement
function Space:Find(name, class) end
---@overload fun(name: string, class: "StageElement"): StageElement
---@overload fun(name: string, class: nil): Object
function Space:FindRecursive(name, class) end
