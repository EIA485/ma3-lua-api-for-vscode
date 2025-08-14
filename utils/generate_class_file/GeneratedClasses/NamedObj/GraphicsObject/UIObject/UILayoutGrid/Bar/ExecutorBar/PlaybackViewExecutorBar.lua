---@meta

---@class PlaybackViewExecutorBar: ExecutorBar
local PlaybackViewExecutorBar = {}
---@return "PlaybackViewExecutorBar"
function PlaybackViewExecutorBar:GetClass() end
---@return "ExecutorSection"
function PlaybackViewExecutorBar:GetChildClass() end
---@return UILayoutGrid
function PlaybackViewExecutorBar:Parent() end
---@param index integer
---@return ExecutorSection
function PlaybackViewExecutorBar:Ptr(index) end
---@return ExecutorSection[]
function PlaybackViewExecutorBar:Children() end
---@return ExecutorSection?
function PlaybackViewExecutorBar:CurrentChild() end
---@overload fun(name: integer, role: nil): ExecutorSection
function PlaybackViewExecutorBar:Get(name, role) end
---@overload fun(index: integer, class: "ExecutorSection", undo: Undo?): ExecutorSection
---@overload fun(index: integer, class: nil, undo: Undo?): ExecutorSection
function PlaybackViewExecutorBar:Create(index, class, undo) end
---@overload fun(class: "ExecutorSection", undo: Undo?, count: integer?): ExecutorSection
---@overload fun(class: nil, undo: Undo?, count: integer?): ExecutorSection
function PlaybackViewExecutorBar:Append(class, undo, count) end
---@overload fun(class: "ExecutorSection", undo: Undo?): ExecutorSection
---@overload fun(class: nil, undo: Undo?): ExecutorSection
function PlaybackViewExecutorBar:Acquire(class, undo) end
---@overload fun(class: "ExecutorSection", undo: Undo?): ExecutorSection
---@overload fun(class: nil, undo: Undo?): ExecutorSection
---@deprecated use "Acquire" instead
function PlaybackViewExecutorBar:Aquire(class, undo) end
---@overload fun(index: integer, class: "ExecutorSection", undo: Undo?, count: integer?): ExecutorSection
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ExecutorSection
function PlaybackViewExecutorBar:Insert(index, class, undo, count) end
---@overload fun(class: "ExecutorSection", undo: Undo?): ExecutorSection
---@overload fun(class: nil, undo: Undo?): ExecutorSection
function PlaybackViewExecutorBar:Find(class, undo) end