---@meta

---@class ContentSheetSettingsCollect: Object
local ContentSheetSettingsCollect = {}
---@return "ContentSheetSettingsCollect"
function ContentSheetSettingsCollect:GetClass() end
---@return "ContentSheetSettings"
function ContentSheetSettingsCollect:GetChildClass() end
---@param index integer
---@return ContentSheetSettings
function ContentSheetSettingsCollect:Ptr(index) end
---@return ContentSheetSettings[]
function ContentSheetSettingsCollect:Children() end
---@return ContentSheetSettings?
function ContentSheetSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ContentSheetSettings
function ContentSheetSettingsCollect:Get(name, role) end
---@generic T : ContentSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ContentSheetSettings
function ContentSheetSettingsCollect:Create(index, class, undo) end
---@generic T : ContentSheetSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ContentSheetSettings
function ContentSheetSettingsCollect:Append(class, undo, count) end
---@generic T : ContentSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ContentSheetSettings
function ContentSheetSettingsCollect:Acquire(class, undo) end
---@generic T : ContentSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ContentSheetSettings
---@deprecated use "Acquire" instead
function ContentSheetSettingsCollect:Aquire(class, undo) end
---@generic T : ContentSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ContentSheetSettings
function ContentSheetSettingsCollect:Insert(index, class, undo, count) end
---@generic T : ContentSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ContentSheetSettings
function ContentSheetSettingsCollect:Find(class, undo) end