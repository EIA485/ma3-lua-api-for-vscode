---@meta

---@class ArtNetDataCollect: Object
local ArtNetDataCollect = {}
---@return "ArtNetDataCollect"
function ArtNetDataCollect:GetClass() end
---@return "Art-Net-Data"
function ArtNetDataCollect:GetChildClass() end
---@generic T : ArtNetDataCollect
---@param class `T`
---@return boolean
function ArtNetDataCollect:IsClass(class) end
---@return ArtNet
function ArtNetDataCollect:Parent() end
---@param index integer
---@return ArtNetData
function ArtNetDataCollect:Ptr(index) end
---@return ArtNetData[]
function ArtNetDataCollect:Children() end
---@return ArtNetData?
function ArtNetDataCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ArtNetData
function ArtNetDataCollect:Get(name, role) end
---@overload fun(index: integer, class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(index: integer, class: nil, undo: Undo?): ArtNetData
function ArtNetDataCollect:Create(index, class, undo) end
---@overload fun(class: "Art-Net-Data", undo: Undo?, count: integer?): ArtNetData
---@overload fun(class: nil, undo: Undo?, count: integer?): ArtNetData
function ArtNetDataCollect:Append(class, undo, count) end
---@overload fun(class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(class: nil, undo: Undo?): ArtNetData
function ArtNetDataCollect:Acquire(class, undo) end
---@overload fun(class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(class: nil, undo: Undo?): ArtNetData
---@deprecated use "Acquire" instead
function ArtNetDataCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Art-Net-Data", undo: Undo?, count: integer?): ArtNetData
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ArtNetData
function ArtNetDataCollect:Insert(index, class, undo, count) end
---@overload fun(class: "Art-Net-Data", undo: Undo?): ArtNetData
---@overload fun(class: nil, undo: Undo?): ArtNetData
function ArtNetDataCollect:Find(class, undo) end
---@overload fun(property_name: "InputPriority", property_value: DmxPrio)
---@overload fun(property_name: "TimecodeSlot", property_value: TimecodeSlotOff)
---@overload fun(property_name: "PacketDelay", property_value: number)
---@overload fun(property_name: "Mode", property_value: ArtNetDataMode)
---@overload fun(property_name: "DestinationIP", property_value: Manet.IP4)
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "Mode", property_value: ArtNetDataMode)
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "InputPriority", property_value: DmxPrio)
---@overload fun(property_name: "DestinationIP", property_value: Manet.IP4)
---@overload fun(property_name: "TimecodeSlot", property_value: TimecodeSlotOff)
---@overload fun(property_name: "Enabled"|"EnableRdm", property_value: YesNo|boolean)
---@overload fun(property_name: "LocalUniverse"|"Art-NetAbsolute"|"Amount"|"Net"|"Art-NetSub-Net"|"Universe"|"SubscribedNodes", property_value: integer)
---@overload fun(property_name: "PacketDelay", property_value: number)
function ArtNetDataCollect:SetChildren(property_name, property_value) end