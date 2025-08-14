---@meta

---@class UserAttributePreferences: Object
---@field DualEncoderFactor integer
---@field DualEncoderPressFactor integer
---@field TimeLayerResolution integer
---@field PhaserLayerResolution integer
---@field LinkResolution integer
local UserAttributePreferences = {
    DualEncoderFactor="Div5",
    DualEncoderPressFactor="Div25",
    TimeLayerResolution="Coarse",
    PhaserLayerResolution="Coarse"
}
---@return "UserAttributePreferences"
function UserAttributePreferences:GetClass() end
---@return "UserAttribute"
function UserAttributePreferences:GetChildClass() end
---@return UserProfile
function UserAttributePreferences:Parent() end
---@param index integer
---@return UserAttribute
function UserAttributePreferences:Ptr(index) end
---@return UserAttribute[]
function UserAttributePreferences:Children() end
---@return UserAttribute?
function UserAttributePreferences:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DualEncoderFactor"|"DualEncoderPressFactor"|"TimeLayerResolution"|"PhaserLayerResolution"|"LinkResolution"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DualEncoderFactor"|"DualEncoderPressFactor"|"TimeLayerResolution"|"PhaserLayerResolution"|"LinkResolution"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UserAttribute
function UserAttributePreferences:Get(name, role) end
---@generic T : UserAttribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Create(index, class, undo) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserAttribute
function UserAttributePreferences:Append(class, undo, count) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Acquire(class, undo) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserAttribute
---@deprecated use "Acquire" instead
function UserAttributePreferences:Aquire(class, undo) end
---@generic T : UserAttribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserAttribute
function UserAttributePreferences:Insert(index, class, undo, count) end
---@generic T : UserAttribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Find(class, undo) end