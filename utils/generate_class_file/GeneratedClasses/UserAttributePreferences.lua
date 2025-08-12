---@meta

---@class UserAttributePreferences: Object
---@field DualEncoder
Factor integer
---@field DualEncoder
PressFactor integer
---@field TimeLayer
Resolution integer
---@field PhaserLayer
Resolution integer
---@field LinkResolution integer
local UserAttributePreferences = {
    ["DualEncoder
Factor"]="Div5",
    ["DualEncoder
PressFactor"]="Div25",
    ["TimeLayer
Resolution"]="Coarse",
    ["PhaserLayer
Resolution"]="Coarse"
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DualEncoder
Factor"|"DualEncoder
PressFactor"|"TimeLayer
Resolution"|"PhaserLayer
Resolution"|"LinkResolution", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DualEncoder
Factor"|"DualEncoder
PressFactor"|"TimeLayer
Resolution"|"PhaserLayer
Resolution"|"LinkResolution", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UserAttribute
function UserAttributePreferences:Get(name, role) end
---@overload fun(index: integer, class: "UserAttribute", undo: Undo?): UserAttribute
---@overload fun(index: integer, class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Create(index, class, undo) end
---@overload fun(class: "UserAttribute", undo: Undo?, count: integer?): UserAttribute
---@overload fun(class: nil, undo: Undo?, count: integer?): UserAttribute
function UserAttributePreferences:Append(class, undo, count) end
---@overload fun(class: "UserAttribute", undo: Undo?): UserAttribute
---@overload fun(class: nil, undo: Undo?): UserAttribute
function UserAttributePreferences:Acquire(class, undo) end
---@overload fun(class: "UserAttribute", undo: Undo?): UserAttribute
---@overload fun(class: nil, undo: Undo?): UserAttribute
---@deprecated use "Acquire" instead
function UserAttributePreferences:Aquire(class, undo) end
---@overload fun(index: integer, class: "UserAttribute", undo: Undo?, count: integer?): UserAttribute
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserAttribute
function UserAttributePreferences:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UserAttribute"): UserAttribute
---@overload fun(name: string, class: nil): UserAttribute
function UserAttributePreferences:Find(name, class) end
---@overload fun(name: string, class: "UserAttribute"): UserAttribute
---@overload fun(name: string, class: nil): Object
function UserAttributePreferences:FindRecursive(name, class) end
