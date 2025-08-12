---@meta

---@class PatchFilter: Object
---@field Target Object
---@field Settings PatchSettings
---@field AllVisible boolean
---@field EmptyVisible boolean
---@field CustomEntry3Visible boolean
---@field AllFilterName string
---@field EmptyFilterName string
---@field CustomEntry3FilterName string
local PatchFilter = {
    AllVisible="Yes",
    EmptyVisible="Yes",
    CustomEntry3Visible="No"
}
---@return "PatchFilter"
function PatchFilter:GetClass() end
---@return "PatchFilterItem"
function PatchFilter:GetChildClass() end
---@return Patch
function PatchFilter:Parent() end
---@param index integer
---@return PatchFilterItem
function PatchFilter:Ptr(index) end
---@return PatchFilterItem[]
function PatchFilter:Children() end
---@return PatchFilterItem?
function PatchFilter:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Settings", role: nil): PatchSettings
---@overload fun(name: "AllVisible"|"EmptyVisible"|"CustomEntry3Visible", role: nil): boolean
---@overload fun(name: "AllFilterName"|"EmptyFilterName"|"CustomEntry3FilterName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Target"|"Settings"|"AllVisible"|"EmptyVisible"|"CustomEntry3Visible"|"AllFilterName"|"EmptyFilterName"|"CustomEntry3FilterName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): PatchFilterItem
function PatchFilter:Get(name, role) end
---@overload fun(index: integer, class: "PatchFilterItem", undo: Undo?): PatchFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Create(index, class, undo) end
---@overload fun(class: "PatchFilterItem", undo: Undo?, count: integer?): PatchFilterItem
---@overload fun(class: nil, undo: Undo?, count: integer?): PatchFilterItem
function PatchFilter:Append(class, undo, count) end
---@overload fun(class: "PatchFilterItem", undo: Undo?): PatchFilterItem
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Acquire(class, undo) end
---@overload fun(class: "PatchFilterItem", undo: Undo?): PatchFilterItem
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
---@deprecated use "Acquire" instead
function PatchFilter:Aquire(class, undo) end
---@overload fun(index: integer, class: "PatchFilterItem", undo: Undo?, count: integer?): PatchFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PatchFilterItem
function PatchFilter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PatchFilterItem"): PatchFilterItem
---@overload fun(name: string, class: nil): PatchFilterItem
function PatchFilter:Find(name, class) end
---@overload fun(name: string, class: "PatchFilterItem"): PatchFilterItem
---@overload fun(name: string, class: nil): Object
function PatchFilter:FindRecursive(name, class) end
