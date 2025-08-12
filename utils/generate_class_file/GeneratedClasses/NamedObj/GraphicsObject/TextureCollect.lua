---@meta

---@class TextureCollect: GraphicsObject A container for textures (texture array)
---@field Width integer
---@field Height integer
---@field Depth integer
local TextureCollect = {
    Width="2048",
    Height="2048",
    Depth="6"
}
---@return "TextureCollect"
function TextureCollect:GetClass() end
---@return "GraphicsObject"
function TextureCollect:GetChildClass() end
---@return GraphicsRoot
function TextureCollect:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Width"|"Height"|"Depth", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Width"|"Height"|"Depth", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function TextureCollect:Get(name, role) end
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(index: integer, class: "Textures", undo: Undo?): Textures
---@overload fun(index: integer, class: "ContentManager", undo: Undo?): ContentManager
---@overload fun(index: integer, class: "ContentManager", undo: Undo?): ContentManager
---@overload fun(index: integer, class: "Fonts", undo: Undo?): Fonts
---@overload fun(index: integer, class: "Fonts", undo: Undo?): Fonts
---@overload fun(index: integer, class: "Textures", undo: Undo?): Textures
---@overload fun(index: integer, class: nil, undo: Undo?): GraphicsObject
function TextureCollect:Create(index, class, undo) end
---@overload fun(class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(class: "Textures", undo: Undo?, count: integer?): Textures
---@overload fun(class: "ContentManager", undo: Undo?, count: integer?): ContentManager
---@overload fun(class: "ContentManager", undo: Undo?, count: integer?): ContentManager
---@overload fun(class: "Fonts", undo: Undo?, count: integer?): Fonts
---@overload fun(class: "Fonts", undo: Undo?, count: integer?): Fonts
---@overload fun(class: "Textures", undo: Undo?, count: integer?): Textures
---@overload fun(class: nil, undo: Undo?, count: integer?): GraphicsObject
function TextureCollect:Append(class, undo, count) end
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: "Textures", undo: Undo?): Textures
---@overload fun(class: "ContentManager", undo: Undo?): ContentManager
---@overload fun(class: "ContentManager", undo: Undo?): ContentManager
---@overload fun(class: "Fonts", undo: Undo?): Fonts
---@overload fun(class: "Fonts", undo: Undo?): Fonts
---@overload fun(class: "Textures", undo: Undo?): Textures
---@overload fun(class: nil, undo: Undo?): GraphicsObject
function TextureCollect:Acquire(class, undo) end
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "ContentSheetGridScroller", undo: Undo?): ContentSheetGridScroller
---@overload fun(class: "MeshMaterialGrid", undo: Undo?): MeshMaterialGrid
---@overload fun(class: "FixtureSheet", undo: Undo?): FixtureSheet
---@overload fun(class: "ContentSheet", undo: Undo?): ContentSheet
---@overload fun(class: "DMXSheet", undo: Undo?): DMXSheet
---@overload fun(class: "MeshLineEdit", undo: Undo?): MeshLineEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: "Textures", undo: Undo?): Textures
---@overload fun(class: "ContentManager", undo: Undo?): ContentManager
---@overload fun(class: "ContentManager", undo: Undo?): ContentManager
---@overload fun(class: "Fonts", undo: Undo?): Fonts
---@overload fun(class: "Fonts", undo: Undo?): Fonts
---@overload fun(class: "Textures", undo: Undo?): Textures
---@overload fun(class: nil, undo: Undo?): GraphicsObject
---@deprecated use "Acquire" instead
function TextureCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(index: integer, class: "ContentSheetGridScroller", undo: Undo?, count: integer?): ContentSheetGridScroller
---@overload fun(index: integer, class: "MeshMaterialGrid", undo: Undo?, count: integer?): MeshMaterialGrid
---@overload fun(index: integer, class: "FixtureSheet", undo: Undo?, count: integer?): FixtureSheet
---@overload fun(index: integer, class: "ContentSheet", undo: Undo?, count: integer?): ContentSheet
---@overload fun(index: integer, class: "DMXSheet", undo: Undo?, count: integer?): DMXSheet
---@overload fun(index: integer, class: "MeshLineEdit", undo: Undo?, count: integer?): MeshLineEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(index: integer, class: "Textures", undo: Undo?, count: integer?): Textures
---@overload fun(index: integer, class: "ContentManager", undo: Undo?, count: integer?): ContentManager
---@overload fun(index: integer, class: "ContentManager", undo: Undo?, count: integer?): ContentManager
---@overload fun(index: integer, class: "Fonts", undo: Undo?, count: integer?): Fonts
---@overload fun(index: integer, class: "Fonts", undo: Undo?, count: integer?): Fonts
---@overload fun(index: integer, class: "Textures", undo: Undo?, count: integer?): Textures
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GraphicsObject
function TextureCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GraphicsObject"): GraphicsObject
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
---@overload fun(name: string, class: "Textures"): Textures
---@overload fun(name: string, class: "ContentManager"): ContentManager
---@overload fun(name: string, class: "ContentManager"): ContentManager
---@overload fun(name: string, class: "Fonts"): Fonts
---@overload fun(name: string, class: "Fonts"): Fonts
---@overload fun(name: string, class: "Textures"): Textures
---@overload fun(name: string, class: nil): GraphicsObject
function TextureCollect:Find(name, class) end
---@overload fun(name: string, class: "GraphicsObject"): GraphicsObject
---@overload fun(name: string, class: "ContentSheetGridScroller"): ContentSheetGridScroller
---@overload fun(name: string, class: "MeshMaterialGrid"): MeshMaterialGrid
---@overload fun(name: string, class: "FixtureSheet"): FixtureSheet
---@overload fun(name: string, class: "ContentSheet"): ContentSheet
---@overload fun(name: string, class: "DMXSheet"): DMXSheet
---@overload fun(name: string, class: "MeshLineEdit"): MeshLineEdit
---@overload fun(name: string, class: "NoteTextEdit"): NoteTextEdit
---@overload fun(name: string, class: "Textures"): Textures
---@overload fun(name: string, class: "ContentManager"): ContentManager
---@overload fun(name: string, class: "ContentManager"): ContentManager
---@overload fun(name: string, class: "Fonts"): Fonts
---@overload fun(name: string, class: "Fonts"): Fonts
---@overload fun(name: string, class: "Textures"): Textures
---@overload fun(name: string, class: nil): Object
function TextureCollect:FindRecursive(name, class) end
