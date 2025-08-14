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
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Settings", role: nil): PatchSettings
---@overload fun(name: "AllVisible"|"EmptyVisible"|"CustomEntry3Visible"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "AllFilterName"|"EmptyFilterName"|"CustomEntry3FilterName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Target"|"Settings"|"AllVisible"|"EmptyVisible"|"CustomEntry3Visible"|"AllFilterName"|"EmptyFilterName"|"CustomEntry3FilterName"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): PatchFilterItem
function PatchFilter:Get(name, role) end
---@generic T : PatchFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Create(index, class, undo) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PatchFilterItem
function PatchFilter:Append(class, undo, count) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Acquire(class, undo) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
---@deprecated use "Acquire" instead
function PatchFilter:Aquire(class, undo) end
---@generic T : PatchFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PatchFilterItem
function PatchFilter:Insert(index, class, undo, count) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Find(class, undo) end