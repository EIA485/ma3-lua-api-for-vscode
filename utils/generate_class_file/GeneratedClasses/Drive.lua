---@meta

---@class Drive: Object
---@field Path string
---@field CombinedName string
---@field DriveType DriveType
---@field FreeSpace integer
---@field TotalSpace integer
---@field GetMBTotalSpace fun() : integer
---@field GetMBFreeSpace fun() : integer
---@field FreeSpaceStr string
local Drive = {
    DriveType="Invalid"
}
---@return "Drive"
function Drive:GetClass() end
---@return "Object"
function Drive:GetChildClass() end
---@return DriveCollect
function Drive:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Path"|"CombinedName", role: nil): string
---@overload fun(name: "DriveType", role: nil): DriveType
---@overload fun(name: "FreeSpace"|"TotalSpace", role: nil): integer
---@overload fun(name: "GetMBTotalSpace"|"GetMBFreeSpace", role: nil): fun() : integer
---@overload fun(name: "FreeSpaceStr", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Path"|"CombinedName"|"DriveType"|"FreeSpace"|"TotalSpace"|"GetMBTotalSpace"|"GetMBFreeSpace"|"FreeSpaceStr", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Drive:Get(name, role) end
