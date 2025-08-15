---@meta

---@class ImportObjectCollect: Object
local ImportObjectCollect = {}
---@return "ImportObjectCollect"
function ImportObjectCollect:GetClass() end
---@return "ImportFakeObject"
function ImportObjectCollect:GetChildClass() end
---@generic T : ImportObjectCollect
---@param class `T`
---@return boolean
function ImportObjectCollect:IsClass(class) end
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
---@generic T : ImportFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ImportFakeObject
function ImportObjectCollect:Create(index, class, undo) end
---@generic T : ImportFakeObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ImportFakeObject
function ImportObjectCollect:Append(class, undo, count) end
---@generic T : ImportFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ImportFakeObject
function ImportObjectCollect:Acquire(class, undo) end
---@generic T : ImportFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ImportFakeObject
---@deprecated use "Acquire" instead
function ImportObjectCollect:Aquire(class, undo) end
---@generic T : ImportFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ImportFakeObject
function ImportObjectCollect:Insert(index, class, undo, count) end
---@generic T : ImportFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ImportFakeObject
function ImportObjectCollect:Find(class, undo) end
---@overload fun(property_name: "DestinationIndex", property_value: AutoInterface)
---@overload fun(property_name: "SourceIndex", property_value: integer)
---@overload fun(property_name: "DestinationIndex", property_value: AutoInterface)
---@overload fun(property_name: "SourceIndex", property_value: integer)
function ImportObjectCollect:SourceIndex(property_name, property_value) end