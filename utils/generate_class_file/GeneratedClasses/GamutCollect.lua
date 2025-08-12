---@meta

---@class GamutCollect: Object
local GamutCollect = {}
---@return "GamutCollect"
function GamutCollect:GetClass() end
---@return "Gamut"
function GamutCollect:GetChildClass() end
---@return PhysicalDescriptions
function GamutCollect:Parent() end
---@param index integer
---@return Gamut
function GamutCollect:Ptr(index) end
---@return Gamut[]
function GamutCollect:Children() end
---@return Gamut?
function GamutCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Gamut
function GamutCollect:Get(name, role) end
---@overload fun(index: integer, class: "Gamut", undo: Undo?): Gamut
---@overload fun(index: integer, class: nil, undo: Undo?): Gamut
function GamutCollect:Create(index, class, undo) end
---@overload fun(class: "Gamut", undo: Undo?, count: integer?): Gamut
---@overload fun(class: nil, undo: Undo?, count: integer?): Gamut
function GamutCollect:Append(class, undo, count) end
---@overload fun(class: "Gamut", undo: Undo?): Gamut
---@overload fun(class: nil, undo: Undo?): Gamut
function GamutCollect:Acquire(class, undo) end
---@overload fun(class: "Gamut", undo: Undo?): Gamut
---@overload fun(class: nil, undo: Undo?): Gamut
---@deprecated use "Acquire" instead
function GamutCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Gamut", undo: Undo?, count: integer?): Gamut
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Gamut
function GamutCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Gamut"): Gamut
---@overload fun(name: string, class: nil): Gamut
function GamutCollect:Find(name, class) end
---@overload fun(name: string, class: "Gamut"): Gamut
---@overload fun(name: string, class: nil): Object
function GamutCollect:FindRecursive(name, class) end
