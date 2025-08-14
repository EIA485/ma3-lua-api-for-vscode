---@meta

---@class Plugin: GuidObject A plugin is a collection of components. Usually it represents a piece of user interface.
---@field Author string
---@field Version Stream.Version
---@field Path string
---@field UserRights UserRights
local Plugin = {
    UserRights="View"
}
---@return "Plugin"
function Plugin:GetClass() end
---@return "Component"
function Plugin:GetChildClass() end
---@param index integer
---@return Component
function Plugin:Ptr(index) end
---@return Component[]
function Plugin:Children() end
---@return Component?
function Plugin:CurrentChild() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Author"|"Path"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Author"|"Version"|"Path"|"UserRights"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Component
function Plugin:Get(name, role) end
---@generic T : ComponentLua
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Component", undo: Undo?): Component
---@overload fun(index: integer, class: nil, undo: Undo?): Component
function Plugin:Create(index, class, undo) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(class: nil, undo: Undo?, count: integer?): Component
function Plugin:Append(class, undo, count) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: nil, undo: Undo?): Component
function Plugin:Acquire(class, undo) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: nil, undo: Undo?): Component
---@deprecated use "Acquire" instead
function Plugin:Aquire(class, undo) end
---@generic T : ComponentLua
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Component
function Plugin:Insert(index, class, undo, count) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: nil, undo: Undo?): Component
function Plugin:Find(class, undo) end