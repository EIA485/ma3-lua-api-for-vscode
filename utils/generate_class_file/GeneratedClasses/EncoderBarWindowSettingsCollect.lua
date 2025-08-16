---@meta

---@class EncoderBarWindowSettingsCollect: Object
local EncoderBarWindowSettingsCollect = {}
---@return "EncoderBarWindowSettingsCollect"
function EncoderBarWindowSettingsCollect:GetClass() end
---@return "EncoderBarWindowSettings"
function EncoderBarWindowSettingsCollect:GetChildClass() end
---@generic T : EncoderBarWindowSettingsCollect
---@param class `T`
---@return boolean
function EncoderBarWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Ptr(index) end
---@return EncoderBarWindowSettings[]
function EncoderBarWindowSettingsCollect:Children() end
---@return EncoderBarWindowSettings?
function EncoderBarWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Get(name, role) end
---@generic T : EncoderBarWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Create(index, class, undo) end
---@generic T : EncoderBarWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Append(class, undo, count) end
---@generic T : EncoderBarWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Acquire(class, undo) end
---@generic T : EncoderBarWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBarWindowSettings
---@deprecated use "Acquire" instead
function EncoderBarWindowSettingsCollect:Aquire(class, undo) end
---@generic T : EncoderBarWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : EncoderBarWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBarWindowSettings
function EncoderBarWindowSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "ShowGrandMaster"|"ShowLayerToolbar"|"FadeEncoder"|"ShowScreenEncoder"|"ShowFunctionSelector"|"ShowStepButtons"|"ShowEncoderLabel"|"ShowEncoderPageSelector"|"ShowUserSettings"|"ShowTimeButtons"|"ShowToolPopups"|"ShowEncoderBank", property_value: YesNo|boolean)
function EncoderBarWindowSettingsCollect:SetChildren(property_name, property_value) end