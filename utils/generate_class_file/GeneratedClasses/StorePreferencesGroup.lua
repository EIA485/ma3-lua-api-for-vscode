---@meta

---@class StorePreferencesGroup: Object
---@field MoveGridCursor1D GridCursorMovement
---@field MoveGridCursor2D3D GridCursorMovement
local StorePreferencesGroup = {}
---@return "StorePreferencesGroup"
function StorePreferencesGroup:GetClass() end
---@return "Object"
function StorePreferencesGroup:GetChildClass() end
---@return StorePreferences
function StorePreferencesGroup:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "MoveGridCursor1D"|"MoveGridCursor2D3D", role: nil): GridCursorMovement
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"MoveGridCursor1D"|"MoveGridCursor2D3D", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function StorePreferencesGroup:Get(name, role) end
