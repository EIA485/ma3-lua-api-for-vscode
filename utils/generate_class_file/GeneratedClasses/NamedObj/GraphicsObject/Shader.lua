---@meta

---@class Shader: GraphicsObject Shader object (Vertex/Tessellation/Geometry/Fragment)
---@field Source string
---@field FileName string
---@field Version string
---@field Macros string
---@field Type integer
local Shader = {}
---@return "Shader"
function Shader:GetClass() end
---@return "UIObject"
function Shader:GetChildClass() end
---@return ShaderProgram
function Shader:Parent() end
---@param index integer
---@return UIObject
function Shader:Ptr(index) end
---@return UIObject[]
function Shader:Children() end
---@return UIObject?
function Shader:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Source"|"FileName"|"Version"|"Macros", role: nil): string
---@overload fun(name: "Type", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Source"|"FileName"|"Version"|"Macros"|"Type", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function Shader:Get(name, role) end
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
function Shader:Create(index, class, undo) end
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
function Shader:Append(class, undo, count) end
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
function Shader:Acquire(class, undo) end
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@deprecated use "Acquire" instead
function Shader:Aquire(class, undo) end
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
function Shader:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
function Shader:Find(name, class) end
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
---@overload fun(name: string, class: nil): Object
function Shader:FindRecursive(name, class) end
