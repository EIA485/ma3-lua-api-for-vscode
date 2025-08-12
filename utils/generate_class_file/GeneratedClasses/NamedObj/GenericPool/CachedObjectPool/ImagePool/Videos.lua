---@meta

---@class Videos: ImagePool
local Videos = {}
---@return "Videos"
function Videos:GetClass() end
---@return "Video"
function Videos:GetChildClass() end
---@return MediaPools
function Videos:Parent() end
---@param index integer
---@return Video
function Videos:Ptr(index) end
---@return Video[]
function Videos:Children() end
---@return Video?
function Videos:CurrentChild() end
---@overload fun(name: integer, role: nil): Video
function Videos:Get(name, role) end
---@overload fun(index: integer, class: "Video", undo: Undo?): Video
---@overload fun(index: integer, class: nil, undo: Undo?): Video
function Videos:Create(index, class, undo) end
---@overload fun(class: "Video", undo: Undo?, count: integer?): Video
---@overload fun(class: nil, undo: Undo?, count: integer?): Video
function Videos:Append(class, undo, count) end
---@overload fun(class: "Video", undo: Undo?): Video
---@overload fun(class: nil, undo: Undo?): Video
function Videos:Acquire(class, undo) end
---@overload fun(class: "Video", undo: Undo?): Video
---@overload fun(class: nil, undo: Undo?): Video
---@deprecated use "Acquire" instead
function Videos:Aquire(class, undo) end
---@overload fun(index: integer, class: "Video", undo: Undo?, count: integer?): Video
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Video
function Videos:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Video"): Video
---@overload fun(name: string, class: nil): Video
function Videos:Find(name, class) end
---@overload fun(name: string, class: "Video"): Video
---@overload fun(name: string, class: nil): Object
function Videos:FindRecursive(name, class) end
