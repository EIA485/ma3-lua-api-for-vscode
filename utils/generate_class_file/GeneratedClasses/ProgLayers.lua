---@meta

---@class ProgLayers: Object
local ProgLayers = {}
---@return "ProgLayers"
function ProgLayers:GetClass() end
---@return "ProgLayer"
function ProgLayers:GetChildClass() end
---@param index integer
---@return ProgLayer
function ProgLayers:Ptr(index) end
---@return ProgLayer[]
function ProgLayers:Children() end
---@return ProgLayer?
function ProgLayers:CurrentChild() end
---@overload fun(name: integer, role: nil): ProgLayer
function ProgLayers:Get(name, role) end
---@overload fun(index: integer, class: "ProgLayer", undo: Undo?): ProgLayer
---@overload fun(index: integer, class: nil, undo: Undo?): ProgLayer
function ProgLayers:Create(index, class, undo) end
---@overload fun(class: "ProgLayer", undo: Undo?, count: integer?): ProgLayer
---@overload fun(class: nil, undo: Undo?, count: integer?): ProgLayer
function ProgLayers:Append(class, undo, count) end
---@overload fun(class: "ProgLayer", undo: Undo?): ProgLayer
---@overload fun(class: nil, undo: Undo?): ProgLayer
function ProgLayers:Acquire(class, undo) end
---@overload fun(class: "ProgLayer", undo: Undo?): ProgLayer
---@overload fun(class: nil, undo: Undo?): ProgLayer
---@deprecated use "Acquire" instead
function ProgLayers:Aquire(class, undo) end
---@overload fun(index: integer, class: "ProgLayer", undo: Undo?, count: integer?): ProgLayer
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ProgLayer
function ProgLayers:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ProgLayer"): ProgLayer
---@overload fun(name: string, class: nil): ProgLayer
function ProgLayers:Find(name, class) end
---@overload fun(name: string, class: "ProgLayer"): ProgLayer
---@overload fun(name: string, class: nil): Object
function ProgLayers:FindRecursive(name, class) end
