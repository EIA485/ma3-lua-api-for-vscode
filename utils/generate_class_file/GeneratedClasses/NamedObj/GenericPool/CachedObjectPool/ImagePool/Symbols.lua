---@meta

---@class Symbols: ImagePool
local Symbols = {}
---@return "Symbols"
function Symbols:GetClass() end
---@return "SymbolImage"
function Symbols:GetChildClass() end
---@param index integer
---@return SymbolImage
function Symbols:Ptr(index) end
---@return SymbolImage[]
function Symbols:Children() end
---@return SymbolImage?
function Symbols:CurrentChild() end
---@overload fun(name: integer, role: nil): SymbolImage
function Symbols:Get(name, role) end
---@overload fun(index: integer, class: "SymbolImage", undo: Undo?): SymbolImage
---@overload fun(index: integer, class: nil, undo: Undo?): SymbolImage
function Symbols:Create(index, class, undo) end
---@overload fun(class: "SymbolImage", undo: Undo?, count: integer?): SymbolImage
---@overload fun(class: nil, undo: Undo?, count: integer?): SymbolImage
function Symbols:Append(class, undo, count) end
---@overload fun(class: "SymbolImage", undo: Undo?): SymbolImage
---@overload fun(class: nil, undo: Undo?): SymbolImage
function Symbols:Acquire(class, undo) end
---@overload fun(class: "SymbolImage", undo: Undo?): SymbolImage
---@overload fun(class: nil, undo: Undo?): SymbolImage
---@deprecated use "Acquire" instead
function Symbols:Aquire(class, undo) end
---@overload fun(index: integer, class: "SymbolImage", undo: Undo?, count: integer?): SymbolImage
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SymbolImage
function Symbols:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SymbolImage"): SymbolImage
---@overload fun(name: string, class: nil): SymbolImage
function Symbols:Find(name, class) end
---@overload fun(name: string, class: "SymbolImage"): SymbolImage
---@overload fun(name: string, class: nil): Object
function Symbols:FindRecursive(name, class) end
