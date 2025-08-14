---@meta

---@class UserProfiles: Object Container for all user profiles.
local UserProfiles = {}
---@return "UserProfiles"
function UserProfiles:GetClass() end
---@return "UserProfile"
function UserProfiles:GetChildClass() end
---@return ShowData
function UserProfiles:Parent() end
---@param index integer
---@return UserProfile
function UserProfiles:Ptr(index) end
---@return UserProfile[]
function UserProfiles:Children() end
---@return UserProfile?
function UserProfiles:CurrentChild() end
---@overload fun(name: integer, role: nil): UserProfile
function UserProfiles:Get(name, role) end
---@generic T : UserProfile
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserProfile
function UserProfiles:Create(index, class, undo) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserProfile
function UserProfiles:Append(class, undo, count) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserProfile
function UserProfiles:Acquire(class, undo) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserProfile
---@deprecated use "Acquire" instead
function UserProfiles:Aquire(class, undo) end
---@generic T : UserProfile
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserProfile
function UserProfiles:Insert(index, class, undo, count) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserProfile
function UserProfiles:Find(class, undo) end