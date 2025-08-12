---@meta

---@class sACNDataCollect: Object
local sACNDataCollect = {}
---@return "sACNDataCollect"
function sACNDataCollect:GetClass() end
---@return "sACNData"
function sACNDataCollect:GetChildClass() end
---@return sACN
function sACNDataCollect:Parent() end
---@param index integer
---@return sACNData
function sACNDataCollect:Ptr(index) end
---@return sACNData[]
function sACNDataCollect:Children() end
---@return sACNData?
function sACNDataCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): sACNData
function sACNDataCollect:Get(name, role) end
---@overload fun(index: integer, class: "sACNData", undo: Undo?): sACNData
---@overload fun(index: integer, class: nil, undo: Undo?): sACNData
function sACNDataCollect:Create(index, class, undo) end
---@overload fun(class: "sACNData", undo: Undo?, count: integer?): sACNData
---@overload fun(class: nil, undo: Undo?, count: integer?): sACNData
function sACNDataCollect:Append(class, undo, count) end
---@overload fun(class: "sACNData", undo: Undo?): sACNData
---@overload fun(class: nil, undo: Undo?): sACNData
function sACNDataCollect:Acquire(class, undo) end
---@overload fun(class: "sACNData", undo: Undo?): sACNData
---@overload fun(class: nil, undo: Undo?): sACNData
---@deprecated use "Acquire" instead
function sACNDataCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "sACNData", undo: Undo?, count: integer?): sACNData
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): sACNData
function sACNDataCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "sACNData"): sACNData
---@overload fun(name: string, class: nil): sACNData
function sACNDataCollect:Find(name, class) end
---@overload fun(name: string, class: "sACNData"): sACNData
---@overload fun(name: string, class: nil): Object
function sACNDataCollect:FindRecursive(name, class) end
