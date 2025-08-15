---@meta

---@class Videos: ImagePool
local Videos = {}
---@return "Videos"
function Videos:GetClass() end
---@return "Video"
function Videos:GetChildClass() end
---@generic T : Videos
---@param class `T`
---@return boolean
function Videos:IsClass(class) end
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
---@generic T : Video
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Video
function Videos:Create(index, class, undo) end
---@generic T : Video
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Video
function Videos:Append(class, undo, count) end
---@generic T : Video
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Video
function Videos:Acquire(class, undo) end
---@generic T : Video
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Video
---@deprecated use "Acquire" instead
function Videos:Aquire(class, undo) end
---@generic T : Video
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Video
function Videos:Insert(index, class, undo, count) end
---@generic T : Video
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Video
function Videos:Find(class, undo) end
---@overload fun(property_name: "Source", property_value: VideoFileSource)
---@overload fun(property_name: "NDIBandwidth", property_value: NDIBandwidth)
---@overload fun(property_name: "Duration", property_value: TimePropertyValue)
---@overload fun(property_name: "NDISource", property_value: NDISource)
---@overload fun(property_name: "NDIBandwidth", property_value: NDIBandwidth)
---@overload fun(property_name: "NDISource", property_value: NDISource)
---@overload fun(property_name: "Duration", property_value: TimePropertyValue)
---@overload fun(property_name: "Source", property_value: VideoFileSource)
function Videos:NDISource(property_name, property_value) end