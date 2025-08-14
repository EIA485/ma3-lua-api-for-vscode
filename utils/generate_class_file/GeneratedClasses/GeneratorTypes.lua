---@meta

---@class GeneratorTypes: Object
local GeneratorTypes = {}
---@return "GeneratorTypes"
function GeneratorTypes:GetClass() end
---@return "GenericPool"
function GeneratorTypes:GetChildClass() end
---@return Pool
function GeneratorTypes:Parent() end
---@param index integer
---@return GenericPool
function GeneratorTypes:Ptr(index) end
---@return GenericPool[]
function GeneratorTypes:Children() end
---@return GenericPool?
function GeneratorTypes:CurrentChild() end
---@overload fun(name: integer, role: nil): GenericPool
function GeneratorTypes:Get(name, role) end
---@generic T : Patterns|Tags|Bitmaps|Images|GoboImages|Symbols|MeshImagePool|Generators|Scribbles
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(index: integer, class: nil, undo: Undo?): GenericPool
function GeneratorTypes:Create(index, class, undo) end
---@generic T : Patterns|Tags|Bitmaps|Images|GoboImages|Symbols|MeshImagePool|Generators|Scribbles
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(class: nil, undo: Undo?, count: integer?): GenericPool
function GeneratorTypes:Append(class, undo, count) end
---@generic T : Patterns|Tags|Bitmaps|Images|GoboImages|Symbols|MeshImagePool|Generators|Scribbles
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: nil, undo: Undo?): GenericPool
function GeneratorTypes:Acquire(class, undo) end
---@generic T : Patterns|Tags|Bitmaps|Images|GoboImages|Symbols|MeshImagePool|Generators|Scribbles
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: nil, undo: Undo?): GenericPool
---@deprecated use "Acquire" instead
function GeneratorTypes:Aquire(class, undo) end
---@generic T : Patterns|Tags|Bitmaps|Images|GoboImages|Symbols|MeshImagePool|Generators|Scribbles
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GenericPool
function GeneratorTypes:Insert(index, class, undo, count) end
---@generic T : Patterns|Tags|Bitmaps|Images|GoboImages|Symbols|MeshImagePool|Generators|Scribbles
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: nil, undo: Undo?): GenericPool
function GeneratorTypes:Find(class, undo) end