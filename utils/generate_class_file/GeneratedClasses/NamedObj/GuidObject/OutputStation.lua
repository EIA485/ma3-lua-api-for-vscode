---@meta

---@class OutputStation: GuidObject
---@field Type integer
---@field IP Network.IP8Full
---@field MAC Network.MACAddress
---@field Art-NetInterface string
---@field SendArt-Net
IfIdleMaster integer
---@field sACNInterface string
---@field SendsACN
IfIdleMaster integer
---@field OSCInterface string
---@field PSNInterface string
---@field InMySession integer
---@field HostData Container.SharedPtr<class Manet.HostDataExt>
local OutputStation = {
    ["SendArt-Net
IfIdleMaster"]="Yes",
    ["SendsACN
IfIdleMaster"]="Yes"
}
---@return "OutputStation"
function OutputStation:GetClass() end
---@return "OutputConfiguration"
function OutputStation:GetChildClass() end
---@return OutputStationCollect
function OutputStation:Parent() end
---@param index integer
---@return OutputConfiguration
function OutputStation:Ptr(index) end
---@return OutputConfiguration[]
function OutputStation:Children() end
---@return OutputConfiguration?
function OutputStation:CurrentChild() end
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
---@overload fun(name: "Type", role: nil): integer
---@overload fun(name: "IP", role: nil): Network.IP8Full
---@overload fun(name: "MAC", role: nil): Network.MACAddress
---@overload fun(name: "Art-NetInterface", role: nil): string
---@overload fun(name: "SendArt-Net
IfIdleMaster", role: nil): integer
---@overload fun(name: "sACNInterface", role: nil): string
---@overload fun(name: "SendsACN
IfIdleMaster", role: nil): integer
---@overload fun(name: "OSCInterface"|"PSNInterface", role: nil): string
---@overload fun(name: "InMySession", role: nil): integer
---@overload fun(name: "HostData", role: nil): Container.SharedPtr<class Manet.HostDataExt>
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Type"|"IP"|"MAC"|"Art-NetInterface"|"SendArt-Net
IfIdleMaster"|"sACNInterface"|"SendsACN
IfIdleMaster"|"OSCInterface"|"PSNInterface"|"InMySession"|"HostData", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputConfiguration
function OutputStation:Get(name, role) end
---@overload fun(index: integer, class: "OutputConfiguration", undo: Undo?): OutputConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Create(index, class, undo) end
---@overload fun(class: "OutputConfiguration", undo: Undo?, count: integer?): OutputConfiguration
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputConfiguration
function OutputStation:Append(class, undo, count) end
---@overload fun(class: "OutputConfiguration", undo: Undo?): OutputConfiguration
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Acquire(class, undo) end
---@overload fun(class: "OutputConfiguration", undo: Undo?): OutputConfiguration
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
---@deprecated use "Acquire" instead
function OutputStation:Aquire(class, undo) end
---@overload fun(index: integer, class: "OutputConfiguration", undo: Undo?, count: integer?): OutputConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputConfiguration
function OutputStation:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "OutputConfiguration"): OutputConfiguration
---@overload fun(name: string, class: nil): OutputConfiguration
function OutputStation:Find(name, class) end
---@overload fun(name: string, class: "OutputConfiguration"): OutputConfiguration
---@overload fun(name: string, class: nil): Object
function OutputStation:FindRecursive(name, class) end
