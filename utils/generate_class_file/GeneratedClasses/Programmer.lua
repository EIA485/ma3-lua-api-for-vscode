---@meta

---@class Programmer: Object
local Programmer = {}
---@return "Programmer"
function Programmer:GetClass() end
---@return "ProgPart"
function Programmer:GetChildClass() end
---@return UserEnvironment
function Programmer:Parent() end
---@param index integer
---@return ProgPart
function Programmer:Ptr(index) end
---@return ProgPart[]
function Programmer:Children() end
---@return ProgPart?
function Programmer:CurrentChild() end
---@overload fun(name: integer, role: nil): ProgPart
function Programmer:Get(name, role) end
---@generic T : ProgPart
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ProgPart
function Programmer:Create(index, class, undo) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ProgPart
function Programmer:Append(class, undo, count) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgPart
function Programmer:Acquire(class, undo) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgPart
---@deprecated use "Acquire" instead
function Programmer:Aquire(class, undo) end
---@generic T : ProgPart
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ProgPart
function Programmer:Insert(index, class, undo, count) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgPart
function Programmer:Find(class, undo) end
---@generic T : IllegalObject|ProgPart|Recipe
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Programmer:FindRecursive(name, class) end