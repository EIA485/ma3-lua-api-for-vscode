---@meta

---@class MVRxchange: Object
---@field Enabled integer
---@field GroupName string
---@field Interface string
local MVRxchange = {
    Enabled="No",
    GroupName="Default"
}
---@return "MVRxchange"
function MVRxchange:GetClass() end
---@return "MVRLocalFile"
function MVRxchange:GetChildClass() end
---@param index integer
---@return MVRLocalFile
function MVRxchange:Ptr(index) end
---@return MVRLocalFile[]
function MVRxchange:Children() end
---@return MVRLocalFile?
function MVRxchange:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Enabled"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "GroupName"|"Interface"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Enabled"|"GroupName"|"Interface"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MVRLocalFile
function MVRxchange:Get(name, role) end
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(index: integer, class: nil, undo: Undo?): MVRLocalFile
function MVRxchange:Create(index, class, undo) end
---@overload fun(class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRLocalFile
function MVRxchange:Append(class, undo, count) end
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?): MVRLocalFile
function MVRxchange:Acquire(class, undo) end
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?): MVRLocalFile
---@deprecated use "Acquire" instead
function MVRxchange:Aquire(class, undo) end
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRLocalFile
function MVRxchange:Insert(index, class, undo, count) end
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?): MVRLocalFile
function MVRxchange:Find(class, undo) end