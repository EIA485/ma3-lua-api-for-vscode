---@meta

---@class VKValue: Object
---@field Release string
---@field Press string
---@field DoublePress string
---@field Hold string
---@field Modifier VirtualKeyCode
---@field FirstToken PresetActionToken
---@field LastObjectToken PresetActionToken
---@field LastCommandToken PresetActionToken
---@field Execution VirtualKeyExecutionType
---@field RedirectKeyCode SCVirtualKeyCode
---@field RedirectChar string
---@field DisplayText string
---@field RedirectWithShift integer
---@field RedirectWithCtrl integer
---@field RedirectWithAlt integer
---@field AlwaysNumericRedirect integer
---@field Remember integer
---@field PressSyntaxState integer
---@field ReleaseSyntaxState integer
local VKValue = {
    Execution="Normal",
    RedirectKeyCode="None",
    RedirectWithShift="0",
    RedirectWithCtrl="0",
    RedirectWithAlt="0",
    AlwaysNumericRedirect="0",
    Remember="0",
    PressSyntaxState="None",
    ReleaseSyntaxState="None"
}
---@return "VKValue"
function VKValue:GetClass() end
---@return "Object"
function VKValue:GetChildClass() end
---@return VirtualKey
function VKValue:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Release"|"Press"|"DoublePress"|"Hold", role: nil): string
---@overload fun(name: "Modifier", role: nil): VirtualKeyCode
---@overload fun(name: "FirstToken"|"LastObjectToken"|"LastCommandToken", role: nil): PresetActionToken
---@overload fun(name: "Execution", role: nil): VirtualKeyExecutionType
---@overload fun(name: "RedirectKeyCode", role: nil): SCVirtualKeyCode
---@overload fun(name: "RedirectChar"|"DisplayText", role: nil): string
---@overload fun(name: "RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"AlwaysNumericRedirect"|"Remember"|"PressSyntaxState"|"ReleaseSyntaxState", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Release"|"Press"|"DoublePress"|"Hold"|"Modifier"|"FirstToken"|"LastObjectToken"|"LastCommandToken"|"Execution"|"RedirectKeyCode"|"RedirectChar"|"DisplayText"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"AlwaysNumericRedirect"|"Remember"|"PressSyntaxState"|"ReleaseSyntaxState", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function VKValue:Get(name, role) end
