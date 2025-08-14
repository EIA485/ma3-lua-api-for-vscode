---@meta

---@class OutputStation: GuidObject
---@field Type integer
---@field IP Network.IP8Full
---@field MAC Network.MACAddress
---@field Art-NetInterface string
---@field SendArt-NetIfIdleMaster integer
---@field sACNInterface string
---@field SendsACNIfIdleMaster integer
---@field OSCInterface string
---@field PSNInterface string
---@field InMySession integer
---@field HostData Container.SharedPtr<class Manet.HostDataExt>
local OutputStation = {
    ["SendArt-NetIfIdleMaster"]="Yes",
    SendsACNIfIdleMaster="Yes"
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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "HostData", role: nil): Container.SharedPtr<class Manet.HostDataExt>
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "IP", role: nil): Network.IP8Full
---@overload fun(name: "MAC", role: nil): Network.MACAddress
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Type"|"SendArt-NetIfIdleMaster"|"SendsACNIfIdleMaster"|"InMySession"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Art-NetInterface"|"sACNInterface"|"OSCInterface"|"PSNInterface"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Type"|"IP"|"MAC"|"Art-NetInterface"|"SendArt-NetIfIdleMaster"|"sACNInterface"|"SendsACNIfIdleMaster"|"OSCInterface"|"PSNInterface"|"InMySession"|"HostData"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputConfiguration
function OutputStation:Get(name, role) end
---@generic T : OutputConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Create(index, class, undo) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputConfiguration
function OutputStation:Append(class, undo, count) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Acquire(class, undo) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
---@deprecated use "Acquire" instead
function OutputStation:Aquire(class, undo) end
---@generic T : OutputConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputConfiguration
function OutputStation:Insert(index, class, undo, count) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Find(class, undo) end