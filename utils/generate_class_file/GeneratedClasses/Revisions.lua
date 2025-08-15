---@meta

---@class Revisions: Object A container for all revisions of a fixture type.
local Revisions = {}
---@return "Revisions"
function Revisions:GetClass() end
---@return "Revision"
function Revisions:GetChildClass() end
---@generic T : Revisions
---@param class `T`
---@return boolean
function Revisions:IsClass(class) end
---@return FixtureType
function Revisions:Parent() end
---@param index integer
---@return Revision
function Revisions:Ptr(index) end
---@return Revision[]
function Revisions:Children() end
---@return Revision?
function Revisions:CurrentChild() end
---@overload fun(name: integer, role: nil): Revision
function Revisions:Get(name, role) end
---@generic T : Revision
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Revision
function Revisions:Create(index, class, undo) end
---@generic T : Revision
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Revision
function Revisions:Append(class, undo, count) end
---@generic T : Revision
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Revision
function Revisions:Acquire(class, undo) end
---@generic T : Revision
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Revision
---@deprecated use "Acquire" instead
function Revisions:Aquire(class, undo) end
---@generic T : Revision
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Revision
function Revisions:Insert(index, class, undo, count) end
---@generic T : Revision
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Revision
function Revisions:Find(class, undo) end
---@overload fun(property_name: "Date", property_value: DatumMode)
---@overload fun(property_name: "UserID", property_value: integer)
---@overload fun(property_name: "Date", property_value: DatumMode)
---@overload fun(property_name: "UserID", property_value: integer)
---@overload fun(property_name: "ModifiedBy"|"Text", property_value: string)
function Revisions:UserID(property_name, property_value) end