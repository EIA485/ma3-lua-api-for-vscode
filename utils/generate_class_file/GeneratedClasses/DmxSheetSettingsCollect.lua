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
---@generic T : DMXSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Create(index, class, undo) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXSheetSettings
function DmxSheetSettingsCollect:Append(class, undo, count) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Acquire(class, undo) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
---@deprecated use "Acquire" instead
function DmxSheetSettingsCollect:Aquire(class, undo) end
---@generic T : DMXSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXSheetSettings
function DmxSheetSettingsCollect:Insert(index, class, undo, count) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Find(class, undo) end