---@meta

---@class SoftwareVersions: Object A container for all software versions supporting this dmx mode.
local SoftwareVersions = {}
---@return "SoftwareVersions"
function SoftwareVersions:GetClass() end
---@return "SoftwareVersion"
function SoftwareVersions:GetChildClass() end
---@generic T : SoftwareVersions
---@param class `T`
---@return boolean
function SoftwareVersions:IsClass(class) end
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
---@generic T : SoftwareVersion
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SoftwareVersion
function SoftwareVersions:Create(index, class, undo) end
---@generic T : SoftwareVersion
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SoftwareVersion
function SoftwareVersions:Append(class, undo, count) end
---@generic T : SoftwareVersion
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoftwareVersion
function SoftwareVersions:Acquire(class, undo) end
---@generic T : SoftwareVersion
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoftwareVersion
---@deprecated use "Acquire" instead
function SoftwareVersions:Aquire(class, undo) end
---@generic T : SoftwareVersion
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SoftwareVersion
function SoftwareVersions:Insert(index, class, undo, count) end
---@generic T : SoftwareVersion
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoftwareVersion
function SoftwareVersions:Find(class, undo) end
---@overload fun(property_name: "SoftwareVersionID", property_value: integer)
---@overload fun(property_name: "SoftwareVersionID", property_value: integer)
function SoftwareVersions:SetChildren(property_name, property_value) end