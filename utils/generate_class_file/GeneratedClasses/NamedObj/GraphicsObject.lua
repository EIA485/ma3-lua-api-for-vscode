---@meta

---@class GraphicsObject: NamedObj A base class for any other class that has something to do with a UI
local GraphicsObject = {}
---@return "GraphicsObject"
function GraphicsObject:GetClass() end
---@return "GraphicsObject"
function GraphicsObject:GetChildClass() end
---@return GraphicsObject
function GraphicsObject:Parent() end
---@param index integer
---@return GraphicsObject
function GraphicsObject:Ptr(index) end
---@return GraphicsObject[]
function GraphicsObject:Children() end
---@return GraphicsObject?
function GraphicsObject:CurrentChild() end
---@overload fun(name: integer, role: nil): GraphicsObject
function GraphicsObject:Get(name, role) end
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?): GraphicsObject
function GraphicsObject:Create(index, class, undo) end
---@overload fun(class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?, count: integer?): GraphicsObject
function GraphicsObject:Append(class, undo, count) end
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
function GraphicsObject:Acquire(class, undo) end
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
---@deprecated use "Acquire" instead
function GraphicsObject:Aquire(class, undo) end
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GraphicsObject
function GraphicsObject:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GraphicsObject"): GraphicsObject
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
---@overload fun(name: string, class: nil): GraphicsObject
function GraphicsObject:Find(name, class) end
---@overload fun(name: string, class: "GraphicsObject"): GraphicsObject
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
---@overload fun(name: string, class: nil): Object
function GraphicsObject:FindRecursive(name, class) end
