---@meta

---@class GridColumnConfigurationCollect: Object
local GridColumnConfigurationCollect = {}
---@return "GridColumnConfigurationCollect"
function GridColumnConfigurationCollect:GetClass() end
---@return "GridColumnConfiguration"
function GridColumnConfigurationCollect:GetChildClass() end
---@param index integer
---@return GridColumnConfiguration
function GridColumnConfigurationCollect:Ptr(index) end
---@return GridColumnConfiguration[]
function GridColumnConfigurationCollect:Children() end
---@return GridColumnConfiguration?
function GridColumnConfigurationCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): GridColumnConfiguration
function GridColumnConfigurationCollect:Get(name, role) end
---@overload fun(index: integer, class: "GridColumnConfiguration", undo: Undo?): GridColumnConfiguration
---@overload fun(index: integer, class: "FixtureChannelGridColumnConfiguration", undo: Undo?): FixtureChannelGridColumnConfiguration
---@overload fun(index: integer, class: "DBObjectGridColumnConfiguration", undo: Undo?): DBObjectGridColumnConfiguration
---@overload fun(index: integer, class: "TimecodeGridColumnConfiguration", undo: Undo?): TimecodeGridColumnConfiguration
---@overload fun(index: integer, class: "TrackSheetGridColumnConfiguration", undo: Undo?): TrackSheetGridColumnConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?): GridColumnConfiguration
function GridColumnConfigurationCollect:Create(index, class, undo) end
---@overload fun(class: "GridColumnConfiguration", undo: Undo?, count: integer?): GridColumnConfiguration
---@overload fun(class: "FixtureChannelGridColumnConfiguration", undo: Undo?, count: integer?): FixtureChannelGridColumnConfiguration
---@overload fun(class: "DBObjectGridColumnConfiguration", undo: Undo?, count: integer?): DBObjectGridColumnConfiguration
---@overload fun(class: "TimecodeGridColumnConfiguration", undo: Undo?, count: integer?): TimecodeGridColumnConfiguration
---@overload fun(class: "TrackSheetGridColumnConfiguration", undo: Undo?, count: integer?): TrackSheetGridColumnConfiguration
---@overload fun(class: nil, undo: Undo?, count: integer?): GridColumnConfiguration
function GridColumnConfigurationCollect:Append(class, undo, count) end
---@overload fun(class: "GridColumnConfiguration", undo: Undo?): GridColumnConfiguration
---@overload fun(class: "FixtureChannelGridColumnConfiguration", undo: Undo?): FixtureChannelGridColumnConfiguration
---@overload fun(class: "DBObjectGridColumnConfiguration", undo: Undo?): DBObjectGridColumnConfiguration
---@overload fun(class: "TimecodeGridColumnConfiguration", undo: Undo?): TimecodeGridColumnConfiguration
---@overload fun(class: "TrackSheetGridColumnConfiguration", undo: Undo?): TrackSheetGridColumnConfiguration
---@overload fun(class: nil, undo: Undo?): GridColumnConfiguration
function GridColumnConfigurationCollect:Acquire(class, undo) end
---@overload fun(class: "GridColumnConfiguration", undo: Undo?): GridColumnConfiguration
---@overload fun(class: "FixtureChannelGridColumnConfiguration", undo: Undo?): FixtureChannelGridColumnConfiguration
---@overload fun(class: "DBObjectGridColumnConfiguration", undo: Undo?): DBObjectGridColumnConfiguration
---@overload fun(class: "TimecodeGridColumnConfiguration", undo: Undo?): TimecodeGridColumnConfiguration
---@overload fun(class: "TrackSheetGridColumnConfiguration", undo: Undo?): TrackSheetGridColumnConfiguration
---@overload fun(class: nil, undo: Undo?): GridColumnConfiguration
---@deprecated use "Acquire" instead
function GridColumnConfigurationCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridColumnConfiguration", undo: Undo?, count: integer?): GridColumnConfiguration
---@overload fun(index: integer, class: "FixtureChannelGridColumnConfiguration", undo: Undo?, count: integer?): FixtureChannelGridColumnConfiguration
---@overload fun(index: integer, class: "DBObjectGridColumnConfiguration", undo: Undo?, count: integer?): DBObjectGridColumnConfiguration
---@overload fun(index: integer, class: "TimecodeGridColumnConfiguration", undo: Undo?, count: integer?): TimecodeGridColumnConfiguration
---@overload fun(index: integer, class: "TrackSheetGridColumnConfiguration", undo: Undo?, count: integer?): TrackSheetGridColumnConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridColumnConfiguration
function GridColumnConfigurationCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GridColumnConfiguration"): GridColumnConfiguration
---@overload fun(name: string, class: "FixtureChannelGridColumnConfiguration"): FixtureChannelGridColumnConfiguration
---@overload fun(name: string, class: "DBObjectGridColumnConfiguration"): DBObjectGridColumnConfiguration
---@overload fun(name: string, class: "TimecodeGridColumnConfiguration"): TimecodeGridColumnConfiguration
---@overload fun(name: string, class: "TrackSheetGridColumnConfiguration"): TrackSheetGridColumnConfiguration
---@overload fun(name: string, class: nil): GridColumnConfiguration
function GridColumnConfigurationCollect:Find(name, class) end
---@overload fun(name: string, class: "GridColumnConfiguration"): GridColumnConfiguration
---@overload fun(name: string, class: "FixtureChannelGridColumnConfiguration"): FixtureChannelGridColumnConfiguration
---@overload fun(name: string, class: "DBObjectGridColumnConfiguration"): DBObjectGridColumnConfiguration
---@overload fun(name: string, class: "TimecodeGridColumnConfiguration"): TimecodeGridColumnConfiguration
---@overload fun(name: string, class: "TrackSheetGridColumnConfiguration"): TrackSheetGridColumnConfiguration
---@overload fun(name: string, class: nil): Object
function GridColumnConfigurationCollect:FindRecursive(name, class) end
