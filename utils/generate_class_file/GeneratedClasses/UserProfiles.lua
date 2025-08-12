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
---@overload fun(index: integer, class: "UserProfile", undo: Undo?): UserProfile
---@overload fun(index: integer, class: nil, undo: Undo?): UserProfile
function UserProfiles:Create(index, class, undo) end
---@overload fun(class: "UserProfile", undo: Undo?, count: integer?): UserProfile
---@overload fun(class: nil, undo: Undo?, count: integer?): UserProfile
function UserProfiles:Append(class, undo, count) end
---@overload fun(class: "UserProfile", undo: Undo?): UserProfile
---@overload fun(class: nil, undo: Undo?): UserProfile
function UserProfiles:Acquire(class, undo) end
---@overload fun(class: "UserProfile", undo: Undo?): UserProfile
---@overload fun(class: nil, undo: Undo?): UserProfile
---@deprecated use "Acquire" instead
function UserProfiles:Aquire(class, undo) end
---@overload fun(index: integer, class: "UserProfile", undo: Undo?, count: integer?): UserProfile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserProfile
function UserProfiles:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UserProfile"): UserProfile
---@overload fun(name: string, class: nil): UserProfile
function UserProfiles:Find(name, class) end
---@overload fun(name: string, class: "UserProfile"): UserProfile
---@overload fun(name: string, class: nil): Object
function UserProfiles:FindRecursive(name, class) end
