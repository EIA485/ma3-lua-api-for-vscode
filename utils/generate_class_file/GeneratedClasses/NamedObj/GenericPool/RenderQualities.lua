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
---@overload fun(index: integer, class: "RenderQuality", undo: Undo?): RenderQuality
---@overload fun(index: integer, class: nil, undo: Undo?): RenderQuality
function RenderQualities:Create(index, class, undo) end
---@overload fun(class: "RenderQuality", undo: Undo?, count: integer?): RenderQuality
---@overload fun(class: nil, undo: Undo?, count: integer?): RenderQuality
function RenderQualities:Append(class, undo, count) end
---@overload fun(class: "RenderQuality", undo: Undo?): RenderQuality
---@overload fun(class: nil, undo: Undo?): RenderQuality
function RenderQualities:Acquire(class, undo) end
---@overload fun(class: "RenderQuality", undo: Undo?): RenderQuality
---@overload fun(class: nil, undo: Undo?): RenderQuality
---@deprecated use "Acquire" instead
function RenderQualities:Aquire(class, undo) end
---@overload fun(index: integer, class: "RenderQuality", undo: Undo?, count: integer?): RenderQuality
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RenderQuality
function RenderQualities:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RenderQuality"): RenderQuality
---@overload fun(name: string, class: nil): RenderQuality
function RenderQualities:Find(name, class) end
---@overload fun(name: string, class: "RenderQuality"): RenderQuality
---@overload fun(name: string, class: nil): Object
function RenderQualities:FindRecursive(name, class) end
