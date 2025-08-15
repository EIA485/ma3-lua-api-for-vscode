---@meta

---@class Backdrop: Texture A texture with a defined 9-patch configuration for special scaling
---@field Border {left: integer, right: integer, top: integer, bottom: integer}
---@field Client {left: integer, right: integer, top: integer, bottom: integer}
---@field Type BackdropPatchType
local Backdrop = {
    Type="Nine"
}
---@return "Backdrop"
function Backdrop:GetClass() end
---@return "GraphicsObject"
function Backdrop:GetChildClass() end
---@generic T : Backdrop
---@param class `T`
---@return boolean
function Backdrop:IsClass(class) end
---@return 21
function Backdrop:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "Filename"
---@overload fun(idx: 16): "TextureRect"
---@overload fun(idx: 17): "TextureIndex"
---@overload fun(idx: 18): "Border"
---@overload fun(idx: 19): "Client"
---@overload fun(idx: 20): "Type"
function Backdrop:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|16|17): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|18|19): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: BackdropPatchType, ReadOnly: False, ImportIgnore: False}
function Backdrop:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|15): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16): "Custom"
---@overload fun(idx: 17): "Int16"
---@overload fun(idx: 18|19): "4Ints"
---@overload fun(idx: 20): "UInt8"
function Backdrop:PropertyType(idx) end
---@overload fun(name: "Type", role: nil): BackdropPatchType
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"TextureIndex", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Filename", role: nil): string
---@overload fun(name: "Border"|"Client", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "TextureRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Filename"|"TextureRect"|"TextureIndex"|"Border"|"Client"|"Type", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function Backdrop:Get(name, role) end
---@overload fun(property_name: "Type", property_value: BackdropPatchType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"TextureIndex", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Filename", property_value: string, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Border"|"Client", property_value: {left: integer, right: integer, top: integer, bottom: integer}, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TextureRect", property_value: {left: number, right: number, top: number, bottom: number}, override_change_level: ChangeLevel?)
function Backdrop:Set(property_name, property_value, override_change_level) end