---@meta

---@class GridColumnFilterCollect: Object
---@field SelectedFilter string
local GridColumnFilterCollect = {}
---@return "GridColumnFilterCollect"
function GridColumnFilterCollect:GetClass() end
---@return "GridColumnFilter"
function GridColumnFilterCollect:GetChildClass() end
---@param index integer
---@return GridColumnFilter
function GridColumnFilterCollect:Ptr(index) end
---@return GridColumnFilter[]
function GridColumnFilterCollect:Children() end
---@return GridColumnFilter?
function GridColumnFilterCollect:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SelectedFilter", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SelectedFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GridColumnFilter
function GridColumnFilterCollect:Get(name, role) end
---@overload fun(index: integer, class: "GridColumnFilter", undo: Undo?): GridColumnFilter
---@overload fun(index: integer, class: "FixtureSheetColumnAttributeFilter", undo: Undo?): FixtureSheetColumnAttributeFilter
---@overload fun(index: integer, class: "GridColumnBitFilter", undo: Undo?): GridColumnBitFilter
---@overload fun(index: integer, class: "TimecodeGridColumnFilter", undo: Undo?): TimecodeGridColumnFilter
---@overload fun(index: integer, class: "RecipeSheetFilter", undo: Undo?): RecipeSheetFilter
---@overload fun(index: integer, class: "PresetSheetFilter", undo: Undo?): PresetSheetFilter
---@overload fun(index: integer, class: "SequenceSheetColumnFilter", undo: Undo?): SequenceSheetColumnFilter
---@overload fun(index: integer, class: "ContentSheetColumnFilter", undo: Undo?): ContentSheetColumnFilter
---@overload fun(index: integer, class: "GridColumnNamesFilter", undo: Undo?): GridColumnNamesFilter
---@overload fun(index: integer, class: nil, undo: Undo?): GridColumnFilter
function GridColumnFilterCollect:Create(index, class, undo) end
---@overload fun(class: "GridColumnFilter", undo: Undo?, count: integer?): GridColumnFilter
---@overload fun(class: "FixtureSheetColumnAttributeFilter", undo: Undo?, count: integer?): FixtureSheetColumnAttributeFilter
---@overload fun(class: "GridColumnBitFilter", undo: Undo?, count: integer?): GridColumnBitFilter
---@overload fun(class: "TimecodeGridColumnFilter", undo: Undo?, count: integer?): TimecodeGridColumnFilter
---@overload fun(class: "RecipeSheetFilter", undo: Undo?, count: integer?): RecipeSheetFilter
---@overload fun(class: "PresetSheetFilter", undo: Undo?, count: integer?): PresetSheetFilter
---@overload fun(class: "SequenceSheetColumnFilter", undo: Undo?, count: integer?): SequenceSheetColumnFilter
---@overload fun(class: "ContentSheetColumnFilter", undo: Undo?, count: integer?): ContentSheetColumnFilter
---@overload fun(class: "GridColumnNamesFilter", undo: Undo?, count: integer?): GridColumnNamesFilter
---@overload fun(class: nil, undo: Undo?, count: integer?): GridColumnFilter
function GridColumnFilterCollect:Append(class, undo, count) end
---@overload fun(class: "GridColumnFilter", undo: Undo?): GridColumnFilter
---@overload fun(class: "FixtureSheetColumnAttributeFilter", undo: Undo?): FixtureSheetColumnAttributeFilter
---@overload fun(class: "GridColumnBitFilter", undo: Undo?): GridColumnBitFilter
---@overload fun(class: "TimecodeGridColumnFilter", undo: Undo?): TimecodeGridColumnFilter
---@overload fun(class: "RecipeSheetFilter", undo: Undo?): RecipeSheetFilter
---@overload fun(class: "PresetSheetFilter", undo: Undo?): PresetSheetFilter
---@overload fun(class: "SequenceSheetColumnFilter", undo: Undo?): SequenceSheetColumnFilter
---@overload fun(class: "ContentSheetColumnFilter", undo: Undo?): ContentSheetColumnFilter
---@overload fun(class: "GridColumnNamesFilter", undo: Undo?): GridColumnNamesFilter
---@overload fun(class: nil, undo: Undo?): GridColumnFilter
function GridColumnFilterCollect:Acquire(class, undo) end
---@overload fun(class: "GridColumnFilter", undo: Undo?): GridColumnFilter
---@overload fun(class: "FixtureSheetColumnAttributeFilter", undo: Undo?): FixtureSheetColumnAttributeFilter
---@overload fun(class: "GridColumnBitFilter", undo: Undo?): GridColumnBitFilter
---@overload fun(class: "TimecodeGridColumnFilter", undo: Undo?): TimecodeGridColumnFilter
---@overload fun(class: "RecipeSheetFilter", undo: Undo?): RecipeSheetFilter
---@overload fun(class: "PresetSheetFilter", undo: Undo?): PresetSheetFilter
---@overload fun(class: "SequenceSheetColumnFilter", undo: Undo?): SequenceSheetColumnFilter
---@overload fun(class: "ContentSheetColumnFilter", undo: Undo?): ContentSheetColumnFilter
---@overload fun(class: "GridColumnNamesFilter", undo: Undo?): GridColumnNamesFilter
---@overload fun(class: nil, undo: Undo?): GridColumnFilter
---@deprecated use "Acquire" instead
function GridColumnFilterCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridColumnFilter", undo: Undo?, count: integer?): GridColumnFilter
---@overload fun(index: integer, class: "FixtureSheetColumnAttributeFilter", undo: Undo?, count: integer?): FixtureSheetColumnAttributeFilter
---@overload fun(index: integer, class: "GridColumnBitFilter", undo: Undo?, count: integer?): GridColumnBitFilter
---@overload fun(index: integer, class: "TimecodeGridColumnFilter", undo: Undo?, count: integer?): TimecodeGridColumnFilter
---@overload fun(index: integer, class: "RecipeSheetFilter", undo: Undo?, count: integer?): RecipeSheetFilter
---@overload fun(index: integer, class: "PresetSheetFilter", undo: Undo?, count: integer?): PresetSheetFilter
---@overload fun(index: integer, class: "SequenceSheetColumnFilter", undo: Undo?, count: integer?): SequenceSheetColumnFilter
---@overload fun(index: integer, class: "ContentSheetColumnFilter", undo: Undo?, count: integer?): ContentSheetColumnFilter
---@overload fun(index: integer, class: "GridColumnNamesFilter", undo: Undo?, count: integer?): GridColumnNamesFilter
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridColumnFilter
function GridColumnFilterCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GridColumnFilter"): GridColumnFilter
---@overload fun(name: string, class: "FixtureSheetColumnAttributeFilter"): FixtureSheetColumnAttributeFilter
---@overload fun(name: string, class: "GridColumnBitFilter"): GridColumnBitFilter
---@overload fun(name: string, class: "TimecodeGridColumnFilter"): TimecodeGridColumnFilter
---@overload fun(name: string, class: "RecipeSheetFilter"): RecipeSheetFilter
---@overload fun(name: string, class: "PresetSheetFilter"): PresetSheetFilter
---@overload fun(name: string, class: "SequenceSheetColumnFilter"): SequenceSheetColumnFilter
---@overload fun(name: string, class: "ContentSheetColumnFilter"): ContentSheetColumnFilter
---@overload fun(name: string, class: "GridColumnNamesFilter"): GridColumnNamesFilter
---@overload fun(name: string, class: nil): GridColumnFilter
function GridColumnFilterCollect:Find(name, class) end
---@overload fun(name: string, class: "GridColumnFilter"): GridColumnFilter
---@overload fun(name: string, class: "FixtureSheetColumnAttributeFilter"): FixtureSheetColumnAttributeFilter
---@overload fun(name: string, class: "GridColumnBitFilter"): GridColumnBitFilter
---@overload fun(name: string, class: "TimecodeGridColumnFilter"): TimecodeGridColumnFilter
---@overload fun(name: string, class: "RecipeSheetFilter"): RecipeSheetFilter
---@overload fun(name: string, class: "PresetSheetFilter"): PresetSheetFilter
---@overload fun(name: string, class: "SequenceSheetColumnFilter"): SequenceSheetColumnFilter
---@overload fun(name: string, class: "ContentSheetColumnFilter"): ContentSheetColumnFilter
---@overload fun(name: string, class: "GridColumnNamesFilter"): GridColumnNamesFilter
---@overload fun(name: string, class: nil): Object
function GridColumnFilterCollect:FindRecursive(name, class) end
