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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7"|"ScreenContentMask"|"RequestedW"|"RequestedH"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7"|"ScreenContentMask"|"RequestedW"|"RequestedH"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ViewWidget
function View:Get(name, role) end
---@generic T : ViewWidget
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ViewWidget
function View:Create(index, class, undo) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ViewWidget
function View:Append(class, undo, count) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewWidget
function View:Acquire(class, undo) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewWidget
---@deprecated use "Acquire" instead
function View:Aquire(class, undo) end
---@generic T : ViewWidget
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ViewWidget
function View:Insert(index, class, undo, count) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewWidget
function View:Find(class, undo) end