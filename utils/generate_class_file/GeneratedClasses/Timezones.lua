---@meta

---@class Timezones: Object
local Timezones = {}
---@return "Timezones"
function Timezones:GetClass() end
---@return "Timezone"
function Timezones:GetChildClass() end
---@param index integer
---@return Timezone
function Timezones:Ptr(index) end
---@return Timezone[]
function Timezones:Children() end
---@return Timezone?
function Timezones:CurrentChild() end
---@overload fun(name: integer, role: nil): Timezone
function Timezones:Get(name, role) end
---@overload fun(index: integer, class: "Timezone", undo: Undo?): Timezone
---@overload fun(index: integer, class: nil, undo: Undo?): Timezone
function Timezones:Create(index, class, undo) end
---@overload fun(class: "Timezone", undo: Undo?, count: integer?): Timezone
---@overload fun(class: nil, undo: Undo?, count: integer?): Timezone
function Timezones:Append(class, undo, count) end
---@overload fun(class: "Timezone", undo: Undo?): Timezone
---@overload fun(class: nil, undo: Undo?): Timezone
function Timezones:Acquire(class, undo) end
---@overload fun(class: "Timezone", undo: Undo?): Timezone
---@overload fun(class: nil, undo: Undo?): Timezone
---@deprecated use "Acquire" instead
function Timezones:Aquire(class, undo) end
---@overload fun(index: integer, class: "Timezone", undo: Undo?, count: integer?): Timezone
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timezone
function Timezones:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Timezone"): Timezone
---@overload fun(name: string, class: nil): Timezone
function Timezones:Find(name, class) end
---@overload fun(name: string, class: "Timezone"): Timezone
---@overload fun(name: string, class: nil): Object
function Timezones:FindRecursive(name, class) end
