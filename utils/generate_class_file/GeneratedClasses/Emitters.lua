---@meta

---@class Emitters: Object
local Emitters = {}
---@return "Emitters"
function Emitters:GetClass() end
---@return "Emitter"
function Emitters:GetChildClass() end
---@return PhysicalDescriptions
function Emitters:Parent() end
---@param index integer
---@return Emitter
function Emitters:Ptr(index) end
---@return Emitter[]
function Emitters:Children() end
---@return Emitter?
function Emitters:CurrentChild() end
---@overload fun(name: integer, role: nil): Emitter
function Emitters:Get(name, role) end
---@overload fun(index: integer, class: "Emitter", undo: Undo?): Emitter
---@overload fun(index: integer, class: nil, undo: Undo?): Emitter
function Emitters:Create(index, class, undo) end
---@overload fun(class: "Emitter", undo: Undo?, count: integer?): Emitter
---@overload fun(class: nil, undo: Undo?, count: integer?): Emitter
function Emitters:Append(class, undo, count) end
---@overload fun(class: "Emitter", undo: Undo?): Emitter
---@overload fun(class: nil, undo: Undo?): Emitter
function Emitters:Acquire(class, undo) end
---@overload fun(class: "Emitter", undo: Undo?): Emitter
---@overload fun(class: nil, undo: Undo?): Emitter
---@deprecated use "Acquire" instead
function Emitters:Aquire(class, undo) end
---@overload fun(index: integer, class: "Emitter", undo: Undo?, count: integer?): Emitter
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Emitter
function Emitters:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Emitter"): Emitter
---@overload fun(name: string, class: nil): Emitter
function Emitters:Find(name, class) end
---@overload fun(name: string, class: "Emitter"): Emitter
---@overload fun(name: string, class: nil): Object
function Emitters:FindRecursive(name, class) end
