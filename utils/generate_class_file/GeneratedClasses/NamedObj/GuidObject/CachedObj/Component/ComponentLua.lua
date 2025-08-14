---@meta

---@class ComponentLua: Component A plugin component that contains Lua script.
---@field SyntaxError boolean
---@field FullPath string
---@field FileExists boolean
local ComponentLua = {}
---@return "ComponentLua"
function ComponentLua:GetClass() end
---@return "Object"
function ComponentLua:GetChildClass() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "SyntaxError"|"FileExists"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FileSize"|"Installed"|"IsResource"|"InStream"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "FullPath"|"FileName"|"FilePath"|"FileContent"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "SyntaxError"|"FullPath"|"FileExists"|"UserRights"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ComponentLua:Get(name, role) end