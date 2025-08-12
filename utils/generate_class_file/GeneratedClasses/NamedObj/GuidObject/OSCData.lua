---@meta

---@class OSCData: GuidObject
---@field DestinationIP Manet.IP4
---@field Mode integer
---@field Port integer
---@field Prefix string
---@field DataPool string
---@field Page string
---@field Fader string
---@field ExecutorKnob string
---@field Key string
---@field FaderRange integer
---@field Receive integer
---@field Send integer
---@field ReceiveCommand integer
---@field SendCommand integer
---@field EchoInput integer
---@field EchoOutput integer
local OSCData = {
    DataPool="DataPool",
    Page="Page",
    Fader="Fader",
    ExecutorKnob="Encoder",
    Key="Key",
    FaderRange="100",
    Receive="Yes",
    Send="Yes",
    ReceiveCommand="Yes",
    SendCommand="Yes",
    EchoInput="Yes",
    EchoOutput="Yes"
}
---@return "OSCData"
function OSCData:GetClass() end
---@return "Object"
function OSCData:GetChildClass() end
---@return OSCBase
function OSCData:Parent() end
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
---@overload fun(name: "DestinationIP", role: nil): Manet.IP4
---@overload fun(name: "Mode"|"Port", role: nil): integer
---@overload fun(name: "Prefix"|"DataPool"|"Page"|"Fader"|"ExecutorKnob"|"Key", role: nil): string
---@overload fun(name: "FaderRange"|"Receive"|"Send"|"ReceiveCommand"|"SendCommand"|"EchoInput"|"EchoOutput", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"DestinationIP"|"Mode"|"Port"|"Prefix"|"DataPool"|"Page"|"Fader"|"ExecutorKnob"|"Key"|"FaderRange"|"Receive"|"Send"|"ReceiveCommand"|"SendCommand"|"EchoInput"|"EchoOutput", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function OSCData:Get(name, role) end
