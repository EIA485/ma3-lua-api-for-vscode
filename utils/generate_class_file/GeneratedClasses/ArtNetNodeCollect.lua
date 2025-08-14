---@meta

---@class ArtNetNodeCollect: Object
local ArtNetNodeCollect = {}
---@return "ArtNetNodeCollect"
function ArtNetNodeCollect:GetClass() end
---@return "Art-Net-Node"
function ArtNetNodeCollect:GetChildClass() end
---@return ArtNet
function ArtNetNodeCollect:Parent() end
---@param index integer
---@return ArtNetNode
function ArtNetNodeCollect:Ptr(index) end
---@return ArtNetNode[]
function ArtNetNodeCollect:Children() end
---@return ArtNetNode?
function ArtNetNodeCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ArtNetNode
function ArtNetNodeCollect:Get(name, role) end
---@overload fun(index: integer, class: "Art-Net-Node", undo: Undo?): ArtNetNode
---@overload fun(index: integer, class: nil, undo: Undo?): ArtNetNode
function ArtNetNodeCollect:Create(index, class, undo) end
---@overload fun(class: "Art-Net-Node", undo: Undo?, count: integer?): ArtNetNode
---@overload fun(class: nil, undo: Undo?, count: integer?): ArtNetNode
function ArtNetNodeCollect:Append(class, undo, count) end
---@overload fun(class: "Art-Net-Node", undo: Undo?): ArtNetNode
---@overload fun(class: nil, undo: Undo?): ArtNetNode
function ArtNetNodeCollect:Acquire(class, undo) end
---@overload fun(class: "Art-Net-Node", undo: Undo?): ArtNetNode
---@overload fun(class: nil, undo: Undo?): ArtNetNode
---@deprecated use "Acquire" instead
function ArtNetNodeCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Art-Net-Node", undo: Undo?, count: integer?): ArtNetNode
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ArtNetNode
function ArtNetNodeCollect:Insert(index, class, undo, count) end
---@overload fun(class: "Art-Net-Node", undo: Undo?): ArtNetNode
---@overload fun(class: nil, undo: Undo?): ArtNetNode
function ArtNetNodeCollect:Find(class, undo) end