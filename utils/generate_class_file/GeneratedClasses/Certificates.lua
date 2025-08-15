---@meta

---@class Certificates: Object
---@field SerialNumber string
---@field Date string
---@field WorldserverExpireTime number
local Certificates = {
    WorldserverExpireTime="0"
}
---@return "Certificates"
function Certificates:GetClass() end
---@return "Certificate"
function Certificates:GetChildClass() end
---@generic T : Certificates
---@param class `T`
---@return boolean
function Certificates:IsClass(class) end
---@return Root
function Certificates:Parent() end
---@param index integer
---@return Certificate
function Certificates:Ptr(index) end
---@return Certificate[]
function Certificates:Children() end
---@return Certificate?
function Certificates:CurrentChild() end
---@return 18
function Certificates:PropertyCount() end
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
---@overload fun(idx: 15): "SerialNumber"
---@overload fun(idx: 16): "Date"
---@overload fun(idx: 17): "WorldserverExpireTime"
function Certificates:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|16|17): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Certificates:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|15|16): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 17): "Float"
function Certificates:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "WorldserverExpireTime", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"SerialNumber"|"Date", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SerialNumber"|"Date"|"WorldserverExpireTime", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Certificate
function Certificates:Get(name, role) end
---@generic T : Certificate
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Certificate
function Certificates:Create(index, class, undo) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Certificate
function Certificates:Append(class, undo, count) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Certificate
function Certificates:Acquire(class, undo) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Certificate
---@deprecated use "Acquire" instead
function Certificates:Aquire(class, undo) end
---@generic T : Certificate
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Certificate
function Certificates:Insert(index, class, undo, count) end
---@generic T : Certificate
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Certificate
function Certificates:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "WorldserverExpireTime", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"SerialNumber"|"Date", property_value: string, override_change_level: ChangeLevel?)
function Certificates:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Hash", property_value: Crypto.SHA256)
---@overload fun(property_name: "Size", property_value: integer)
---@overload fun(property_name: "CertificateIsVerified", property_value: VerifyResult)
---@overload fun(property_name: "Hash", property_value: Crypto.SHA256)
---@overload fun(property_name: "CertificateIsVerified", property_value: VerifyResult)
---@overload fun(property_name: "CertificateFullyReceived"|"CertificateIsDuplicate"|"IsOverallDeviceCertificate"|"DeviceIsConnected"|"PartOfOverallDevCert", property_value: YesNo|boolean)
---@overload fun(property_name: "Size", property_value: integer)
---@overload fun(property_name: "Data"|"Date", property_value: string)
function Certificates:CertificateIsVerified(property_name, property_value) end