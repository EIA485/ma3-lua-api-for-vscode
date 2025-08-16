---@meta

---@class PatchFakeCollect: Object
local PatchFakeCollect = {}
---@return "PatchFakeCollect"
function PatchFakeCollect:GetClass() end
---@return "PatchFakeObject"
function PatchFakeCollect:GetChildClass() end
---@generic T : PatchFakeCollect
---@param class `T`
---@return boolean
function PatchFakeCollect:IsClass(class) end
---@return ConvertTask
function PatchFakeCollect:Parent() end
---@param index integer
---@return PatchFakeObject
function PatchFakeCollect:Ptr(index) end
---@return PatchFakeObject[]
function PatchFakeCollect:Children() end
---@return PatchFakeObject?
function PatchFakeCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PatchFakeObject
function PatchFakeCollect:Get(name, role) end
---@generic T : PatchFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Create(index, class, undo) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PatchFakeObject
function PatchFakeCollect:Append(class, undo, count) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Acquire(class, undo) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
---@deprecated use "Acquire" instead
function PatchFakeCollect:Aquire(class, undo) end
---@generic T : PatchFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PatchFakeObject
function PatchFakeCollect:Insert(index, class, undo, count) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Find(class, undo) end
---@overload fun(property_name: "FixtureType", property_value: integer)
---@overload fun(property_name: "Patch", property_value: DMXPropertyAddress)
---@overload fun(property_name: "Patch", property_value: DMXPropertyAddress)
---@overload fun(property_name: "Stage"|"IDType", property_value: Default)
---@overload fun(property_name: "FixtureID"|"CID", property_value: NoneAndDefault)
---@overload fun(property_name: "FixtureType", property_value: integer)
---@overload fun(property_name: "Layer"|"Class"|"PosY"|"PosZ"|"Name"|"PosX", property_value: string)
function PatchFakeCollect:SetChildren(property_name, property_value) end