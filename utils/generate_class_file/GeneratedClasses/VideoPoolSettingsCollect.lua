---@meta

---@class VideoPoolSettingsCollect: Object
local VideoPoolSettingsCollect = {}
---@return "VideoPoolSettingsCollect"
function VideoPoolSettingsCollect:GetClass() end
---@return "VideoPoolSettings"
function VideoPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return VideoPoolSettings
function VideoPoolSettingsCollect:Ptr(index) end
---@return VideoPoolSettings[]
function VideoPoolSettingsCollect:Children() end
---@return VideoPoolSettings?
function VideoPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): VideoPoolSettings
function VideoPoolSettingsCollect:Get(name, role) end
---@generic T : VideoPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): VideoPoolSettings
function VideoPoolSettingsCollect:Create(index, class, undo) end
---@generic T : VideoPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): VideoPoolSettings
function VideoPoolSettingsCollect:Append(class, undo, count) end
---@generic T : VideoPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VideoPoolSettings
function VideoPoolSettingsCollect:Acquire(class, undo) end
---@generic T : VideoPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VideoPoolSettings
---@deprecated use "Acquire" instead
function VideoPoolSettingsCollect:Aquire(class, undo) end
---@generic T : VideoPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): VideoPoolSettings
function VideoPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : VideoPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VideoPoolSettings
function VideoPoolSettingsCollect:Find(class, undo) end