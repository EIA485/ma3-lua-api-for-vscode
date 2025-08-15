---@meta

---@class PultCollect: Object
local PultCollect = {}
---@return "PultCollect"
function PultCollect:GetClass() end
---@return "Pult"
function PultCollect:GetChildClass() end
---@generic T : PultCollect
---@param class `T`
---@return boolean
function PultCollect:IsClass(class) end
---@param index integer
---@return Pult
function PultCollect:Ptr(index) end
---@return Pult[]
function PultCollect:Children() end
---@return Pult?
function PultCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Pult
function PultCollect:Get(name, role) end
---@generic T : Pult
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Pult
function PultCollect:Create(index, class, undo) end
---@generic T : Pult
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Pult
function PultCollect:Append(class, undo, count) end
---@generic T : Pult
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pult
function PultCollect:Acquire(class, undo) end
---@generic T : Pult
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pult
---@deprecated use "Acquire" instead
function PultCollect:Aquire(class, undo) end
---@generic T : Pult
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Pult
function PultCollect:Insert(index, class, undo, count) end
---@generic T : Pult
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pult
function PultCollect:Find(class, undo) end
---@overload fun(property_name: "LinkMainCmdline", property_value: YesNo|boolean)
---@overload fun(property_name: "MainLoopCount", property_value: integer)
---@overload fun(property_name: "Cmd", property_value: Cmdline)
---@overload fun(property_name: "RunTest", property_value: fun(str: string) : boolean)
---@overload fun(property_name: "Cmd", property_value: Cmdline)
---@overload fun(property_name: "LinkMainCmdline", property_value: YesNo|boolean)
---@overload fun(property_name: "RunTest", property_value: fun(str: string) : boolean)
---@overload fun(property_name: "MainLoopCount", property_value: integer)
function PultCollect:RunTest(property_name, property_value) end