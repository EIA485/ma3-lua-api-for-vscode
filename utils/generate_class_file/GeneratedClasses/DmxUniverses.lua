---@meta

---@class DmxUniverses: Object
local DmxUniverses = {}
---@return "DmxUniverses"
function DmxUniverses:GetClass() end
---@return "DmxUniverse"
function DmxUniverses:GetChildClass() end
---@generic T : DmxUniverses
---@param class `T`
---@return boolean
function DmxUniverses:IsClass(class) end
---@return Patch
function DmxUniverses:Parent() end
---@param index integer
---@return DmxUniverse
function DmxUniverses:Ptr(index) end
---@return DmxUniverse[]
function DmxUniverses:Children() end
---@return DmxUniverse?
function DmxUniverses:CurrentChild() end
---@overload fun(name: integer, role: nil): DmxUniverse
function DmxUniverses:Get(name, role) end
---@generic T : DmxUniverse
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Create(index, class, undo) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxUniverse
function DmxUniverses:Append(class, undo, count) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Acquire(class, undo) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxUniverse
---@deprecated use "Acquire" instead
function DmxUniverses:Aquire(class, undo) end
---@generic T : DmxUniverse
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxUniverse
function DmxUniverses:Insert(index, class, undo, count) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Find(class, undo) end
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "Request", property_value: LicenseRequest)
---@overload fun(property_name: "Granted", property_value: Yes|true)
---@overload fun(property_name: "PatchInfo", property_value: [PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo])
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "Request", property_value: LicenseRequest)
---@overload fun(property_name: "PortOut"|"PortIn"|"PortRDM", property_value: YesNo|boolean)
---@overload fun(property_name: "Granted", property_value: Yes|true)
---@overload fun(property_name: "PatchInfo", property_value: [PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo, PatchInfo])
---@overload fun(property_name: "CoarseParams"|"TesterCount"|"Used"|"ParkedCount", property_value: integer)
---@overload fun(property_name: "Name", property_value: string)
function DmxUniverses:SetChildren(property_name, property_value) end