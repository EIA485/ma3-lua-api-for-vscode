---@meta

---@class Video: Image
---@field Duration TimePropertyValue
---@field Source integer
---@field NDISource NDISource
---@field NDIBandwidth NDIlib_recv_bandwidth_e
local Video = {
    Duration="0",
    Source="File"
}
---@return "Video"
function Video:GetClass() end
---@return "Object"
function Video:GetChildClass() end
---@return Videos
function Video:Parent() end
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
---@overload fun(name: "Installed"|"IsResource"|"InStream"|"Width"|"Height"|"AddAlpha", role: nil): integer
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "Source", role: nil): integer
---@overload fun(name: "NDISource", role: nil): NDISource
---@overload fun(name: "NDIBandwidth", role: nil): NDIlib_recv_bandwidth_e
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"Width"|"Height"|"AddAlpha"|"Duration"|"Source"|"NDISource"|"NDIBandwidth", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Video:Get(name, role) end
