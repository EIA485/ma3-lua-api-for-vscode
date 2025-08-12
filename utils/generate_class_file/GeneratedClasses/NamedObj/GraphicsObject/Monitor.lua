---@meta

---@class Monitor: GraphicsObject Represents a monitor device
---@field X integer
---@field Y integer
---@field Width integer
---@field Height integer
---@field Hz integer
---@field DPI integer
---@field PhysSizeMM TimeNone
local Monitor = {
    X="0",
    Y="0",
    Width="1024",
    Height="768",
    Hz="60"
}
---@return "Monitor"
function Monitor:GetClass() end
---@return "Resolution"
function Monitor:GetChildClass() end
---@return MonitorCollect
function Monitor:Parent() end
---@param index integer
---@return Resolution
function Monitor:Ptr(index) end
---@return Resolution[]
function Monitor:Children() end
---@return Resolution?
function Monitor:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"X"|"Y"|"Width"|"Height"|"Hz"|"DPI", role: nil): integer
---@overload fun(name: "PhysSizeMM", role: nil): TimeNone
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"Width"|"Height"|"Hz"|"DPI"|"PhysSizeMM", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Resolution
function Monitor:Get(name, role) end
---@overload fun(index: integer, class: "Resolution", undo: Undo?): Resolution
---@overload fun(index: integer, class: nil, undo: Undo?): Resolution
function Monitor:Create(index, class, undo) end
---@overload fun(class: "Resolution", undo: Undo?, count: integer?): Resolution
---@overload fun(class: nil, undo: Undo?, count: integer?): Resolution
function Monitor:Append(class, undo, count) end
---@overload fun(class: "Resolution", undo: Undo?): Resolution
---@overload fun(class: nil, undo: Undo?): Resolution
function Monitor:Acquire(class, undo) end
---@overload fun(class: "Resolution", undo: Undo?): Resolution
---@overload fun(class: nil, undo: Undo?): Resolution
---@deprecated use "Acquire" instead
function Monitor:Aquire(class, undo) end
---@overload fun(index: integer, class: "Resolution", undo: Undo?, count: integer?): Resolution
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Resolution
function Monitor:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Resolution"): Resolution
---@overload fun(name: string, class: nil): Resolution
function Monitor:Find(name, class) end
---@overload fun(name: string, class: "Resolution"): Resolution
---@overload fun(name: string, class: nil): Object
function Monitor:FindRecursive(name, class) end
