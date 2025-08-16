---@meta

---@class Cmdlines
local Cmdlines = {}
---@return "Cmdlines"
function Cmdlines:GetClass() end
---@return "Cmdline"
function Cmdlines:GetChildClass() end
---@generic T : Cmdlines
---@param class `T`
---@return boolean
function Cmdlines:IsClass(class) end
---@overload fun(index: integer, class: "Cmdline", undo: Undo?): Cmdline
---@overload fun(index: integer, class: nil, undo: Undo?): Cmdline
function Cmdlines:Create(index, class, undo) end
---@overload fun(class: "Cmdline", undo: Undo?, count: integer?): Cmdline
---@overload fun(class: nil, undo: Undo?, count: integer?): Cmdline
function Cmdlines:Append(class, undo, count) end
---@overload fun(class: "Cmdline", undo: Undo?): Cmdline
---@overload fun(class: nil, undo: Undo?): Cmdline
function Cmdlines:Acquire(class, undo) end
---@overload fun(class: "Cmdline", undo: Undo?): Cmdline
---@overload fun(class: nil, undo: Undo?): Cmdline
---@deprecated use "Acquire" instead
function Cmdlines:Aquire(class, undo) end
---@overload fun(index: integer, class: "Cmdline", undo: Undo?, count: integer?): Cmdline
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Cmdline
function Cmdlines:Insert(index, class, undo, count) end
---@overload fun(class: "Cmdline", undo: Undo?): Cmdline
---@overload fun(class: nil, undo: Undo?): Cmdline
function Cmdlines:Find(class, undo) end
---@overload fun(property_name: "Profile", property_value: UserProfile)
---@overload fun(property_name: "MaxStep", property_value: integer)
---@overload fun(property_name: "Action", property_value: fun(command: string) : boolean)
---@overload fun(property_name: "DMXReadout", property_value: DMXReadoutMode)
---@overload fun(property_name: "Destination", property_value: Object)
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "DMXReadout", property_value: DMXReadoutMode)
---@overload fun(property_name: "Destination", property_value: Object)
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "Profile", property_value: UserProfile)
---@overload fun(property_name: "Action", property_value: fun(command: string) : boolean)
---@overload fun(property_name: "ClearCmd"|"RefreshMetaData", property_value: fun(str: string) : boolean)
---@overload fun(property_name: "MaxStep", property_value: integer)
---@overload fun(property_name: "CmdText"|"LastCommand", property_value: string)
function Cmdlines:SetChildren(property_name, property_value) end