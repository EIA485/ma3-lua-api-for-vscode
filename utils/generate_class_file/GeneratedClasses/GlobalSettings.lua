---@meta

---@class GlobalSettings: Object Mixed settings which relate to all stations in the network.
---@field AutosaveInterval AutoSaveMode
---@field AutoSaveCurrentTime integer
---@field AutoSaveStartTime integer
---@field AutoSaveCountdown string
---@field ExportCachedObjectsOnShowSave integer
---@field Accepted3rdParty integer
---@field EnumShowFileNameWhenDescriptionChanges integer
---@field TimecodeEventsRecordingfrom integer
---@field DSCPDMX integer
---@field DSCPMANetData integer
---@field DSCPNetworkUpdate integer
---@field DSCPDMXProtocols integer
---@field DSCPInOutProtocols integer
---@field TTL integer
---@field DSCPConfiguration integer
---@field DataMergeDefaultMode DataNegotiationMode
---@field DataMergeDefaultTimeout TimePropertyValue
local GlobalSettings = {
    AutosaveInterval="Off",
    AutoSaveCurrentTime="0",
    AutoSaveStartTime="0",
    ExportCachedObjectsOnShowSave="No",
    Accepted3rdParty="No",
    EnumShowFileNameWhenDescriptionChanges="No",
    TimecodeEventsRecordingfrom="All Users",
    DSCPDMX="CS4 (Default)",
    DSCPMANetData="CS0",
    DSCPNetworkUpdate="CS0",
    DSCPDMXProtocols="CS0",
    DSCPInOutProtocols="CS0",
    TTL="Default(8)",
    DataMergeDefaultMode="Use Master",
    DataMergeDefaultTimeout="60"
}
---@return "GlobalSettings"
function GlobalSettings:GetClass() end
---@return "Object"
function GlobalSettings:GetChildClass() end
---@return ShowSettings
function GlobalSettings:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "AutosaveInterval", role: nil): AutoSaveMode
---@overload fun(name: "AutoSaveCurrentTime"|"AutoSaveStartTime", role: nil): integer
---@overload fun(name: "AutoSaveCountdown", role: nil): string
---@overload fun(name: "ExportCachedObjectsOnShowSave"|"Accepted3rdParty"|"EnumShowFileNameWhenDescriptionChanges"|"TimecodeEventsRecordingfrom"|"DSCPDMX"|"DSCPMANetData"|"DSCPNetworkUpdate"|"DSCPDMXProtocols"|"DSCPInOutProtocols"|"TTL"|"DSCPConfiguration", role: nil): integer
---@overload fun(name: "DataMergeDefaultMode", role: nil): DataNegotiationMode
---@overload fun(name: "DataMergeDefaultTimeout", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"AutosaveInterval"|"AutoSaveCurrentTime"|"AutoSaveStartTime"|"AutoSaveCountdown"|"ExportCachedObjectsOnShowSave"|"Accepted3rdParty"|"EnumShowFileNameWhenDescriptionChanges"|"TimecodeEventsRecordingfrom"|"DSCPDMX"|"DSCPMANetData"|"DSCPNetworkUpdate"|"DSCPDMXProtocols"|"DSCPInOutProtocols"|"TTL"|"DSCPConfiguration"|"DataMergeDefaultMode"|"DataMergeDefaultTimeout", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GlobalSettings:Get(name, role) end
