---@meta

---@class SubfixtureOverview: Object
local SubfixtureOverview = {}
---@return "SubfixtureOverview"
function SubfixtureOverview:GetClass() end
---@return "FTSubfixture"
function SubfixtureOverview:GetChildClass() end
---@generic T : SubfixtureOverview
---@param class `T`
---@return boolean
function SubfixtureOverview:IsClass(class) end
---@return DMXMode
function SubfixtureOverview:Parent() end
---@param index integer
---@return FTSubfixture
function SubfixtureOverview:Ptr(index) end
---@return FTSubfixture[]
function SubfixtureOverview:Children() end
---@return FTSubfixture?
function SubfixtureOverview:CurrentChild() end
---@overload fun(name: integer, role: nil): FTSubfixture
function SubfixtureOverview:Get(name, role) end
---@generic T : FTSubfixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FTSubfixture
function SubfixtureOverview:Create(index, class, undo) end
---@generic T : FTSubfixture
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FTSubfixture
function SubfixtureOverview:Append(class, undo, count) end
---@generic T : FTSubfixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTSubfixture
function SubfixtureOverview:Acquire(class, undo) end
---@generic T : FTSubfixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTSubfixture
---@deprecated use "Acquire" instead
function SubfixtureOverview:Aquire(class, undo) end
---@generic T : FTSubfixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTSubfixture
function SubfixtureOverview:Insert(index, class, undo, count) end
---@generic T : FTSubfixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTSubfixture
function SubfixtureOverview:Find(class, undo) end
function SubfixtureOverview:SetChildren(property_name, property_value) end