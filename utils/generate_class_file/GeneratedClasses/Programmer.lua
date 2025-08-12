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
---@overload fun(index: integer, class: "ProgPart", undo: Undo?): ProgPart
---@overload fun(index: integer, class: nil, undo: Undo?): ProgPart
function Programmer:Create(index, class, undo) end
---@overload fun(class: "ProgPart", undo: Undo?, count: integer?): ProgPart
---@overload fun(class: nil, undo: Undo?, count: integer?): ProgPart
function Programmer:Append(class, undo, count) end
---@overload fun(class: "ProgPart", undo: Undo?): ProgPart
---@overload fun(class: nil, undo: Undo?): ProgPart
function Programmer:Acquire(class, undo) end
---@overload fun(class: "ProgPart", undo: Undo?): ProgPart
---@overload fun(class: nil, undo: Undo?): ProgPart
---@deprecated use "Acquire" instead
function Programmer:Aquire(class, undo) end
---@overload fun(index: integer, class: "ProgPart", undo: Undo?, count: integer?): ProgPart
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ProgPart
function Programmer:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ProgPart"): ProgPart
---@overload fun(name: string, class: nil): ProgPart
function Programmer:Find(name, class) end
---@overload fun(name: string, class: "ProgPart"): ProgPart
---@overload fun(name: string, class: nil): Object
function Programmer:FindRecursive(name, class) end
