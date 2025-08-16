---@meta

---@class LedDefinitions: Object
---@field HasBootAnimation YesNo|boolean
---@field BootAnimationLength integer
local LedDefinitions = {
    HasBootAnimation="No",
    BootAnimationLength="0"
}
---@return "LedDefinitions"
function LedDefinitions:GetClass() end
---@return "LedDefinition"
function LedDefinitions:GetChildClass() end
---@generic T : LedDefinitions
---@param class `T`
---@return boolean
function LedDefinitions:IsClass(class) end
---@return HardwareConfiguration
function LedDefinitions:Parent() end
---@param index integer
---@return LedDefinition
function LedDefinitions:Ptr(index) end
---@return LedDefinition[]
function LedDefinitions:Children() end
---@return LedDefinition?
function LedDefinitions:CurrentChild() end
---@return 17
function LedDefinitions:PropertyCount() end
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
---@overload fun(idx: 15): "HasBootAnimation"
---@overload fun(idx: 16): "BootAnimationLength"
function LedDefinitions:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function LedDefinitions:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|15): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16): "Int32"
function LedDefinitions:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"HasBootAnimation", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"BootAnimationLength", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"HasBootAnimation"|"BootAnimationLength", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): LedDefinition
function LedDefinitions:Get(name, role) end
---@generic T : LedDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Create(index, class, undo) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LedDefinition
function LedDefinitions:Append(class, undo, count) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Acquire(class, undo) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LedDefinition
---@deprecated use "Acquire" instead
function LedDefinitions:Aquire(class, undo) end
---@generic T : LedDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LedDefinition
function LedDefinitions:Insert(index, class, undo, count) end
---@generic T : LedDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LedDefinition
function LedDefinitions:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"HasBootAnimation", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"BootAnimationLength", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function LedDefinitions:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DeskLights", property_value: DeskLightChannel)
---@overload fun(property_name: "Code", property_value: VirtualKeyCode)
---@overload fun(property_name: "SpecialExecutor", property_value: SpecialExecutor)
---@overload fun(property_name: "DeskLights", property_value: DeskLightChannel)
---@overload fun(property_name: "SpecialExecutor", property_value: SpecialExecutor)
---@overload fun(property_name: "Code", property_value: VirtualKeyCode)
---@overload fun(property_name: "DefaultExecutor"|"Disable", property_value: YesNo|boolean)
---@overload fun(property_name: "R"|"G"|"B"|"ExecutorIndex"|"AnimationPos"|"IsButton", property_value: integer)
function LedDefinitions:SetChildren(property_name, property_value) end