---@meta

---@class SoftwareVersions: Object A container for all software versions supporting this dmx mode.
local SoftwareVersions = {}
---@return "SoftwareVersions"
function SoftwareVersions:GetClass() end
---@return "SoftwareVersion"
function SoftwareVersions:GetChildClass() end
---@return DMXMode
function SoftwareVersions:Parent() end
---@param index integer
---@return SoftwareVersion
function SoftwareVersions:Ptr(index) end
---@return SoftwareVersion[]
function SoftwareVersions:Children() end
---@return SoftwareVersion?
function SoftwareVersions:CurrentChild() end
---@overload fun(name: integer, role: nil): SoftwareVersion
function SoftwareVersions:Get(name, role) end
---@overload fun(index: integer, class: "SoftwareVersion", undo: Undo?): SoftwareVersion
---@overload fun(index: integer, class: nil, undo: Undo?): SoftwareVersion
function SoftwareVersions:Create(index, class, undo) end
---@overload fun(class: "SoftwareVersion", undo: Undo?, count: integer?): SoftwareVersion
---@overload fun(class: nil, undo: Undo?, count: integer?): SoftwareVersion
function SoftwareVersions:Append(class, undo, count) end
---@overload fun(class: "SoftwareVersion", undo: Undo?): SoftwareVersion
---@overload fun(class: nil, undo: Undo?): SoftwareVersion
function SoftwareVersions:Acquire(class, undo) end
---@overload fun(class: "SoftwareVersion", undo: Undo?): SoftwareVersion
---@overload fun(class: nil, undo: Undo?): SoftwareVersion
---@deprecated use "Acquire" instead
function SoftwareVersions:Aquire(class, undo) end
---@overload fun(index: integer, class: "SoftwareVersion", undo: Undo?, count: integer?): SoftwareVersion
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SoftwareVersion
function SoftwareVersions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SoftwareVersion"): SoftwareVersion
---@overload fun(name: string, class: nil): SoftwareVersion
function SoftwareVersions:Find(name, class) end
---@overload fun(name: string, class: "SoftwareVersion"): SoftwareVersion
---@overload fun(name: string, class: nil): Object
function SoftwareVersions:FindRecursive(name, class) end
