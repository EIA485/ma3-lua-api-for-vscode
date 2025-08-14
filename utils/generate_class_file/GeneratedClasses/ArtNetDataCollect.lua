---@meta

---@class ArtNetDataCollect: Object
local ArtNetDataCollect = {}
---@return "ArtNetDataCollect"
function ArtNetDataCollect:GetClass() end
---@return "Art-Net-Data"
function ArtNetDataCollect:GetChildClass() end
---@return ArtNet
function ArtNetDataCollect:Parent() end
---@param index integer
---@return ArtNetData
function ArtNetDataCollect:Ptr(index) end
---@return ArtNetData[]
function ArtNetDataCollect:Children() end
---@return ArtNetData?
function ArtNetDataCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ArtNetData
function ArtNetDataCollect:Get(name, role) end
---@overload fun(index: integer, class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(index: integer, class: nil, undo: Undo?): ArtNetData
function ArtNetDataCollect:Create(index, class, undo) end
---@overload fun(class: "Art-Net-Data", undo: Undo?, count: integer?): ArtNetData
---@overload fun(class: nil, undo: Undo?, count: integer?): ArtNetData
function ArtNetDataCollect:Append(class, undo, count) end
---@overload fun(class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(class: nil, undo: Undo?): ArtNetData
function ArtNetDataCollect:Acquire(class, undo) end
---@overload fun(class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(class: nil, undo: Undo?): ArtNetData
---@deprecated use "Acquire" instead
function ArtNetDataCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Art-Net-Data", undo: Undo?, count: integer?): ArtNetData
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ArtNetData
function ArtNetDataCollect:Insert(index, class, undo, count) end
---@overload fun(class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(class: nil, undo: Undo?): ArtNetData
function ArtNetDataCollect:Find(class, undo) end