---@meta

---@class ImportObjectCollect: Object
local ImportObjectCollect = {}
---@return "ImportObjectCollect"
function ImportObjectCollect:GetClass() end
---@return "ImportFakeObject"
function ImportObjectCollect:GetChildClass() end
---@return ConvertTask
function ImportObjectCollect:Parent() end
---@param index integer
---@return ImportFakeObject
function ImportObjectCollect:Ptr(index) end
---@return ImportFakeObject[]
function ImportObjectCollect:Children() end
---@return ImportFakeObject?
function ImportObjectCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ImportFakeObject
function ImportObjectCollect:Get(name, role) end
---@overload fun(index: integer, class: "ImportFakeObject", undo: Undo?): ImportFakeObject
---@overload fun(index: integer, class: nil, undo: Undo?): ImportFakeObject
function ImportObjectCollect:Create(index, class, undo) end
---@overload fun(class: "ImportFakeObject", undo: Undo?, count: integer?): ImportFakeObject
---@overload fun(class: nil, undo: Undo?, count: integer?): ImportFakeObject
function ImportObjectCollect:Append(class, undo, count) end
---@overload fun(class: "ImportFakeObject", undo: Undo?): ImportFakeObject
---@overload fun(class: nil, undo: Undo?): ImportFakeObject
function ImportObjectCollect:Acquire(class, undo) end
---@overload fun(class: "ImportFakeObject", undo: Undo?): ImportFakeObject
---@overload fun(class: nil, undo: Undo?): ImportFakeObject
---@deprecated use "Acquire" instead
function ImportObjectCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ImportFakeObject", undo: Undo?, count: integer?): ImportFakeObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ImportFakeObject
function ImportObjectCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ImportFakeObject"): ImportFakeObject
---@overload fun(name: string, class: nil): ImportFakeObject
function ImportObjectCollect:Find(name, class) end
---@overload fun(name: string, class: "ImportFakeObject"): ImportFakeObject
---@overload fun(name: string, class: nil): Object
function ImportObjectCollect:FindRecursive(name, class) end
