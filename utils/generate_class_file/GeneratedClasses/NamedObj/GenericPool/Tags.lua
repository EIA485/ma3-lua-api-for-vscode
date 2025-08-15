---@meta

---@class Tags: GenericPool
local Tags = {}
---@return "Tags"
function Tags:GetClass() end
---@return "Tag"
function Tags:GetChildClass() end
---@generic T : Tags
---@param class `T`
---@return boolean
function Tags:IsClass(class) end
---@param index integer
---@return Tag
function Tags:Ptr(index) end
---@return Tag[]
function Tags:Children() end
---@return Tag?
function Tags:CurrentChild() end
---@overload fun(name: integer, role: nil): Tag
function Tags:Get(name, role) end
---@generic T : Tag
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Tag
function Tags:Create(index, class, undo) end
---@generic T : Tag
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Tag
function Tags:Append(class, undo, count) end
---@generic T : Tag
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tag
function Tags:Acquire(class, undo) end
---@generic T : Tag
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tag
---@deprecated use "Acquire" instead
function Tags:Aquire(class, undo) end
---@generic T : Tag
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Tag
function Tags:Insert(index, class, undo, count) end
---@generic T : Tag
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tag
function Tags:Find(class, undo) end
---@overload fun(property_name: "TagType", property_value: TagType)
---@overload fun(property_name: "ForwardCommands", property_value: YesNo|boolean)
---@overload fun(property_name: "TagType", property_value: TagType)
---@overload fun(property_name: "ForwardCommands", property_value: YesNo|boolean)
function Tags:ForwardCommands(property_name, property_value) end