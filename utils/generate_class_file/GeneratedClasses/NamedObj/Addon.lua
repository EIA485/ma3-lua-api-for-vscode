---@meta

---@class Addon: NamedObj
---@field Author string
---@field Version string
---@field Data8 integer[]
---@field DataIP Manet.IP4[]
---@field Data64 integer[]
---@field DataDouble number[]
---@field DataString string[]
local Addon = {}
---@return "Addon"
function Addon:GetClass() end
---@return "AddonApi"
function Addon:GetChildClass() end
---@return Addons
function Addon:Parent() end
---@param index integer
---@return AddonApi
function Addon:Ptr(index) end
---@return AddonApi[]
function Addon:Children() end
---@return AddonApi?
function Addon:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Author"|"Version", role: nil): string
---@overload fun(name: "Data8", role: nil): integer[]
---@overload fun(name: "DataIP", role: nil): Manet.IP4[]
---@overload fun(name: "Data64", role: nil): integer[]
---@overload fun(name: "DataDouble", role: nil): number[]
---@overload fun(name: "DataString", role: nil): string[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Author"|"Version"|"Data8"|"DataIP"|"Data64"|"DataDouble"|"DataString", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): AddonApi
function Addon:Get(name, role) end
---@overload fun(index: integer, class: "AddonApi", undo: Undo?): AddonApi
---@overload fun(index: integer, class: "ApiVariables", undo: Undo?): ApiVariables
---@overload fun(index: integer, class: "ApiObject", undo: Undo?): ApiObject
---@overload fun(index: integer, class: "ApiPSN", undo: Undo?): ApiPSN
---@overload fun(index: integer, class: "ApiDMX", undo: Undo?): ApiDMX
---@overload fun(index: integer, class: "ApiMessageBox", undo: Undo?): ApiMessageBox
---@overload fun(index: integer, class: "ApiProgress", undo: Undo?): ApiProgress
---@overload fun(index: integer, class: "ApiGeneral", undo: Undo?): ApiGeneral
---@overload fun(index: integer, class: nil, undo: Undo?): AddonApi
function Addon:Create(index, class, undo) end
---@overload fun(class: "AddonApi", undo: Undo?, count: integer?): AddonApi
---@overload fun(class: "ApiVariables", undo: Undo?, count: integer?): ApiVariables
---@overload fun(class: "ApiObject", undo: Undo?, count: integer?): ApiObject
---@overload fun(class: "ApiPSN", undo: Undo?, count: integer?): ApiPSN
---@overload fun(class: "ApiDMX", undo: Undo?, count: integer?): ApiDMX
---@overload fun(class: "ApiMessageBox", undo: Undo?, count: integer?): ApiMessageBox
---@overload fun(class: "ApiProgress", undo: Undo?, count: integer?): ApiProgress
---@overload fun(class: "ApiGeneral", undo: Undo?, count: integer?): ApiGeneral
---@overload fun(class: nil, undo: Undo?, count: integer?): AddonApi
function Addon:Append(class, undo, count) end
---@overload fun(class: "AddonApi", undo: Undo?): AddonApi
---@overload fun(class: "ApiVariables", undo: Undo?): ApiVariables
---@overload fun(class: "ApiObject", undo: Undo?): ApiObject
---@overload fun(class: "ApiPSN", undo: Undo?): ApiPSN
---@overload fun(class: "ApiDMX", undo: Undo?): ApiDMX
---@overload fun(class: "ApiMessageBox", undo: Undo?): ApiMessageBox
---@overload fun(class: "ApiProgress", undo: Undo?): ApiProgress
---@overload fun(class: "ApiGeneral", undo: Undo?): ApiGeneral
---@overload fun(class: nil, undo: Undo?): AddonApi
function Addon:Acquire(class, undo) end
---@overload fun(class: "AddonApi", undo: Undo?): AddonApi
---@overload fun(class: "ApiVariables", undo: Undo?): ApiVariables
---@overload fun(class: "ApiObject", undo: Undo?): ApiObject
---@overload fun(class: "ApiPSN", undo: Undo?): ApiPSN
---@overload fun(class: "ApiDMX", undo: Undo?): ApiDMX
---@overload fun(class: "ApiMessageBox", undo: Undo?): ApiMessageBox
---@overload fun(class: "ApiProgress", undo: Undo?): ApiProgress
---@overload fun(class: "ApiGeneral", undo: Undo?): ApiGeneral
---@overload fun(class: nil, undo: Undo?): AddonApi
---@deprecated use "Acquire" instead
function Addon:Aquire(class, undo) end
---@overload fun(index: integer, class: "AddonApi", undo: Undo?, count: integer?): AddonApi
---@overload fun(index: integer, class: "ApiVariables", undo: Undo?, count: integer?): ApiVariables
---@overload fun(index: integer, class: "ApiObject", undo: Undo?, count: integer?): ApiObject
---@overload fun(index: integer, class: "ApiPSN", undo: Undo?, count: integer?): ApiPSN
---@overload fun(index: integer, class: "ApiDMX", undo: Undo?, count: integer?): ApiDMX
---@overload fun(index: integer, class: "ApiMessageBox", undo: Undo?, count: integer?): ApiMessageBox
---@overload fun(index: integer, class: "ApiProgress", undo: Undo?, count: integer?): ApiProgress
---@overload fun(index: integer, class: "ApiGeneral", undo: Undo?, count: integer?): ApiGeneral
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AddonApi
function Addon:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "AddonApi"): AddonApi
---@overload fun(name: string, class: "ApiVariables"): ApiVariables
---@overload fun(name: string, class: "ApiObject"): ApiObject
---@overload fun(name: string, class: "ApiPSN"): ApiPSN
---@overload fun(name: string, class: "ApiDMX"): ApiDMX
---@overload fun(name: string, class: "ApiMessageBox"): ApiMessageBox
---@overload fun(name: string, class: "ApiProgress"): ApiProgress
---@overload fun(name: string, class: "ApiGeneral"): ApiGeneral
---@overload fun(name: string, class: nil): AddonApi
function Addon:Find(name, class) end
---@overload fun(name: string, class: "AddonApi"): AddonApi
---@overload fun(name: string, class: "ApiVariables"): ApiVariables
---@overload fun(name: string, class: "ApiObject"): ApiObject
---@overload fun(name: string, class: "ApiPSN"): ApiPSN
---@overload fun(name: string, class: "ApiDMX"): ApiDMX
---@overload fun(name: string, class: "ApiMessageBox"): ApiMessageBox
---@overload fun(name: string, class: "ApiProgress"): ApiProgress
---@overload fun(name: string, class: "ApiGeneral"): ApiGeneral
---@overload fun(name: string, class: nil): Object
function Addon:FindRecursive(name, class) end
