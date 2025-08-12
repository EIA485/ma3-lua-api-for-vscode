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
---@overload fun(index: integer, class: "VideoPoolSettings", undo: Undo?): VideoPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): VideoPoolSettings
function VideoPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "VideoPoolSettings", undo: Undo?, count: integer?): VideoPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): VideoPoolSettings
function VideoPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "VideoPoolSettings", undo: Undo?): VideoPoolSettings
---@overload fun(class: nil, undo: Undo?): VideoPoolSettings
function VideoPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "VideoPoolSettings", undo: Undo?): VideoPoolSettings
---@overload fun(class: nil, undo: Undo?): VideoPoolSettings
---@deprecated use "Acquire" instead
function VideoPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "VideoPoolSettings", undo: Undo?, count: integer?): VideoPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): VideoPoolSettings
function VideoPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "VideoPoolSettings"): VideoPoolSettings
---@overload fun(name: string, class: nil): VideoPoolSettings
function VideoPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "VideoPoolSettings"): VideoPoolSettings
---@overload fun(name: string, class: nil): Object
function VideoPoolSettingsCollect:FindRecursive(name, class) end
