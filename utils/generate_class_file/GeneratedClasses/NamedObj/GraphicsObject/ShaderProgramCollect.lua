---@meta

---@class ShaderProgramCollect: GraphicsObject A container for shader programs
local ShaderProgramCollect = {}
---@return "ShaderProgramCollect"
function ShaderProgramCollect:GetClass() end
---@return "ShaderProgram"
function ShaderProgramCollect:GetChildClass() end
---@return GraphicsRoot
function ShaderProgramCollect:Parent() end
---@param index integer
---@return ShaderProgram
function ShaderProgramCollect:Ptr(index) end
---@return ShaderProgram[]
function ShaderProgramCollect:Children() end
---@return ShaderProgram?
function ShaderProgramCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ShaderProgram
function ShaderProgramCollect:Get(name, role) end
---@overload fun(index: integer, class: "ShaderProgram", undo: Undo?): ShaderProgram
---@overload fun(index: integer, class: "ShaderProgram", undo: Undo?): ShaderProgram
---@overload fun(index: integer, class: nil, undo: Undo?): ShaderProgram
function ShaderProgramCollect:Create(index, class, undo) end
---@overload fun(class: "ShaderProgram", undo: Undo?, count: integer?): ShaderProgram
---@overload fun(class: "ShaderProgram", undo: Undo?, count: integer?): ShaderProgram
---@overload fun(class: nil, undo: Undo?, count: integer?): ShaderProgram
function ShaderProgramCollect:Append(class, undo, count) end
---@overload fun(class: "ShaderProgram", undo: Undo?): ShaderProgram
---@overload fun(class: "ShaderProgram", undo: Undo?): ShaderProgram
---@overload fun(class: nil, undo: Undo?): ShaderProgram
function ShaderProgramCollect:Acquire(class, undo) end
---@overload fun(class: "ShaderProgram", undo: Undo?): ShaderProgram
---@overload fun(class: "ShaderProgram", undo: Undo?): ShaderProgram
---@overload fun(class: nil, undo: Undo?): ShaderProgram
---@deprecated use "Acquire" instead
function ShaderProgramCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ShaderProgram", undo: Undo?, count: integer?): ShaderProgram
---@overload fun(index: integer, class: "ShaderProgram", undo: Undo?, count: integer?): ShaderProgram
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ShaderProgram
function ShaderProgramCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ShaderProgram"): ShaderProgram
---@overload fun(name: string, class: "ShaderProgram"): ShaderProgram
---@overload fun(name: string, class: nil): ShaderProgram
function ShaderProgramCollect:Find(name, class) end
---@overload fun(name: string, class: "ShaderProgram"): ShaderProgram
---@overload fun(name: string, class: "ShaderProgram"): ShaderProgram
---@overload fun(name: string, class: nil): Object
function ShaderProgramCollect:FindRecursive(name, class) end
