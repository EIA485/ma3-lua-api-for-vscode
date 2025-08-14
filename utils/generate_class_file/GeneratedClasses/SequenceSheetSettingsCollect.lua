---@meta

---@class SequenceSheetSettingsCollect: Object
local SequenceSheetSettingsCollect = {}
---@return "SequenceSheetSettingsCollect"
function SequenceSheetSettingsCollect:GetClass() end
---@return "SequenceSheetSettings"
function SequenceSheetSettingsCollect:GetChildClass() end
---@param index integer
---@return SequenceSheetSettings
function SequenceSheetSettingsCollect:Ptr(index) end
---@return SequenceSheetSettings[]
function SequenceSheetSettingsCollect:Children() end
---@return SequenceSheetSettings?
function SequenceSheetSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SequenceSheetSettings
function SequenceSheetSettingsCollect:Get(name, role) end
---@generic T : SequenceSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Create(index, class, undo) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Append(class, undo, count) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Acquire(class, undo) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
---@deprecated use "Acquire" instead
function SequenceSheetSettingsCollect:Aquire(class, undo) end
---@generic T : SequenceSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Find(class, undo) end