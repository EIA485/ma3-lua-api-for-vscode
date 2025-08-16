---@meta

---@class UIObjectFake: UIObject
local UIObjectFake = {}
---@return "UIObjectFake"
function UIObjectFake:GetClass() end
---@return "UIObjectFake"
function UIObjectFake:GetChildClass() end
---@generic T : UIObjectFake
---@param class `T`
---@return boolean
function UIObjectFake:IsClass(class) end
---@param index integer
---@return UIObjectFake
function UIObjectFake:Ptr(index) end
---@return UIObjectFake[]
function UIObjectFake:Children() end
---@return UIObjectFake?
function UIObjectFake:CurrentChild() end
---@overload fun(name: integer, role: nil): UIObjectFake
function UIObjectFake:Get(name, role) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
function UIObjectFake:Create(index, class, undo) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function UIObjectFake:Append(class, undo, count) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@return T
function UIObjectFake:Acquire(class, undo) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@return T
---@deprecated use "Acquire" instead
function UIObjectFake:Aquire(class, undo) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function UIObjectFake:Insert(index, class, undo, count) end
---@generic T : BaseItemButtons|UIGridInternals|AudioPreview
---@param class `T`
---@param undo Undo?
---@return T
function UIObjectFake:Find(class, undo) end
---@overload fun(property_name: "Seek", property_value: fun(str: string, num: number) : boolean)
---@overload fun(property_name: "TargetSound", property_value: Sound)
---@overload fun(property_name: "TargetPath", property_value: string)
---@overload fun(property_name: "IsPlaying", property_value: boolean)
---@overload fun(property_name: "TargetSound", property_value: Sound)
---@overload fun(property_name: "Position"|"Duration", property_value: TimePropertyValue)
---@overload fun(property_name: "IsPlaying", property_value: boolean)
---@overload fun(property_name: "Pause"|"Play"|"Stop", property_value: fun(str: string) : boolean)
---@overload fun(property_name: "Seek", property_value: fun(str: string, num: number) : boolean)
---@overload fun(property_name: "TargetPath", property_value: string)
function UIObjectFake:SetChildren(property_name, property_value) end