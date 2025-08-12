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
---@overload fun(index: integer, class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(index: integer, class: "Patterns", undo: Undo?): Patterns
---@overload fun(index: integer, class: "Bitmaps", undo: Undo?): Bitmaps
---@overload fun(index: integer, class: "Generators", undo: Undo?): Generators
---@overload fun(index: integer, class: "Tags", undo: Undo?): Tags
---@overload fun(index: integer, class: "Scribbles", undo: Undo?): Scribbles
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(index: integer, class: "MeshImagePool", undo: Undo?): MeshImagePool
---@overload fun(index: integer, class: "Images", undo: Undo?): Images
---@overload fun(index: integer, class: "Symbols", undo: Undo?): Symbols
---@overload fun(index: integer, class: "GoboImages", undo: Undo?): GoboImages
---@overload fun(index: integer, class: nil, undo: Undo?): GenericPool
function GeneratorTypes:Create(index, class, undo) end
---@overload fun(class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(class: "Patterns", undo: Undo?, count: integer?): Patterns
---@overload fun(class: "Bitmaps", undo: Undo?, count: integer?): Bitmaps
---@overload fun(class: "Generators", undo: Undo?, count: integer?): Generators
---@overload fun(class: "Tags", undo: Undo?, count: integer?): Tags
---@overload fun(class: "Scribbles", undo: Undo?, count: integer?): Scribbles
---@overload fun(class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(class: "MeshImagePool", undo: Undo?, count: integer?): MeshImagePool
---@overload fun(class: "Images", undo: Undo?, count: integer?): Images
---@overload fun(class: "Symbols", undo: Undo?, count: integer?): Symbols
---@overload fun(class: "GoboImages", undo: Undo?, count: integer?): GoboImages
---@overload fun(class: nil, undo: Undo?, count: integer?): GenericPool
function GeneratorTypes:Append(class, undo, count) end
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "Patterns", undo: Undo?): Patterns
---@overload fun(class: "Bitmaps", undo: Undo?): Bitmaps
---@overload fun(class: "Generators", undo: Undo?): Generators
---@overload fun(class: "Tags", undo: Undo?): Tags
---@overload fun(class: "Scribbles", undo: Undo?): Scribbles
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "MeshImagePool", undo: Undo?): MeshImagePool
---@overload fun(class: "Images", undo: Undo?): Images
---@overload fun(class: "Symbols", undo: Undo?): Symbols
---@overload fun(class: "GoboImages", undo: Undo?): GoboImages
---@overload fun(class: nil, undo: Undo?): GenericPool
function GeneratorTypes:Acquire(class, undo) end
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "Patterns", undo: Undo?): Patterns
---@overload fun(class: "Bitmaps", undo: Undo?): Bitmaps
---@overload fun(class: "Generators", undo: Undo?): Generators
---@overload fun(class: "Tags", undo: Undo?): Tags
---@overload fun(class: "Scribbles", undo: Undo?): Scribbles
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "MeshImagePool", undo: Undo?): MeshImagePool
---@overload fun(class: "Images", undo: Undo?): Images
---@overload fun(class: "Symbols", undo: Undo?): Symbols
---@overload fun(class: "GoboImages", undo: Undo?): GoboImages
---@overload fun(class: nil, undo: Undo?): GenericPool
---@deprecated use "Acquire" instead
function GeneratorTypes:Aquire(class, undo) end
---@overload fun(index: integer, class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(index: integer, class: "Patterns", undo: Undo?, count: integer?): Patterns
---@overload fun(index: integer, class: "Bitmaps", undo: Undo?, count: integer?): Bitmaps
---@overload fun(index: integer, class: "Generators", undo: Undo?, count: integer?): Generators
---@overload fun(index: integer, class: "Tags", undo: Undo?, count: integer?): Tags
---@overload fun(index: integer, class: "Scribbles", undo: Undo?, count: integer?): Scribbles
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(index: integer, class: "MeshImagePool", undo: Undo?, count: integer?): MeshImagePool
---@overload fun(index: integer, class: "Images", undo: Undo?, count: integer?): Images
---@overload fun(index: integer, class: "Symbols", undo: Undo?, count: integer?): Symbols
---@overload fun(index: integer, class: "GoboImages", undo: Undo?, count: integer?): GoboImages
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GenericPool
function GeneratorTypes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GenericPool"): GenericPool
---@overload fun(name: string, class: "Patterns"): Patterns
---@overload fun(name: string, class: "Bitmaps"): Bitmaps
---@overload fun(name: string, class: "Generators"): Generators
---@overload fun(name: string, class: "Tags"): Tags
---@overload fun(name: string, class: "Scribbles"): Scribbles
---@overload fun(name: string, class: "CachedObjectPool"): CachedObjectPool
---@overload fun(name: string, class: "ImagePool"): ImagePool
---@overload fun(name: string, class: "MeshImagePool"): MeshImagePool
---@overload fun(name: string, class: "Images"): Images
---@overload fun(name: string, class: "Symbols"): Symbols
---@overload fun(name: string, class: "GoboImages"): GoboImages
---@overload fun(name: string, class: nil): GenericPool
function GeneratorTypes:Find(name, class) end
---@overload fun(name: string, class: "GenericPool"): GenericPool
---@overload fun(name: string, class: "Patterns"): Patterns
---@overload fun(name: string, class: "Bitmaps"): Bitmaps
---@overload fun(name: string, class: "Generators"): Generators
---@overload fun(name: string, class: "Tags"): Tags
---@overload fun(name: string, class: "Scribbles"): Scribbles
---@overload fun(name: string, class: "CachedObjectPool"): CachedObjectPool
---@overload fun(name: string, class: "ImagePool"): ImagePool
---@overload fun(name: string, class: "MeshImagePool"): MeshImagePool
---@overload fun(name: string, class: "Images"): Images
---@overload fun(name: string, class: "Symbols"): Symbols
---@overload fun(name: string, class: "GoboImages"): GoboImages
---@overload fun(name: string, class: nil): Object
function GeneratorTypes:FindRecursive(name, class) end
