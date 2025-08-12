---@meta

---@class Textures: GraphicsObject A texture atlas and a container for texture objects (of classes Texture or Backdrop) that are stored in this texture atlas
local Textures = {}
---@return "Textures"
function Textures:GetClass() end
---@return "Texture"
function Textures:GetChildClass() end
---@return TextureCollect
function Textures:Parent() end
---@param index integer
---@return Texture
function Textures:Ptr(index) end
---@return Texture[]
function Textures:Children() end
---@return Texture?
function Textures:CurrentChild() end
---@overload fun(name: integer, role: nil): Texture
function Textures:Get(name, role) end
---@overload fun(index: integer, class: "Texture", undo: Undo?): Texture
---@overload fun(index: integer, class: "Backdrop", undo: Undo?): Backdrop
---@overload fun(index: integer, class: "SecureTexture", undo: Undo?): SecureTexture
---@overload fun(index: integer, class: nil, undo: Undo?): Texture
function Textures:Create(index, class, undo) end
---@overload fun(class: "Texture", undo: Undo?, count: integer?): Texture
---@overload fun(class: "Backdrop", undo: Undo?, count: integer?): Backdrop
---@overload fun(class: "SecureTexture", undo: Undo?, count: integer?): SecureTexture
---@overload fun(class: nil, undo: Undo?, count: integer?): Texture
function Textures:Append(class, undo, count) end
---@overload fun(class: "Texture", undo: Undo?): Texture
---@overload fun(class: "Backdrop", undo: Undo?): Backdrop
---@overload fun(class: "SecureTexture", undo: Undo?): SecureTexture
---@overload fun(class: nil, undo: Undo?): Texture
function Textures:Acquire(class, undo) end
---@overload fun(class: "Texture", undo: Undo?): Texture
---@overload fun(class: "Backdrop", undo: Undo?): Backdrop
---@overload fun(class: "SecureTexture", undo: Undo?): SecureTexture
---@overload fun(class: nil, undo: Undo?): Texture
---@deprecated use "Acquire" instead
function Textures:Aquire(class, undo) end
---@overload fun(index: integer, class: "Texture", undo: Undo?, count: integer?): Texture
---@overload fun(index: integer, class: "Backdrop", undo: Undo?, count: integer?): Backdrop
---@overload fun(index: integer, class: "SecureTexture", undo: Undo?, count: integer?): SecureTexture
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Texture
function Textures:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Texture"): Texture
---@overload fun(name: string, class: "Backdrop"): Backdrop
---@overload fun(name: string, class: "SecureTexture"): SecureTexture
---@overload fun(name: string, class: nil): Texture
function Textures:Find(name, class) end
---@overload fun(name: string, class: "Texture"): Texture
---@overload fun(name: string, class: "Backdrop"): Backdrop
---@overload fun(name: string, class: "SecureTexture"): SecureTexture
---@overload fun(name: string, class: nil): Object
function Textures:FindRecursive(name, class) end
