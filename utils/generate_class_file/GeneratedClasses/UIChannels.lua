---@meta

---@class UIChannels: Object
local UIChannels = {}
---@return "UIChannels"
function UIChannels:GetClass() end
---@return "UIChannel"
function UIChannels:GetChildClass() end
---@generic T : UIChannels
---@param class `T`
---@return boolean
function UIChannels:IsClass(class) end
---@return Patch
function UIChannels:Parent() end
---@param index integer
---@return UIChannel
function UIChannels:Ptr(index) end
---@return UIChannel[]
function UIChannels:Children() end
---@return UIChannel?
function UIChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): UIChannel
function UIChannels:Get(name, role) end
---@generic T : UIChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UIChannel
function UIChannels:Create(index, class, undo) end
---@generic T : UIChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UIChannel
function UIChannels:Append(class, undo, count) end
---@generic T : UIChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIChannel
function UIChannels:Acquire(class, undo) end
---@generic T : UIChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIChannel
---@deprecated use "Acquire" instead
function UIChannels:Aquire(class, undo) end
---@generic T : UIChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIChannel
function UIChannels:Insert(index, class, undo, count) end
---@generic T : UIChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIChannel
function UIChannels:Find(class, undo) end
---@overload fun(property_name: "Snap", property_value: Yes|true)
---@overload fun(property_name: "Master", property_value: MasterReaction)
---@overload fun(property_name: "Master", property_value: MasterReaction)
---@overload fun(property_name: "Snap", property_value: Yes|true)
---@overload fun(property_name: "Type"|"SubAttribute", property_value: string)
function UIChannels:Master(property_name, property_value) end