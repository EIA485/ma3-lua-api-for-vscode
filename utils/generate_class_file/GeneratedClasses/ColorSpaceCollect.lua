---@meta

---@class ColorSpaceCollect: Object
local ColorSpaceCollect = {}
---@return "ColorSpaceCollect"
function ColorSpaceCollect:GetClass() end
---@return "ColorSpaceData"
function ColorSpaceCollect:GetChildClass() end
---@return PhysicalDescriptions
function ColorSpaceCollect:Parent() end
---@param index integer
---@return ColorSpaceData
function ColorSpaceCollect:Ptr(index) end
---@return ColorSpaceData[]
function ColorSpaceCollect:Children() end
---@return ColorSpaceData?
function ColorSpaceCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ColorSpaceData
function ColorSpaceCollect:Get(name, role) end
---@overload fun(index: integer, class: "ColorSpaceData", undo: Undo?): ColorSpaceData
---@overload fun(index: integer, class: nil, undo: Undo?): ColorSpaceData
function ColorSpaceCollect:Create(index, class, undo) end
---@overload fun(class: "ColorSpaceData", undo: Undo?, count: integer?): ColorSpaceData
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorSpaceData
function ColorSpaceCollect:Append(class, undo, count) end
---@overload fun(class: "ColorSpaceData", undo: Undo?): ColorSpaceData
---@overload fun(class: nil, undo: Undo?): ColorSpaceData
function ColorSpaceCollect:Acquire(class, undo) end
---@overload fun(class: "ColorSpaceData", undo: Undo?): ColorSpaceData
---@overload fun(class: nil, undo: Undo?): ColorSpaceData
---@deprecated use "Acquire" instead
function ColorSpaceCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ColorSpaceData", undo: Undo?, count: integer?): ColorSpaceData
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorSpaceData
function ColorSpaceCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ColorSpaceData"): ColorSpaceData
---@overload fun(name: string, class: nil): ColorSpaceData
function ColorSpaceCollect:Find(name, class) end
---@overload fun(name: string, class: "ColorSpaceData"): ColorSpaceData
---@overload fun(name: string, class: nil): Object
function ColorSpaceCollect:FindRecursive(name, class) end
