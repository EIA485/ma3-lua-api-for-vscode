---@meta

---@class MasterPoolPlayback: MasterPool
local MasterPoolPlayback = {}
---@return "MasterPoolPlayback"
function MasterPoolPlayback:GetClass() end
---@return "MasterPlayback"
function MasterPoolPlayback:GetChildClass() end
---@param index integer
---@return MasterPlayback
function MasterPoolPlayback:Ptr(index) end
---@return MasterPlayback[]
function MasterPoolPlayback:Children() end
---@return MasterPlayback?
function MasterPoolPlayback:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterPlayback
function MasterPoolPlayback:Get(name, role) end
---@overload fun(index: integer, class: "MasterPlayback", undo: Undo?): MasterPlayback
---@overload fun(index: integer, class: nil, undo: Undo?): MasterPlayback
function MasterPoolPlayback:Create(index, class, undo) end
---@overload fun(class: "MasterPlayback", undo: Undo?, count: integer?): MasterPlayback
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterPlayback
function MasterPoolPlayback:Append(class, undo, count) end
---@overload fun(class: "MasterPlayback", undo: Undo?): MasterPlayback
---@overload fun(class: nil, undo: Undo?): MasterPlayback
function MasterPoolPlayback:Acquire(class, undo) end
---@overload fun(class: "MasterPlayback", undo: Undo?): MasterPlayback
---@overload fun(class: nil, undo: Undo?): MasterPlayback
---@deprecated use "Acquire" instead
function MasterPoolPlayback:Aquire(class, undo) end
---@overload fun(index: integer, class: "MasterPlayback", undo: Undo?, count: integer?): MasterPlayback
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterPlayback
function MasterPoolPlayback:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MasterPlayback"): MasterPlayback
---@overload fun(name: string, class: nil): MasterPlayback
function MasterPoolPlayback:Find(name, class) end
---@overload fun(name: string, class: "MasterPlayback"): MasterPlayback
---@overload fun(name: string, class: nil): Object
function MasterPoolPlayback:FindRecursive(name, class) end
