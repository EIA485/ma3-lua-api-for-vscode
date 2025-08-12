---@meta

---@class MVRFileCollect: Object
local MVRFileCollect = {}
---@return "MVRFileCollect"
function MVRFileCollect:GetClass() end
---@return "MVRFile"
function MVRFileCollect:GetChildClass() end
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
---@overload fun(index: integer, class: "MVRFile", undo: Undo?): MVRFile
---@overload fun(index: integer, class: nil, undo: Undo?): MVRFile
function MVRFileCollect:Create(index, class, undo) end
---@overload fun(class: "MVRFile", undo: Undo?, count: integer?): MVRFile
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRFile
function MVRFileCollect:Append(class, undo, count) end
---@overload fun(class: "MVRFile", undo: Undo?): MVRFile
---@overload fun(class: nil, undo: Undo?): MVRFile
function MVRFileCollect:Acquire(class, undo) end
---@overload fun(class: "MVRFile", undo: Undo?): MVRFile
---@overload fun(class: nil, undo: Undo?): MVRFile
---@deprecated use "Acquire" instead
function MVRFileCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "MVRFile", undo: Undo?, count: integer?): MVRFile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRFile
function MVRFileCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MVRFile"): MVRFile
---@overload fun(name: string, class: nil): MVRFile
function MVRFileCollect:Find(name, class) end
---@overload fun(name: string, class: "MVRFile"): MVRFile
---@overload fun(name: string, class: nil): Object
function MVRFileCollect:FindRecursive(name, class) end
