---@meta

---@class Views: GenericPool
local Views = {}
---@return "Views"
function Views:GetClass() end
---@return "View"
function Views:GetChildClass() end
---@generic T : Views
---@param class `T`
---@return boolean
function Views:IsClass(class) end
---@return UserProfile
function Views:Parent() end
---@param index integer
---@return View
function Views:Ptr(index) end
---@return View[]
function Views:Children() end
---@return View?
function Views:CurrentChild() end
---@overload fun(name: integer, role: nil): View
function Views:Get(name, role) end
---@overload fun(index: integer, class: "View", undo: Undo?): View
---@overload fun(index: integer, class: nil, undo: Undo?): View
function Views:Create(index, class, undo) end
---@overload fun(class: "View", undo: Undo?, count: integer?): View
---@overload fun(class: nil, undo: Undo?, count: integer?): View
function Views:Append(class, undo, count) end
---@overload fun(class: "View", undo: Undo?): View
---@overload fun(class: nil, undo: Undo?): View
function Views:Acquire(class, undo) end
---@overload fun(class: "View", undo: Undo?): View
---@overload fun(class: nil, undo: Undo?): View
---@deprecated use "Acquire" instead
function Views:Aquire(class, undo) end
---@overload fun(index: integer, class: "View", undo: Undo?, count: integer?): View
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): View
function Views:Insert(index, class, undo, count) end
---@overload fun(class: "View", undo: Undo?): View
---@overload fun(class: nil, undo: Undo?): View
function Views:Find(class, undo) end
---@overload fun(property_name: "ScreenContentMask", property_value: integer)
---@overload fun(property_name: "RequestedW"|"RequestedH", property_value: RequestedSize)
---@overload fun(property_name: "ScreenContentMask", property_value: integer)
function Views:SetChildren(property_name, property_value) end