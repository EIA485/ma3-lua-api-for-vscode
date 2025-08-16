---@meta

---@class MVRFileCollect: Object
local MVRFileCollect = {}
---@return "MVRFileCollect"
function MVRFileCollect:GetClass() end
---@return "MVRFile"
function MVRFileCollect:GetChildClass() end
---@generic T : MVRFileCollect
---@param class `T`
---@return boolean
function MVRFileCollect:IsClass(class) end
---@return TempMVRExchange
function MVRFileCollect:Parent() end
---@param index integer
---@return MVRFile
function MVRFileCollect:Ptr(index) end
---@return MVRFile[]
function MVRFileCollect:Children() end
---@return MVRFile?
function MVRFileCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): MVRFile
function MVRFileCollect:Get(name, role) end
---@generic T : MVRFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MVRFile
function MVRFileCollect:Create(index, class, undo) end
---@generic T : MVRFile
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRFile
function MVRFileCollect:Append(class, undo, count) end
---@generic T : MVRFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRFile
function MVRFileCollect:Acquire(class, undo) end
---@generic T : MVRFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRFile
---@deprecated use "Acquire" instead
function MVRFileCollect:Aquire(class, undo) end
---@generic T : MVRFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRFile
function MVRFileCollect:Insert(index, class, undo, count) end
---@generic T : MVRFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRFile
function MVRFileCollect:Find(class, undo) end
---@overload fun(property_name: "UUID", property_value: MVR.UUID)
---@overload fun(property_name: "OnStations", property_value: string)
---@overload fun(property_name: "UUID", property_value: MVR.UUID)
---@overload fun(property_name: "VersionMajor"|"Size"|"VersionMinor", property_value: integer)
---@overload fun(property_name: "OnStations", property_value: string)
function MVRFileCollect:SetChildren(property_name, property_value) end