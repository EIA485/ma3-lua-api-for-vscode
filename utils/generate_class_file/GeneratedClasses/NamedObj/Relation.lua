---@meta

---@class Relation: NamedObj Describes the relation bewteen channel functions and controlling channel types.
---@field Master DMXChannel
---@field MasterDirect DMXChannel
---@field Follower ChannelFunction
---@field FollowerDirect ChannelFunction
---@field Type integer
local Relation = {}
---@return "Relation"
function Relation:GetClass() end
---@return "Object"
function Relation:GetChildClass() end
---@return Relations
function Relation:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Master"|"MasterDirect", role: nil): DMXChannel
---@overload fun(name: "Follower"|"FollowerDirect", role: nil): ChannelFunction
---@overload fun(name: "Type", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Master"|"MasterDirect"|"Follower"|"FollowerDirect"|"Type", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Relation:Get(name, role) end
