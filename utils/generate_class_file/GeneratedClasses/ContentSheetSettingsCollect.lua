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
---@overload fun(index: integer, class: "ContentSheetSettings", undo: Undo?): ContentSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?): ContentSheetSettings
function ContentSheetSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "ContentSheetSettings", undo: Undo?, count: integer?): ContentSheetSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): ContentSheetSettings
function ContentSheetSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "ContentSheetSettings", undo: Undo?): ContentSheetSettings
---@overload fun(class: nil, undo: Undo?): ContentSheetSettings
function ContentSheetSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "ContentSheetSettings", undo: Undo?): ContentSheetSettings
---@overload fun(class: nil, undo: Undo?): ContentSheetSettings
---@deprecated use "Acquire" instead
function ContentSheetSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ContentSheetSettings", undo: Undo?, count: integer?): ContentSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ContentSheetSettings
function ContentSheetSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ContentSheetSettings"): ContentSheetSettings
---@overload fun(name: string, class: nil): ContentSheetSettings
function ContentSheetSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "ContentSheetSettings"): ContentSheetSettings
---@overload fun(name: string, class: nil): Object
function ContentSheetSettingsCollect:FindRecursive(name, class) end
