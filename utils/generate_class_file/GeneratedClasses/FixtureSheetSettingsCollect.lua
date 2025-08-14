---@meta

---@class FixtureSheetSettingsCollect: Object
local FixtureSheetSettingsCollect = {}
---@return "FixtureSheetSettingsCollect"
function FixtureSheetSettingsCollect:GetClass() end
---@return "FixtureSheetSettings"
function FixtureSheetSettingsCollect:GetChildClass() end
---@param index integer
---@return FixtureSheetSettings
function FixtureSheetSettingsCollect:Ptr(index) end
---@return FixtureSheetSettings[]
function FixtureSheetSettingsCollect:Children() end
---@return FixtureSheetSettings?
function FixtureSheetSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureSheetSettings
function FixtureSheetSettingsCollect:Get(name, role) end
---@generic T : FixtureSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Create(index, class, undo) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Append(class, undo, count) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Acquire(class, undo) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
---@deprecated use "Acquire" instead
function FixtureSheetSettingsCollect:Aquire(class, undo) end
---@generic T : FixtureSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Insert(index, class, undo, count) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Find(class, undo) end