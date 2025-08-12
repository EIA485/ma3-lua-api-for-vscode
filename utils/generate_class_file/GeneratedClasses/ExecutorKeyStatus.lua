---@meta

---@class ExecutorKeyStatus: Object
---@field KeyStatus Container.BitMask<433> Executor key status bitfield.
---@field FaderStatus Container.BitMask<433> Executor fader status bitfield.
---@field FaderError Container.BitMask<433> Executor fader position error bitfield.
local ExecutorKeyStatus = {
    KeyStatus="false",
    FaderStatus="false",
    FaderError="false"
}
---@return "ExecutorKeyStatus"
function ExecutorKeyStatus:GetClass() end
---@return "Object"
function ExecutorKeyStatus:GetChildClass() end
---@return HardwareStatus
function ExecutorKeyStatus:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "KeyStatus"|"FaderStatus"|"FaderError", role: nil): Container.BitMask<433>
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"KeyStatus"|"FaderStatus"|"FaderError", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ExecutorKeyStatus:Get(name, role) end
