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
---@overload fun(name: "Author", role: nil): string
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "Path", role: nil): string
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Author"|"Version"|"Path"|"UserRights", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Component
function Plugin:Get(name, role) end
---@overload fun(index: integer, class: "Component", undo: Undo?): Component
---@overload fun(index: integer, class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(index: integer, class: nil, undo: Undo?): Component
function Plugin:Create(index, class, undo) end
---@overload fun(class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(class: "ComponentLua", undo: Undo?, count: integer?): ComponentLua
---@overload fun(class: nil, undo: Undo?, count: integer?): Component
function Plugin:Append(class, undo, count) end
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(class: nil, undo: Undo?): Component
function Plugin:Acquire(class, undo) end
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(class: nil, undo: Undo?): Component
---@deprecated use "Acquire" instead
function Plugin:Aquire(class, undo) end
---@overload fun(index: integer, class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(index: integer, class: "ComponentLua", undo: Undo?, count: integer?): ComponentLua
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Component
function Plugin:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Component"): Component
---@overload fun(name: string, class: "ComponentLua"): ComponentLua
---@overload fun(name: string, class: nil): Component
function Plugin:Find(name, class) end
---@overload fun(name: string, class: "Component"): Component
---@overload fun(name: string, class: "ComponentLua"): ComponentLua
---@overload fun(name: string, class: nil): Object
function Plugin:FindRecursive(name, class) end
