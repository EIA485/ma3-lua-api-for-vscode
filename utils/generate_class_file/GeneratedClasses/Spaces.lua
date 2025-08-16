---@meta

---@class Spaces: Object
local Spaces = {}
---@return "Spaces"
function Spaces:GetClass() end
---@return "Space"
function Spaces:GetChildClass() end
---@generic T : Spaces
---@param class `T`
---@return boolean
function Spaces:IsClass(class) end
---@return Stage
function Spaces:Parent() end
---@param index integer
---@return Space
function Spaces:Ptr(index) end
---@return Space[]
function Spaces:Children() end
---@return Space?
function Spaces:CurrentChild() end
---@overload fun(name: integer, role: nil): Space
function Spaces:Get(name, role) end
---@generic T : Space
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Space
function Spaces:Create(index, class, undo) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Space
function Spaces:Append(class, undo, count) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Space
function Spaces:Acquire(class, undo) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Space
---@deprecated use "Acquire" instead
function Spaces:Aquire(class, undo) end
---@generic T : Space
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Space
function Spaces:Insert(index, class, undo, count) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Space
function Spaces:Find(class, undo) end
---@generic T : Space|IllegalObject|StageElement
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Spaces:FindRecursive(name, class) end
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "MinY"|"MaxY"|"MinZ"|"MaxZ"|"MinX"|"MaxX", property_value: LengthPropertyValue)
function Spaces:SetChildren(property_name, property_value) end
---@overload fun(property_name: "FollowStageDimensions", property_value: YesNo|boolean)
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "MinY"|"MaxY"|"MinZ"|"MaxZ"|"MinX"|"MaxX", property_value: LengthPropertyValue)
---@overload fun(property_name: "FollowStageDimensions", property_value: YesNo|boolean)
---@overload fun(property_name: "P1X"|"P1Y"|"P4X"|"P4Y"|"P1Z"|"P2X"|"P4Z"|"P3Z"|"P2Y"|"P2Z"|"P3X"|"P3Y", property_value: number)
function Spaces:SetChildrenRecursive(property_name, property_value) end