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
---@overload fun(index: integer, class: "SequenceSheetSettings", undo: Undo?): SequenceSheetSettings
---@overload fun(index: integer, class: "ContentSheetSettings", undo: Undo?): ContentSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SequenceSheetSettings", undo: Undo?, count: integer?): SequenceSheetSettings
---@overload fun(class: "ContentSheetSettings", undo: Undo?, count: integer?): ContentSheetSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SequenceSheetSettings", undo: Undo?): SequenceSheetSettings
---@overload fun(class: "ContentSheetSettings", undo: Undo?): ContentSheetSettings
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SequenceSheetSettings", undo: Undo?): SequenceSheetSettings
---@overload fun(class: "ContentSheetSettings", undo: Undo?): ContentSheetSettings
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
---@deprecated use "Acquire" instead
function SequenceSheetSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SequenceSheetSettings", undo: Undo?, count: integer?): SequenceSheetSettings
---@overload fun(index: integer, class: "ContentSheetSettings", undo: Undo?, count: integer?): ContentSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SequenceSheetSettings"): SequenceSheetSettings
---@overload fun(name: string, class: "ContentSheetSettings"): ContentSheetSettings
---@overload fun(name: string, class: nil): SequenceSheetSettings
function SequenceSheetSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SequenceSheetSettings"): SequenceSheetSettings
---@overload fun(name: string, class: "ContentSheetSettings"): ContentSheetSettings
---@overload fun(name: string, class: nil): Object
function SequenceSheetSettingsCollect:FindRecursive(name, class) end
