---@meta

---@class DisplayCollect: GraphicsObject A container for all logical displays
local DisplayCollect = {}
---@return "DisplayCollect"
function DisplayCollect:GetClass() end
---@return "Display"
function DisplayCollect:GetChildClass() end
---@return Pult
function DisplayCollect:Parent() end
---@param index integer
---@return Display
function DisplayCollect:Ptr(index) end
---@return Display[]
function DisplayCollect:Children() end
---@return Display?
function DisplayCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Display
function DisplayCollect:Get(name, role) end
---@overload fun(index: integer, class: "Display", undo: Undo?): Display
---@overload fun(index: integer, class: nil, undo: Undo?): Display
function DisplayCollect:Create(index, class, undo) end
---@overload fun(class: "Display", undo: Undo?, count: integer?): Display
---@overload fun(class: nil, undo: Undo?, count: integer?): Display
function DisplayCollect:Append(class, undo, count) end
---@overload fun(class: "Display", undo: Undo?): Display
---@overload fun(class: nil, undo: Undo?): Display
function DisplayCollect:Acquire(class, undo) end
---@overload fun(class: "Display", undo: Undo?): Display
---@overload fun(class: nil, undo: Undo?): Display
---@deprecated use "Acquire" instead
function DisplayCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Display", undo: Undo?, count: integer?): Display
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Display
function DisplayCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Display"): Display
---@overload fun(name: string, class: nil): Display
function DisplayCollect:Find(name, class) end
---@overload fun(name: string, class: "Display"): Display
---@overload fun(name: string, class: nil): Object
function DisplayCollect:FindRecursive(name, class) end
