---@meta

---@class Fonts: Textures A texture atlas and a container for font objects (class Font) that are stored in this texture atlas
local Fonts = {}
---@return "Fonts"
function Fonts:GetClass() end
---@return "Font"
function Fonts:GetChildClass() end
---@param index integer
---@return Font
function Fonts:Ptr(index) end
---@return Font[]
function Fonts:Children() end
---@return Font?
function Fonts:CurrentChild() end
---@overload fun(name: integer, role: nil): Font
function Fonts:Get(name, role) end
---@overload fun(index: integer, class: "Font", undo: Undo?): Font
---@overload fun(index: integer, class: nil, undo: Undo?): Font
function Fonts:Create(index, class, undo) end
---@overload fun(class: "Font", undo: Undo?, count: integer?): Font
---@overload fun(class: nil, undo: Undo?, count: integer?): Font
function Fonts:Append(class, undo, count) end
---@overload fun(class: "Font", undo: Undo?): Font
---@overload fun(class: nil, undo: Undo?): Font
function Fonts:Acquire(class, undo) end
---@overload fun(class: "Font", undo: Undo?): Font
---@overload fun(class: nil, undo: Undo?): Font
---@deprecated use "Acquire" instead
function Fonts:Aquire(class, undo) end
---@overload fun(index: integer, class: "Font", undo: Undo?, count: integer?): Font
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Font
function Fonts:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Font"): Font
---@overload fun(name: string, class: nil): Font
function Fonts:Find(name, class) end
---@overload fun(name: string, class: "Font"): Font
---@overload fun(name: string, class: nil): Object
function Fonts:FindRecursive(name, class) end
