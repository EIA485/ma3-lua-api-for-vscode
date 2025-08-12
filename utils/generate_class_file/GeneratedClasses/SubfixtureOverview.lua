---@meta

---@class SubfixtureOverview: Object
local SubfixtureOverview = {}
---@return "SubfixtureOverview"
function SubfixtureOverview:GetClass() end
---@return "FTSubfixture"
function SubfixtureOverview:GetChildClass() end
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
---@overload fun(index: integer, class: "FTSubfixture", undo: Undo?): FTSubfixture
---@overload fun(index: integer, class: nil, undo: Undo?): FTSubfixture
function SubfixtureOverview:Create(index, class, undo) end
---@overload fun(class: "FTSubfixture", undo: Undo?, count: integer?): FTSubfixture
---@overload fun(class: nil, undo: Undo?, count: integer?): FTSubfixture
function SubfixtureOverview:Append(class, undo, count) end
---@overload fun(class: "FTSubfixture", undo: Undo?): FTSubfixture
---@overload fun(class: nil, undo: Undo?): FTSubfixture
function SubfixtureOverview:Acquire(class, undo) end
---@overload fun(class: "FTSubfixture", undo: Undo?): FTSubfixture
---@overload fun(class: nil, undo: Undo?): FTSubfixture
---@deprecated use "Acquire" instead
function SubfixtureOverview:Aquire(class, undo) end
---@overload fun(index: integer, class: "FTSubfixture", undo: Undo?, count: integer?): FTSubfixture
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTSubfixture
function SubfixtureOverview:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FTSubfixture"): FTSubfixture
---@overload fun(name: string, class: nil): FTSubfixture
function SubfixtureOverview:Find(name, class) end
---@overload fun(name: string, class: "FTSubfixture"): FTSubfixture
---@overload fun(name: string, class: nil): Object
function SubfixtureOverview:FindRecursive(name, class) end
