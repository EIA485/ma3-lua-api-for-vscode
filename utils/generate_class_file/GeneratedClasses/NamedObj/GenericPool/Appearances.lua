---@meta

---@class Appearances: GenericPool
local Appearances = {}
---@return "Appearances"
function Appearances:GetClass() end
---@return "Appearance"
function Appearances:GetChildClass() end
---@return ShowData
function Appearances:Parent() end
---@param index integer
---@return Appearance
function Appearances:Ptr(index) end
---@return Appearance[]
function Appearances:Children() end
---@return Appearance?
function Appearances:CurrentChild() end
---@overload fun(name: integer, role: nil): Appearance
function Appearances:Get(name, role) end
---@overload fun(index: integer, class: "Appearance", undo: Undo?): Appearance
---@overload fun(index: integer, class: "GeneratorBaseObject", undo: Undo?): GeneratorBaseObject
---@overload fun(index: integer, class: nil, undo: Undo?): Appearance
function Appearances:Create(index, class, undo) end
---@overload fun(class: "Appearance", undo: Undo?, count: integer?): Appearance
---@overload fun(class: "GeneratorBaseObject", undo: Undo?, count: integer?): GeneratorBaseObject
---@overload fun(class: nil, undo: Undo?, count: integer?): Appearance
function Appearances:Append(class, undo, count) end
---@overload fun(class: "Appearance", undo: Undo?): Appearance
---@overload fun(class: "GeneratorBaseObject", undo: Undo?): GeneratorBaseObject
---@overload fun(class: nil, undo: Undo?): Appearance
function Appearances:Acquire(class, undo) end
---@overload fun(class: "Appearance", undo: Undo?): Appearance
---@overload fun(class: "GeneratorBaseObject", undo: Undo?): GeneratorBaseObject
---@overload fun(class: nil, undo: Undo?): Appearance
---@deprecated use "Acquire" instead
function Appearances:Aquire(class, undo) end
---@overload fun(index: integer, class: "Appearance", undo: Undo?, count: integer?): Appearance
---@overload fun(index: integer, class: "GeneratorBaseObject", undo: Undo?, count: integer?): GeneratorBaseObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Appearance
function Appearances:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Appearance"): Appearance
---@overload fun(name: string, class: "GeneratorBaseObject"): GeneratorBaseObject
---@overload fun(name: string, class: nil): Appearance
function Appearances:Find(name, class) end
---@overload fun(name: string, class: "Appearance"): Appearance
---@overload fun(name: string, class: "GeneratorBaseObject"): GeneratorBaseObject
---@overload fun(name: string, class: nil): Object
function Appearances:FindRecursive(name, class) end
