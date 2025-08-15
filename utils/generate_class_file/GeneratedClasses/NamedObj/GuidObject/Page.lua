---@meta

---@class Page: GuidObject A page of executors.
local Page = {}
---@return "Page"
function Page:GetClass() end
---@return "Proxy"
function Page:GetChildClass() end
---@generic T : Page
---@param class `T`
---@return boolean
function Page:IsClass(class) end
---@return Pages
function Page:Parent() end
---@param index integer
---@return Proxy
function Page:Ptr(index) end
---@return Proxy[]
function Page:Children() end
---@return Proxy?
function Page:CurrentChild() end
---@overload fun(name: integer, role: nil): Proxy
function Page:Get(name, role) end
---@overload fun(index: integer, class: "Proxy", undo: Undo?): Proxy
---@overload fun(index: integer, class: "Exec", undo: Undo?): Exec
---@overload fun(index: integer, class: nil, undo: Undo?): Proxy
function Page:Create(index, class, undo) end
---@overload fun(class: "Proxy", undo: Undo?, count: integer?): Proxy
---@overload fun(class: "Exec", undo: Undo?, count: integer?): Exec
---@overload fun(class: nil, undo: Undo?, count: integer?): Proxy
function Page:Append(class, undo, count) end
---@overload fun(class: "Proxy", undo: Undo?): Proxy
---@overload fun(class: "Exec", undo: Undo?): Exec
---@overload fun(class: nil, undo: Undo?): Proxy
function Page:Acquire(class, undo) end
---@overload fun(class: "Proxy", undo: Undo?): Proxy
---@overload fun(class: "Exec", undo: Undo?): Exec
---@overload fun(class: nil, undo: Undo?): Proxy
---@deprecated use "Acquire" instead
function Page:Aquire(class, undo) end
---@overload fun(index: integer, class: "Proxy", undo: Undo?, count: integer?): Proxy
---@overload fun(index: integer, class: "Exec", undo: Undo?, count: integer?): Exec
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Proxy
function Page:Insert(index, class, undo, count) end
---@overload fun(class: "Proxy", undo: Undo?): Proxy
---@overload fun(class: "Exec", undo: Undo?): Exec
---@overload fun(class: nil, undo: Undo?): Proxy
function Page:Find(class, undo) end
---@overload fun(property_name: "Object", property_value: Object)
---@overload fun(property_name: "IsXKey", property_value: YesNo|boolean)
---@overload fun(property_name: "Exec", property_value: Exec)
---@overload fun(property_name: "ExecutorConfiguration", property_value: Configuration)
---@overload fun(property_name: "ExecutorConfiguration", property_value: Configuration)
---@overload fun(property_name: "Exec", property_value: Exec)
---@overload fun(property_name: "Object", property_value: Object)
---@overload fun(property_name: "IsXKey", property_value: YesNo|boolean)
---@overload fun(property_name: "TotalPrimaryAssignmentChanged"|"TotalSecondaryAssignmentChanged"|"Width"|"Height"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged", property_value: integer)
function Page:ExecutorConfiguration(property_name, property_value) end