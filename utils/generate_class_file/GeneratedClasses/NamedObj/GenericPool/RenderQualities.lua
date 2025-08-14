---@meta

---@class RenderQualities: GenericPool
local RenderQualities = {}
---@return "RenderQualities"
function RenderQualities:GetClass() end
---@return "RenderQuality"
function RenderQualities:GetChildClass() end
---@return UserProfile
function RenderQualities:Parent() end
---@param index integer
---@return RenderQuality
function RenderQualities:Ptr(index) end
---@return RenderQuality[]
function RenderQualities:Children() end
---@return RenderQuality?
function RenderQualities:CurrentChild() end
---@overload fun(name: integer, role: nil): RenderQuality
function RenderQualities:Get(name, role) end
---@generic T : RenderQuality
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RenderQuality
function RenderQualities:Create(index, class, undo) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RenderQuality
function RenderQualities:Append(class, undo, count) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RenderQuality
function RenderQualities:Acquire(class, undo) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RenderQuality
---@deprecated use "Acquire" instead
function RenderQualities:Aquire(class, undo) end
---@generic T : RenderQuality
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RenderQuality
function RenderQualities:Insert(index, class, undo, count) end
---@generic T : RenderQuality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RenderQuality
function RenderQualities:Find(class, undo) end