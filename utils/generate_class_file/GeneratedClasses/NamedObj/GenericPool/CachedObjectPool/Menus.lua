---@meta

---@class Menus: CachedObjectPool
local Menus = {}
---@return "Menus"
function Menus:GetClass() end
---@return "Menu"
function Menus:GetChildClass() end
---@generic T : Menus
---@param class `T`
---@return boolean
function Menus:IsClass(class) end
---@return Root
function Menus:Parent() end
---@param index integer
---@return Menu
function Menus:Ptr(index) end
---@return Menu[]
function Menus:Children() end
---@return Menu?
function Menus:CurrentChild() end
---@overload fun(name: integer, role: nil): Menu
function Menus:Get(name, role) end
---@generic T : Menu
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Menu
function Menus:Create(index, class, undo) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Menu
function Menus:Append(class, undo, count) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Menu
function Menus:Acquire(class, undo) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Menu
---@deprecated use "Acquire" instead
function Menus:Aquire(class, undo) end
---@generic T : Menu
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Menu
function Menus:Insert(index, class, undo, count) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Menu
function Menus:Find(class, undo) end
---@overload fun(property_name: "PultType", property_value: PultType)
---@overload fun(property_name: "HostType", property_value: HostType)
---@overload fun(property_name: "HostSubType", property_value: HostSubType)
---@overload fun(property_name: "HostOs", property_value: HostOs)
---@overload fun(property_name: "DisplayExcludeMask", property_value: integer)
---@overload fun(property_name: "Placement", property_value: PluginPlacement)
---@overload fun(property_name: "DisplayTo"|"DisplayFrom", property_value: DisplayNumber)
---@overload fun(property_name: "HostOs", property_value: HostOs)
---@overload fun(property_name: "HostSubType", property_value: HostSubType)
---@overload fun(property_name: "HostType", property_value: HostType)
---@overload fun(property_name: "Placement", property_value: PluginPlacement)
---@overload fun(property_name: "PultType", property_value: PultType)
---@overload fun(property_name: "Core"|"DisplayIndexConfigurable", property_value: YesNo|boolean)
---@overload fun(property_name: "DisplayExcludeMask", property_value: integer)
function Menus:Placement(property_name, property_value) end