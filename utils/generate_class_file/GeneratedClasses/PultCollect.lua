---@meta

---@class PultCollect: Object
local PultCollect = {}
---@return "PultCollect"
function PultCollect:GetClass() end
---@return "Pult"
function PultCollect:GetChildClass() end
---@param index integer
---@return Pult
function PultCollect:Ptr(index) end
---@return Pult[]
function PultCollect:Children() end
---@return Pult?
function PultCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Pult
function PultCollect:Get(name, role) end
---@overload fun(index: integer, class: "Pult", undo: Undo?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?): Pult
---@overload fun(index: integer, class: nil, undo: Undo?): Pult
function PultCollect:Create(index, class, undo) end
---@overload fun(class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(class: nil, undo: Undo?, count: integer?): Pult
function PultCollect:Append(class, undo, count) end
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: nil, undo: Undo?): Pult
function PultCollect:Acquire(class, undo) end
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: "Pult", undo: Undo?): Pult
---@overload fun(class: nil, undo: Undo?): Pult
---@deprecated use "Acquire" instead
function PultCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(index: integer, class: "Pult", undo: Undo?, count: integer?): Pult
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Pult
function PultCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: nil): Pult
function PultCollect:Find(name, class) end
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: "Pult"): Pult
---@overload fun(name: string, class: nil): Object
function PultCollect:FindRecursive(name, class) end
