---@meta

---@class RDMAbsentNotification: Object
local RDMAbsentNotification = {}
---@return "RDMAbsentNotification"
function RDMAbsentNotification:GetClass() end
---@return "ValueBase"
function RDMAbsentNotification:GetChildClass() end
---@return Notifications
function RDMAbsentNotification:Parent() end
---@param index integer
---@return ValueBase
function RDMAbsentNotification:Ptr(index) end
---@return ValueBase[]
function RDMAbsentNotification:Children() end
---@return ValueBase?
function RDMAbsentNotification:CurrentChild() end
---@overload fun(name: integer, role: nil): ValueBase
function RDMAbsentNotification:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function RDMAbsentNotification:FindRecursive(name, class) end
