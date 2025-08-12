---@meta

---@class RecipeEditor: Object
---@field CleanupRecipes fun(str: string) : boolean
---@field RecipeEditing integer
---@field NeedsRecipeCleanup boolean
---@field TargetRecipes Object[]
local RecipeEditor = {
    CleanupRecipes="in:(s;)"
}
---@return "RecipeEditor"
function RecipeEditor:GetClass() end
---@return "Object"
function RecipeEditor:GetChildClass() end
---@return UserEnvironment
function RecipeEditor:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "CleanupRecipes", role: nil): fun(str: string) : boolean
---@overload fun(name: "RecipeEditing", role: nil): integer
---@overload fun(name: "NeedsRecipeCleanup", role: nil): boolean
---@overload fun(name: "TargetRecipes", role: nil): Object[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"CleanupRecipes"|"RecipeEditing"|"NeedsRecipeCleanup"|"TargetRecipes", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RecipeEditor:Get(name, role) end
