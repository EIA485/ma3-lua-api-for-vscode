---@meta

---@class Timezones: Object
local Timezones = {}
---@return "Timezones"
function Timezones:GetClass() end
---@return "Timezone"
function Timezones:GetChildClass() end
---@generic T : Timezones
---@param class `T`
---@return boolean
function Timezones:IsClass(class) end
---@param index integer
---@return Timezone
function Timezones:Ptr(index) end
---@return Timezone[]
function Timezones:Children() end
---@return Timezone?
function Timezones:CurrentChild() end
---@overload fun(name: integer, role: nil): Timezone
function Timezones:Get(name, role) end
---@generic T : Timezone
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Timezone
function Timezones:Create(index, class, undo) end
---@generic T : Timezone
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Timezone
function Timezones:Append(class, undo, count) end
---@generic T : Timezone
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timezone
function Timezones:Acquire(class, undo) end
---@generic T : Timezone
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timezone
---@deprecated use "Acquire" instead
function Timezones:Aquire(class, undo) end
---@generic T : Timezone
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timezone
function Timezones:Insert(index, class, undo, count) end
---@generic T : Timezone
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timezone
function Timezones:Find(class, undo) end
function Timezones:SetChildren(property_name, property_value) end