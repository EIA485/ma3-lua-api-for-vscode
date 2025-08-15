---@meta

---@class CueUpdates: ProgUpdateCollect
---@field FilterMode ProgUpdateCueMode
---@field ObjectList integer[]
---@field ChangeCount integer
local CueUpdates = {}
---@return "CueUpdates"
function CueUpdates:GetClass() end
---@return "CueUpdate"
function CueUpdates:GetChildClass() end
---@generic T : CueUpdates
---@param class `T`
---@return boolean
function CueUpdates:IsClass(class) end
---@param index integer
---@return CueUpdate
function CueUpdates:Ptr(index) end
---@return CueUpdate[]
function CueUpdates:Children() end
---@return CueUpdate?
function CueUpdates:CurrentChild() end
---@return 18
function CueUpdates:PropertyCount() end
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
---@overload fun(idx: 15): "FilterMode"
---@overload fun(idx: 16): "ObjectList"
---@overload fun(idx: 17): "ChangeCount"
function CueUpdates:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|16): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|17): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: ProgUpdateCueMode, ReadOnly: False, ImportIgnore: False}
function CueUpdates:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|17): "UInt8"
---@overload fun(idx: 16): "Custom"
function CueUpdates:PropertyType(idx) end
---@overload fun(name: "FilterMode", role: nil): ProgUpdateCueMode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ChangeCount", role: nil): integer
---@overload fun(name: "ObjectList", role: nil): integer[]
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FilterMode"|"ObjectList"|"ChangeCount", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): CueUpdate
function CueUpdates:Get(name, role) end
---@generic T : CueUpdate
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): CueUpdate
function CueUpdates:Create(index, class, undo) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): CueUpdate
function CueUpdates:Append(class, undo, count) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CueUpdate
function CueUpdates:Acquire(class, undo) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CueUpdate
---@deprecated use "Acquire" instead
function CueUpdates:Aquire(class, undo) end
---@generic T : CueUpdate
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CueUpdate
function CueUpdates:Insert(index, class, undo, count) end
---@generic T : CueUpdate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CueUpdate
function CueUpdates:Find(class, undo) end
---@overload fun(property_name: "FilterMode", property_value: ProgUpdateCueMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"ChangeCount", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ObjectList", property_value: integer[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function CueUpdates:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "SequenceNo"|"TargetCue"|"TargetPart", property_value: integer)
---@overload fun(property_name: "TargetName"|"SequenceName", property_value: string)
function CueUpdates:DataPoolNo(property_name, property_value) end