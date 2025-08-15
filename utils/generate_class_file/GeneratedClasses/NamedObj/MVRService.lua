---@meta

---@class MVRService: NamedObj
---@field UUID MVR.UUID
---@field Joined Yes|true
---@field Left Yes|true
---@field IsActive Yes|true
---@field IsMyself Yes|true
local MVRService = {}
---@return "MVRService"
function MVRService:GetClass() end
---@return "MVRServiceInterface"
function MVRService:GetChildClass() end
---@generic T : MVRService
---@param class `T`
---@return boolean
function MVRService:IsClass(class) end
---@return MVRServiceCollect
function MVRService:Parent() end
---@param index integer
---@return MVRServiceInterface
function MVRService:Ptr(index) end
---@return MVRServiceInterface[]
function MVRService:Children() end
---@return MVRServiceInterface?
function MVRService:CurrentChild() end
---@return 20
function MVRService:PropertyCount() end
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
---@overload fun(idx: 15): "UUID"
---@overload fun(idx: 16): "Joined"
---@overload fun(idx: 17): "Left"
---@overload fun(idx: 18): "IsActive"
---@overload fun(idx: 19): "IsMyself"
function MVRService:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16|17|18|19): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
function MVRService:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|16|17|18|19): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Custom"
function MVRService:PropertyType(idx) end
---@overload fun(name: "UUID", role: nil): MVR.UUID
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Joined"|"Left"|"IsActive"|"IsMyself", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UUID"|"Joined"|"Left"|"IsActive"|"IsMyself", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MVRServiceInterface
function MVRService:Get(name, role) end
---@generic T : MVRServiceInterface
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Create(index, class, undo) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRServiceInterface
function MVRService:Append(class, undo, count) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Acquire(class, undo) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
---@deprecated use "Acquire" instead
function MVRService:Aquire(class, undo) end
---@generic T : MVRServiceInterface
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRServiceInterface
function MVRService:Insert(index, class, undo, count) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Find(class, undo) end
---@overload fun(property_name: "UUID", property_value: MVR.UUID, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Joined"|"Left"|"IsActive"|"IsMyself", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function MVRService:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "IP", property_value: Manet.IP4)
---@overload fun(property_name: "IP", property_value: Manet.IP4)
---@overload fun(property_name: "Port"|"Priority"|"Weight", property_value: integer)
function MVRService:IP(property_name, property_value) end