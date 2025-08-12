---@meta

---@class PresetPoolSettingsCollect: Object
local PresetPoolSettingsCollect = {}
---@return "PresetPoolSettingsCollect"
function PresetPoolSettingsCollect:GetClass() end
---@return "PresetPoolSettings"
function PresetPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetPoolSettings
function PresetPoolSettingsCollect:Ptr(index) end
---@return PresetPoolSettings[]
function PresetPoolSettingsCollect:Children() end
---@return PresetPoolSettings?
function PresetPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetPoolSettings
function PresetPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetPoolSettings", undo: Undo?): PresetPoolSettings
---@overload fun(index: integer, class: "PresetVideoPoolSettings", undo: Undo?): PresetVideoPoolSettings
---@overload fun(index: integer, class: "PresetShapersPoolSettings", undo: Undo?): PresetShapersPoolSettings
---@overload fun(index: integer, class: "PresetControlPoolSettings", undo: Undo?): PresetControlPoolSettings
---@overload fun(index: integer, class: "PresetFocusPoolSettings", undo: Undo?): PresetFocusPoolSettings
---@overload fun(index: integer, class: "PresetBeamPoolSettings", undo: Undo?): PresetBeamPoolSettings
---@overload fun(index: integer, class: "PresetColorPoolSettings", undo: Undo?): PresetColorPoolSettings
---@overload fun(index: integer, class: "PresetGoboPoolSettings", undo: Undo?): PresetGoboPoolSettings
---@overload fun(index: integer, class: "PresetPositionPoolSettings", undo: Undo?): PresetPositionPoolSettings
---@overload fun(index: integer, class: "PresetDimmerPoolSettings", undo: Undo?): PresetDimmerPoolSettings
---@overload fun(index: integer, class: "PresetAllPoolSettings", undo: Undo?): PresetAllPoolSettings
---@overload fun(index: integer, class: "PresetDynamicPoolSettings", undo: Undo?): PresetDynamicPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetPoolSettings
function PresetPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetPoolSettings", undo: Undo?, count: integer?): PresetPoolSettings
---@overload fun(class: "PresetVideoPoolSettings", undo: Undo?, count: integer?): PresetVideoPoolSettings
---@overload fun(class: "PresetShapersPoolSettings", undo: Undo?, count: integer?): PresetShapersPoolSettings
---@overload fun(class: "PresetControlPoolSettings", undo: Undo?, count: integer?): PresetControlPoolSettings
---@overload fun(class: "PresetFocusPoolSettings", undo: Undo?, count: integer?): PresetFocusPoolSettings
---@overload fun(class: "PresetBeamPoolSettings", undo: Undo?, count: integer?): PresetBeamPoolSettings
---@overload fun(class: "PresetColorPoolSettings", undo: Undo?, count: integer?): PresetColorPoolSettings
---@overload fun(class: "PresetGoboPoolSettings", undo: Undo?, count: integer?): PresetGoboPoolSettings
---@overload fun(class: "PresetPositionPoolSettings", undo: Undo?, count: integer?): PresetPositionPoolSettings
---@overload fun(class: "PresetDimmerPoolSettings", undo: Undo?, count: integer?): PresetDimmerPoolSettings
---@overload fun(class: "PresetAllPoolSettings", undo: Undo?, count: integer?): PresetAllPoolSettings
---@overload fun(class: "PresetDynamicPoolSettings", undo: Undo?, count: integer?): PresetDynamicPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetPoolSettings
function PresetPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetPoolSettings", undo: Undo?): PresetPoolSettings
---@overload fun(class: "PresetVideoPoolSettings", undo: Undo?): PresetVideoPoolSettings
---@overload fun(class: "PresetShapersPoolSettings", undo: Undo?): PresetShapersPoolSettings
---@overload fun(class: "PresetControlPoolSettings", undo: Undo?): PresetControlPoolSettings
---@overload fun(class: "PresetFocusPoolSettings", undo: Undo?): PresetFocusPoolSettings
---@overload fun(class: "PresetBeamPoolSettings", undo: Undo?): PresetBeamPoolSettings
---@overload fun(class: "PresetColorPoolSettings", undo: Undo?): PresetColorPoolSettings
---@overload fun(class: "PresetGoboPoolSettings", undo: Undo?): PresetGoboPoolSettings
---@overload fun(class: "PresetPositionPoolSettings", undo: Undo?): PresetPositionPoolSettings
---@overload fun(class: "PresetDimmerPoolSettings", undo: Undo?): PresetDimmerPoolSettings
---@overload fun(class: "PresetAllPoolSettings", undo: Undo?): PresetAllPoolSettings
---@overload fun(class: "PresetDynamicPoolSettings", undo: Undo?): PresetDynamicPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetPoolSettings
function PresetPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetPoolSettings", undo: Undo?): PresetPoolSettings
---@overload fun(class: "PresetVideoPoolSettings", undo: Undo?): PresetVideoPoolSettings
---@overload fun(class: "PresetShapersPoolSettings", undo: Undo?): PresetShapersPoolSettings
---@overload fun(class: "PresetControlPoolSettings", undo: Undo?): PresetControlPoolSettings
---@overload fun(class: "PresetFocusPoolSettings", undo: Undo?): PresetFocusPoolSettings
---@overload fun(class: "PresetBeamPoolSettings", undo: Undo?): PresetBeamPoolSettings
---@overload fun(class: "PresetColorPoolSettings", undo: Undo?): PresetColorPoolSettings
---@overload fun(class: "PresetGoboPoolSettings", undo: Undo?): PresetGoboPoolSettings
---@overload fun(class: "PresetPositionPoolSettings", undo: Undo?): PresetPositionPoolSettings
---@overload fun(class: "PresetDimmerPoolSettings", undo: Undo?): PresetDimmerPoolSettings
---@overload fun(class: "PresetAllPoolSettings", undo: Undo?): PresetAllPoolSettings
---@overload fun(class: "PresetDynamicPoolSettings", undo: Undo?): PresetDynamicPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetPoolSettings
---@deprecated use "Acquire" instead
function PresetPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetPoolSettings", undo: Undo?, count: integer?): PresetPoolSettings
---@overload fun(index: integer, class: "PresetVideoPoolSettings", undo: Undo?, count: integer?): PresetVideoPoolSettings
---@overload fun(index: integer, class: "PresetShapersPoolSettings", undo: Undo?, count: integer?): PresetShapersPoolSettings
---@overload fun(index: integer, class: "PresetControlPoolSettings", undo: Undo?, count: integer?): PresetControlPoolSettings
---@overload fun(index: integer, class: "PresetFocusPoolSettings", undo: Undo?, count: integer?): PresetFocusPoolSettings
---@overload fun(index: integer, class: "PresetBeamPoolSettings", undo: Undo?, count: integer?): PresetBeamPoolSettings
---@overload fun(index: integer, class: "PresetColorPoolSettings", undo: Undo?, count: integer?): PresetColorPoolSettings
---@overload fun(index: integer, class: "PresetGoboPoolSettings", undo: Undo?, count: integer?): PresetGoboPoolSettings
---@overload fun(index: integer, class: "PresetPositionPoolSettings", undo: Undo?, count: integer?): PresetPositionPoolSettings
---@overload fun(index: integer, class: "PresetDimmerPoolSettings", undo: Undo?, count: integer?): PresetDimmerPoolSettings
---@overload fun(index: integer, class: "PresetAllPoolSettings", undo: Undo?, count: integer?): PresetAllPoolSettings
---@overload fun(index: integer, class: "PresetDynamicPoolSettings", undo: Undo?, count: integer?): PresetDynamicPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetPoolSettings
function PresetPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetPoolSettings"): PresetPoolSettings
---@overload fun(name: string, class: "PresetVideoPoolSettings"): PresetVideoPoolSettings
---@overload fun(name: string, class: "PresetShapersPoolSettings"): PresetShapersPoolSettings
---@overload fun(name: string, class: "PresetControlPoolSettings"): PresetControlPoolSettings
---@overload fun(name: string, class: "PresetFocusPoolSettings"): PresetFocusPoolSettings
---@overload fun(name: string, class: "PresetBeamPoolSettings"): PresetBeamPoolSettings
---@overload fun(name: string, class: "PresetColorPoolSettings"): PresetColorPoolSettings
---@overload fun(name: string, class: "PresetGoboPoolSettings"): PresetGoboPoolSettings
---@overload fun(name: string, class: "PresetPositionPoolSettings"): PresetPositionPoolSettings
---@overload fun(name: string, class: "PresetDimmerPoolSettings"): PresetDimmerPoolSettings
---@overload fun(name: string, class: "PresetAllPoolSettings"): PresetAllPoolSettings
---@overload fun(name: string, class: "PresetDynamicPoolSettings"): PresetDynamicPoolSettings
---@overload fun(name: string, class: nil): PresetPoolSettings
function PresetPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetPoolSettings"): PresetPoolSettings
---@overload fun(name: string, class: "PresetVideoPoolSettings"): PresetVideoPoolSettings
---@overload fun(name: string, class: "PresetShapersPoolSettings"): PresetShapersPoolSettings
---@overload fun(name: string, class: "PresetControlPoolSettings"): PresetControlPoolSettings
---@overload fun(name: string, class: "PresetFocusPoolSettings"): PresetFocusPoolSettings
---@overload fun(name: string, class: "PresetBeamPoolSettings"): PresetBeamPoolSettings
---@overload fun(name: string, class: "PresetColorPoolSettings"): PresetColorPoolSettings
---@overload fun(name: string, class: "PresetGoboPoolSettings"): PresetGoboPoolSettings
---@overload fun(name: string, class: "PresetPositionPoolSettings"): PresetPositionPoolSettings
---@overload fun(name: string, class: "PresetDimmerPoolSettings"): PresetDimmerPoolSettings
---@overload fun(name: string, class: "PresetAllPoolSettings"): PresetAllPoolSettings
---@overload fun(name: string, class: "PresetDynamicPoolSettings"): PresetDynamicPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetPoolSettingsCollect:FindRecursive(name, class) end
