---@meta

---@class Certificate: Object
---@field Size integer
---@field Hash Crypto.SHA256
---@field Date string
---@field Data string
---@field IsOverallDeviceCertificate boolean
---@field PartOfOverallDevCert boolean
---@field CertificateFullyReceived boolean
---@field CertificateIsVerified VerifyResult
---@field CertificateIsDuplicate boolean
---@field DeviceIsConnected boolean
local Certificate = {}
---@return "Certificate"
function Certificate:GetClass() end
---@return "Object"
function Certificate:GetChildClass() end
---@return Certificates
function Certificate:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Size", role: nil): integer
---@overload fun(name: "Hash", role: nil): Crypto.SHA256
---@overload fun(name: "Date"|"Data", role: nil): string
---@overload fun(name: "IsOverallDeviceCertificate"|"PartOfOverallDevCert"|"CertificateFullyReceived", role: nil): boolean
---@overload fun(name: "CertificateIsVerified", role: nil): VerifyResult
---@overload fun(name: "CertificateIsDuplicate"|"DeviceIsConnected", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Size"|"Hash"|"Date"|"Data"|"IsOverallDeviceCertificate"|"PartOfOverallDevCert"|"CertificateFullyReceived"|"CertificateIsVerified"|"CertificateIsDuplicate"|"DeviceIsConnected", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Certificate:Get(name, role) end
