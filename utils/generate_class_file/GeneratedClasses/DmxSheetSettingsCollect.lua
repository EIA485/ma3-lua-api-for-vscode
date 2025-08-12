---@meta

---@class DmxSheetSettingsCollect: Object
local DmxSheetSettingsCollect = {}
---@return "DmxSheetSettingsCollect"
function DmxSheetSettingsCollect:GetClass() end
---@return "DMXSheetSettings"
function DmxSheetSettingsCollect:GetChildClass() end
---@param index integer
---@return DMXSheetSettings
function DmxSheetSettingsCollect:Ptr(index) end
---@return DMXSheetSettings[]
function DmxSheetSettingsCollect:Children() end
---@return DMXSheetSettings?
function DmxSheetSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXSheetSettings
function DmxSheetSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "DMXSheetSettings", undo: Undo?): DMXSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "DMXSheetSettings", undo: Undo?, count: integer?): DMXSheetSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXSheetSettings
function DmxSheetSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "DMXSheetSettings", undo: Undo?): DMXSheetSettings
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "DMXSheetSettings", undo: Undo?): DMXSheetSettings
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
---@deprecated use "Acquire" instead
function DmxSheetSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "DMXSheetSettings", undo: Undo?, count: integer?): DMXSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXSheetSettings
function DmxSheetSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DMXSheetSettings"): DMXSheetSettings
---@overload fun(name: string, class: nil): DMXSheetSettings
function DmxSheetSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "DMXSheetSettings"): DMXSheetSettings
---@overload fun(name: string, class: nil): Object
function DmxSheetSettingsCollect:FindRecursive(name, class) end
