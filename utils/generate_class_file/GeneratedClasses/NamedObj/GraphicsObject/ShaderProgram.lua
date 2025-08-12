---@meta

---@class ShaderProgram: GraphicsObject A shader program that consists of shaders of different types
local ShaderProgram = {}
---@return "ShaderProgram"
function ShaderProgram:GetClass() end
---@return "Shader"
function ShaderProgram:GetChildClass() end
---@return ShaderProgramCollect
function ShaderProgram:Parent() end
---@param index integer
---@return Shader
function ShaderProgram:Ptr(index) end
---@return Shader[]
function ShaderProgram:Children() end
---@return Shader?
function ShaderProgram:CurrentChild() end
---@overload fun(name: integer, role: nil): Shader
function ShaderProgram:Get(name, role) end
---@overload fun(index: integer, class: "Shader", undo: Undo?): Shader
---@overload fun(index: integer, class: nil, undo: Undo?): Shader
function ShaderProgram:Create(index, class, undo) end
---@overload fun(class: "Shader", undo: Undo?, count: integer?): Shader
---@overload fun(class: nil, undo: Undo?, count: integer?): Shader
function ShaderProgram:Append(class, undo, count) end
---@overload fun(class: "Shader", undo: Undo?): Shader
---@overload fun(class: nil, undo: Undo?): Shader
function ShaderProgram:Acquire(class, undo) end
---@overload fun(class: "Shader", undo: Undo?): Shader
---@overload fun(class: nil, undo: Undo?): Shader
---@deprecated use "Acquire" instead
function ShaderProgram:Aquire(class, undo) end
---@overload fun(index: integer, class: "Shader", undo: Undo?, count: integer?): Shader
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Shader
function ShaderProgram:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Shader"): Shader
---@overload fun(name: string, class: nil): Shader
function ShaderProgram:Find(name, class) end
---@overload fun(name: string, class: "Shader"): Shader
---@overload fun(name: string, class: nil): Object
function ShaderProgram:FindRecursive(name, class) end
