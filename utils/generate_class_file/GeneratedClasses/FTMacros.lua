---@meta

---@class FTMacros: Object A super container for 2 type macro containers: DMX and visual for the fixture type.
local FTMacros = {}
---@return "FTMacros"
function FTMacros:GetClass() end
---@return "FTMacro"
function FTMacros:GetChildClass() end
---@return DMXMode
function FTMacros:Parent() end
---@param index integer
---@return FTMacro
function FTMacros:Ptr(index) end
---@return FTMacro[]
function FTMacros:Children() end
---@return FTMacro?
function FTMacros:CurrentChild() end
---@overload fun(name: integer, role: nil): FTMacro
function FTMacros:Get(name, role) end
---@overload fun(index: integer, class: "FTMacro", undo: Undo?): FTMacro
---@overload fun(index: integer, class: nil, undo: Undo?): FTMacro
function FTMacros:Create(index, class, undo) end
---@overload fun(class: "FTMacro", undo: Undo?, count: integer?): FTMacro
---@overload fun(class: nil, undo: Undo?, count: integer?): FTMacro
function FTMacros:Append(class, undo, count) end
---@overload fun(class: "FTMacro", undo: Undo?): FTMacro
---@overload fun(class: nil, undo: Undo?): FTMacro
function FTMacros:Acquire(class, undo) end
---@overload fun(class: "FTMacro", undo: Undo?): FTMacro
---@overload fun(class: nil, undo: Undo?): FTMacro
---@deprecated use "Acquire" instead
function FTMacros:Aquire(class, undo) end
---@overload fun(index: integer, class: "FTMacro", undo: Undo?, count: integer?): FTMacro
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTMacro
function FTMacros:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FTMacro"): FTMacro
---@overload fun(name: string, class: nil): FTMacro
function FTMacros:Find(name, class) end
---@overload fun(name: string, class: "FTMacro"): FTMacro
---@overload fun(name: string, class: nil): Object
function FTMacros:FindRecursive(name, class) end
