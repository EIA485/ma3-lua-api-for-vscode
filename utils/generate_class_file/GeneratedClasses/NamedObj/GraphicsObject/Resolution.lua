---@meta

---@class Resolution: GraphicsObject Describes resolution of a monitor
---@field Width integer
---@field Height integer
---@field Hz integer
local Resolution = {
    Width="0",
    Height="0",
    Hz="0"
}
---@return "Resolution"
function Resolution:GetClass() end
---@return "UIObject"
function Resolution:GetChildClass() end
---@return Monitor
function Resolution:Parent() end
---@param index integer
---@return UIObject
function Resolution:Ptr(index) end
---@return UIObject[]
function Resolution:Children() end
---@return UIObject?
function Resolution:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Width"|"Height"|"Hz", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Width"|"Height"|"Hz", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function Resolution:Get(name, role) end
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
function Resolution:Create(index, class, undo) end
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
function Resolution:Append(class, undo, count) end
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
function Resolution:Acquire(class, undo) end
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@deprecated use "Acquire" instead
function Resolution:Aquire(class, undo) end
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
function Resolution:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
function Resolution:Find(name, class) end
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
---@overload fun(name: string, class: nil): Object
function Resolution:FindRecursive(name, class) end
