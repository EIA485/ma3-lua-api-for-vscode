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
---@overload fun(index: integer, class: "FixtureSheetSettings", undo: Undo?): FixtureSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "FixtureSheetSettings", undo: Undo?, count: integer?): FixtureSheetSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "FixtureSheetSettings", undo: Undo?): FixtureSheetSettings
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "FixtureSheetSettings", undo: Undo?): FixtureSheetSettings
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
---@deprecated use "Acquire" instead
function FixtureSheetSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureSheetSettings", undo: Undo?, count: integer?): FixtureSheetSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureSheetSettings"): FixtureSheetSettings
---@overload fun(name: string, class: nil): FixtureSheetSettings
function FixtureSheetSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "FixtureSheetSettings"): FixtureSheetSettings
---@overload fun(name: string, class: nil): Object
function FixtureSheetSettingsCollect:FindRecursive(name, class) end
