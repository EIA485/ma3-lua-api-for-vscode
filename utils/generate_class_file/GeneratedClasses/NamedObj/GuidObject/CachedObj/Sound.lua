---@meta

---@class Sound: CachedObj
---@field Duration TimePropertyValue
---@field dB number
---@field AutoStart integer
---@field AutoStop integer
---@field User string
---@field Type string
---@field ElapsedTime TimePropertyValue
local Sound = {
    Duration="0",
    dB="0",
    AutoStart="0",
    AutoStop="0",
    ElapsedTime="0"
}
---@return "Sound"
function Sound:GetClass() end
---@return "Object"
function Sound:GetChildClass() end
---@return Sounds
function Sound:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FileName"|"FilePath", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "FileContent", role: nil): string
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Installed"|"IsResource"|"InStream", role: nil): integer
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "dB", role: nil): number
---@overload fun(name: "AutoStart"|"AutoStop", role: nil): integer
---@overload fun(name: "User"|"Type", role: nil): string
---@overload fun(name: "ElapsedTime", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"Duration"|"dB"|"AutoStart"|"AutoStop"|"User"|"Type"|"ElapsedTime", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Sound:Get(name, role) end
