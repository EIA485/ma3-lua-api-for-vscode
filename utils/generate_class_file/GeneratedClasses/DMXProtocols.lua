---@meta

---@class DMXProtocols: Object
local DMXProtocols = {}
---@return "DMXProtocols"
function DMXProtocols:GetClass() end
---@return "DMXProtocol"
function DMXProtocols:GetChildClass() end
---@return DeviceConfigurations
function DMXProtocols:Parent() end
---@param index integer
---@return DMXProtocol
function DMXProtocols:Ptr(index) end
---@return DMXProtocol[]
function DMXProtocols:Children() end
---@return DMXProtocol?
function DMXProtocols:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXProtocol
function DMXProtocols:Get(name, role) end
---@overload fun(index: integer, class: "DMXProtocol", undo: Undo?): DMXProtocol
---@overload fun(index: integer, class: "KlingNet", undo: Undo?): KlingNet
---@overload fun(index: integer, class: "KiNet", undo: Undo?): KiNet
---@overload fun(index: integer, class: "ShowNet", undo: Undo?): ShowNet
---@overload fun(index: integer, class: "PathPort", undo: Undo?): PathPort
---@overload fun(index: integer, class: "ETC", undo: Undo?): ETC
---@overload fun(index: integer, class: "sACN", undo: Undo?): sACN
---@overload fun(index: integer, class: "ArtNet", undo: Undo?): ArtNet
---@overload fun(index: integer, class: nil, undo: Undo?): DMXProtocol
function DMXProtocols:Create(index, class, undo) end
---@overload fun(class: "DMXProtocol", undo: Undo?, count: integer?): DMXProtocol
---@overload fun(class: "KlingNet", undo: Undo?, count: integer?): KlingNet
---@overload fun(class: "KiNet", undo: Undo?, count: integer?): KiNet
---@overload fun(class: "ShowNet", undo: Undo?, count: integer?): ShowNet
---@overload fun(class: "PathPort", undo: Undo?, count: integer?): PathPort
---@overload fun(class: "ETC", undo: Undo?, count: integer?): ETC
---@overload fun(class: "sACN", undo: Undo?, count: integer?): sACN
---@overload fun(class: "ArtNet", undo: Undo?, count: integer?): ArtNet
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXProtocol
function DMXProtocols:Append(class, undo, count) end
---@overload fun(class: "DMXProtocol", undo: Undo?): DMXProtocol
---@overload fun(class: "KlingNet", undo: Undo?): KlingNet
---@overload fun(class: "KiNet", undo: Undo?): KiNet
---@overload fun(class: "ShowNet", undo: Undo?): ShowNet
---@overload fun(class: "PathPort", undo: Undo?): PathPort
---@overload fun(class: "ETC", undo: Undo?): ETC
---@overload fun(class: "sACN", undo: Undo?): sACN
---@overload fun(class: "ArtNet", undo: Undo?): ArtNet
---@overload fun(class: nil, undo: Undo?): DMXProtocol
function DMXProtocols:Acquire(class, undo) end
---@overload fun(class: "DMXProtocol", undo: Undo?): DMXProtocol
---@overload fun(class: "KlingNet", undo: Undo?): KlingNet
---@overload fun(class: "KiNet", undo: Undo?): KiNet
---@overload fun(class: "ShowNet", undo: Undo?): ShowNet
---@overload fun(class: "PathPort", undo: Undo?): PathPort
---@overload fun(class: "ETC", undo: Undo?): ETC
---@overload fun(class: "sACN", undo: Undo?): sACN
---@overload fun(class: "ArtNet", undo: Undo?): ArtNet
---@overload fun(class: nil, undo: Undo?): DMXProtocol
---@deprecated use "Acquire" instead
function DMXProtocols:Aquire(class, undo) end
---@overload fun(index: integer, class: "DMXProtocol", undo: Undo?, count: integer?): DMXProtocol
---@overload fun(index: integer, class: "KlingNet", undo: Undo?, count: integer?): KlingNet
---@overload fun(index: integer, class: "KiNet", undo: Undo?, count: integer?): KiNet
---@overload fun(index: integer, class: "ShowNet", undo: Undo?, count: integer?): ShowNet
---@overload fun(index: integer, class: "PathPort", undo: Undo?, count: integer?): PathPort
---@overload fun(index: integer, class: "ETC", undo: Undo?, count: integer?): ETC
---@overload fun(index: integer, class: "sACN", undo: Undo?, count: integer?): sACN
---@overload fun(index: integer, class: "ArtNet", undo: Undo?, count: integer?): ArtNet
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXProtocol
function DMXProtocols:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DMXProtocol"): DMXProtocol
---@overload fun(name: string, class: "KlingNet"): KlingNet
---@overload fun(name: string, class: "KiNet"): KiNet
---@overload fun(name: string, class: "ShowNet"): ShowNet
---@overload fun(name: string, class: "PathPort"): PathPort
---@overload fun(name: string, class: "ETC"): ETC
---@overload fun(name: string, class: "sACN"): sACN
---@overload fun(name: string, class: "ArtNet"): ArtNet
---@overload fun(name: string, class: nil): DMXProtocol
function DMXProtocols:Find(name, class) end
---@overload fun(name: string, class: "DMXProtocol"): DMXProtocol
---@overload fun(name: string, class: "KlingNet"): KlingNet
---@overload fun(name: string, class: "KiNet"): KiNet
---@overload fun(name: string, class: "ShowNet"): ShowNet
---@overload fun(name: string, class: "PathPort"): PathPort
---@overload fun(name: string, class: "ETC"): ETC
---@overload fun(name: string, class: "sACN"): sACN
---@overload fun(name: string, class: "ArtNet"): ArtNet
---@overload fun(name: string, class: nil): Object
function DMXProtocols:FindRecursive(name, class) end
