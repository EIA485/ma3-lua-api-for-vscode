---@meta

---@class View: GuidObject
---@field ScreenContentDisplay1 integer
---@field ScreenContentDisplay2 integer
---@field ScreenContentDisplay3 integer
---@field ScreenContentDisplay4 integer
---@field ScreenContentDisplay5 integer
---@field ScreenContentDisplay6 integer
---@field ScreenContentDisplay7 integer
---@field ScreenContentMask integer
---@field RequestedW integer
---@field RequestedH integer
local View = {
    ScreenContentDisplay1="1",
    ScreenContentDisplay2="0",
    ScreenContentDisplay3="0",
    ScreenContentDisplay4="0",
    ScreenContentDisplay5="0",
    ScreenContentDisplay6="0",
    ScreenContentDisplay7="0",
    ScreenContentMask="0",
    RequestedW="0",
    RequestedH="0"
}
---@return "View"
function View:GetClass() end
---@return "ViewWidget"
function View:GetChildClass() end
---@return Views
function View:Parent() end
---@param index integer
---@return ViewWidget
function View:Ptr(index) end
---@return ViewWidget[]
function View:Children() end
---@return ViewWidget?
function View:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7"|"ScreenContentMask"|"RequestedW"|"RequestedH", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7"|"ScreenContentMask"|"RequestedW"|"RequestedH", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ViewWidget
function View:Get(name, role) end
---@overload fun(index: integer, class: "ViewWidget", undo: Undo?): ViewWidget
---@overload fun(index: integer, class: nil, undo: Undo?): ViewWidget
function View:Create(index, class, undo) end
---@overload fun(class: "ViewWidget", undo: Undo?, count: integer?): ViewWidget
---@overload fun(class: nil, undo: Undo?, count: integer?): ViewWidget
function View:Append(class, undo, count) end
---@overload fun(class: "ViewWidget", undo: Undo?): ViewWidget
---@overload fun(class: nil, undo: Undo?): ViewWidget
function View:Acquire(class, undo) end
---@overload fun(class: "ViewWidget", undo: Undo?): ViewWidget
---@overload fun(class: nil, undo: Undo?): ViewWidget
---@deprecated use "Acquire" instead
function View:Aquire(class, undo) end
---@overload fun(index: integer, class: "ViewWidget", undo: Undo?, count: integer?): ViewWidget
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ViewWidget
function View:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ViewWidget"): ViewWidget
---@overload fun(name: string, class: nil): ViewWidget
function View:Find(name, class) end
---@overload fun(name: string, class: "ViewWidget"): ViewWidget
---@overload fun(name: string, class: nil): Object
function View:FindRecursive(name, class) end
