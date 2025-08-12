---@meta

---@class FixtureFilterRules: Object
---@field Not integer
local FixtureFilterRules = {
    Not="No"
}
---@return "FixtureFilterRules"
function FixtureFilterRules:GetClass() end
---@return "FilterRuleFixture"
function FixtureFilterRules:GetChildClass() end
---@return World
function FixtureFilterRules:Parent() end
---@param index integer
---@return FilterRuleFixture
function FixtureFilterRules:Ptr(index) end
---@return FilterRuleFixture[]
function FixtureFilterRules:Children() end
---@return FilterRuleFixture?
function FixtureFilterRules:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Not", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Not", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FilterRuleFixture
function FixtureFilterRules:Get(name, role) end
---@overload fun(index: integer, class: "FilterRuleFixture", undo: Undo?): FilterRuleFixture
---@overload fun(index: integer, class: "FixtureFilterRuleName", undo: Undo?): FixtureFilterRuleName
---@overload fun(index: integer, class: "FixtureFilterRulePatch", undo: Undo?): FixtureFilterRulePatch
---@overload fun(index: integer, class: "FixtureFilterRuleNumericRanges", undo: Undo?): FixtureFilterRuleNumericRanges
---@overload fun(index: integer, class: "FixtureFilterRuleCID", undo: Undo?): FixtureFilterRuleCID
---@overload fun(index: integer, class: "FixtureFilterRuleFID", undo: Undo?): FixtureFilterRuleFID
---@overload fun(index: integer, class: "FixtureFilterRuleRotZ", undo: Undo?): FixtureFilterRuleRotZ
---@overload fun(index: integer, class: "FixtureFilterRuleRotY", undo: Undo?): FixtureFilterRuleRotY
---@overload fun(index: integer, class: "FixtureFilterRuleRotX", undo: Undo?): FixtureFilterRuleRotX
---@overload fun(index: integer, class: "FixtureFilterRulePosZ", undo: Undo?): FixtureFilterRulePosZ
---@overload fun(index: integer, class: "FixtureFilterRulePosY", undo: Undo?): FixtureFilterRulePosY
---@overload fun(index: integer, class: "FixtureFilterRulePosX", undo: Undo?): FixtureFilterRulePosX
---@overload fun(index: integer, class: "FixtureFilterRuleIndices", undo: Undo?): FixtureFilterRuleIndices
---@overload fun(index: integer, class: "FixtureFilterRuleParent", undo: Undo?): FixtureFilterRuleParent
---@overload fun(index: integer, class: "FixtureFilterRuleFixtureType", undo: Undo?): FixtureFilterRuleFixtureType
---@overload fun(index: integer, class: "FixtureFilterRuleIDType", undo: Undo?): FixtureFilterRuleIDType
---@overload fun(index: integer, class: "FixtureFilterRuleClass", undo: Undo?): FixtureFilterRuleClass
---@overload fun(index: integer, class: "FixtureFilterRuleLayer", undo: Undo?): FixtureFilterRuleLayer
---@overload fun(index: integer, class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Create(index, class, undo) end
---@overload fun(class: "FilterRuleFixture", undo: Undo?, count: integer?): FilterRuleFixture
---@overload fun(class: "FixtureFilterRuleName", undo: Undo?, count: integer?): FixtureFilterRuleName
---@overload fun(class: "FixtureFilterRulePatch", undo: Undo?, count: integer?): FixtureFilterRulePatch
---@overload fun(class: "FixtureFilterRuleNumericRanges", undo: Undo?, count: integer?): FixtureFilterRuleNumericRanges
---@overload fun(class: "FixtureFilterRuleCID", undo: Undo?, count: integer?): FixtureFilterRuleCID
---@overload fun(class: "FixtureFilterRuleFID", undo: Undo?, count: integer?): FixtureFilterRuleFID
---@overload fun(class: "FixtureFilterRuleRotZ", undo: Undo?, count: integer?): FixtureFilterRuleRotZ
---@overload fun(class: "FixtureFilterRuleRotY", undo: Undo?, count: integer?): FixtureFilterRuleRotY
---@overload fun(class: "FixtureFilterRuleRotX", undo: Undo?, count: integer?): FixtureFilterRuleRotX
---@overload fun(class: "FixtureFilterRulePosZ", undo: Undo?, count: integer?): FixtureFilterRulePosZ
---@overload fun(class: "FixtureFilterRulePosY", undo: Undo?, count: integer?): FixtureFilterRulePosY
---@overload fun(class: "FixtureFilterRulePosX", undo: Undo?, count: integer?): FixtureFilterRulePosX
---@overload fun(class: "FixtureFilterRuleIndices", undo: Undo?, count: integer?): FixtureFilterRuleIndices
---@overload fun(class: "FixtureFilterRuleParent", undo: Undo?, count: integer?): FixtureFilterRuleParent
---@overload fun(class: "FixtureFilterRuleFixtureType", undo: Undo?, count: integer?): FixtureFilterRuleFixtureType
---@overload fun(class: "FixtureFilterRuleIDType", undo: Undo?, count: integer?): FixtureFilterRuleIDType
---@overload fun(class: "FixtureFilterRuleClass", undo: Undo?, count: integer?): FixtureFilterRuleClass
---@overload fun(class: "FixtureFilterRuleLayer", undo: Undo?, count: integer?): FixtureFilterRuleLayer
---@overload fun(class: nil, undo: Undo?, count: integer?): FilterRuleFixture
function FixtureFilterRules:Append(class, undo, count) end
---@overload fun(class: "FilterRuleFixture", undo: Undo?): FilterRuleFixture
---@overload fun(class: "FixtureFilterRuleName", undo: Undo?): FixtureFilterRuleName
---@overload fun(class: "FixtureFilterRulePatch", undo: Undo?): FixtureFilterRulePatch
---@overload fun(class: "FixtureFilterRuleNumericRanges", undo: Undo?): FixtureFilterRuleNumericRanges
---@overload fun(class: "FixtureFilterRuleCID", undo: Undo?): FixtureFilterRuleCID
---@overload fun(class: "FixtureFilterRuleFID", undo: Undo?): FixtureFilterRuleFID
---@overload fun(class: "FixtureFilterRuleRotZ", undo: Undo?): FixtureFilterRuleRotZ
---@overload fun(class: "FixtureFilterRuleRotY", undo: Undo?): FixtureFilterRuleRotY
---@overload fun(class: "FixtureFilterRuleRotX", undo: Undo?): FixtureFilterRuleRotX
---@overload fun(class: "FixtureFilterRulePosZ", undo: Undo?): FixtureFilterRulePosZ
---@overload fun(class: "FixtureFilterRulePosY", undo: Undo?): FixtureFilterRulePosY
---@overload fun(class: "FixtureFilterRulePosX", undo: Undo?): FixtureFilterRulePosX
---@overload fun(class: "FixtureFilterRuleIndices", undo: Undo?): FixtureFilterRuleIndices
---@overload fun(class: "FixtureFilterRuleParent", undo: Undo?): FixtureFilterRuleParent
---@overload fun(class: "FixtureFilterRuleFixtureType", undo: Undo?): FixtureFilterRuleFixtureType
---@overload fun(class: "FixtureFilterRuleIDType", undo: Undo?): FixtureFilterRuleIDType
---@overload fun(class: "FixtureFilterRuleClass", undo: Undo?): FixtureFilterRuleClass
---@overload fun(class: "FixtureFilterRuleLayer", undo: Undo?): FixtureFilterRuleLayer
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Acquire(class, undo) end
---@overload fun(class: "FilterRuleFixture", undo: Undo?): FilterRuleFixture
---@overload fun(class: "FixtureFilterRuleName", undo: Undo?): FixtureFilterRuleName
---@overload fun(class: "FixtureFilterRulePatch", undo: Undo?): FixtureFilterRulePatch
---@overload fun(class: "FixtureFilterRuleNumericRanges", undo: Undo?): FixtureFilterRuleNumericRanges
---@overload fun(class: "FixtureFilterRuleCID", undo: Undo?): FixtureFilterRuleCID
---@overload fun(class: "FixtureFilterRuleFID", undo: Undo?): FixtureFilterRuleFID
---@overload fun(class: "FixtureFilterRuleRotZ", undo: Undo?): FixtureFilterRuleRotZ
---@overload fun(class: "FixtureFilterRuleRotY", undo: Undo?): FixtureFilterRuleRotY
---@overload fun(class: "FixtureFilterRuleRotX", undo: Undo?): FixtureFilterRuleRotX
---@overload fun(class: "FixtureFilterRulePosZ", undo: Undo?): FixtureFilterRulePosZ
---@overload fun(class: "FixtureFilterRulePosY", undo: Undo?): FixtureFilterRulePosY
---@overload fun(class: "FixtureFilterRulePosX", undo: Undo?): FixtureFilterRulePosX
---@overload fun(class: "FixtureFilterRuleIndices", undo: Undo?): FixtureFilterRuleIndices
---@overload fun(class: "FixtureFilterRuleParent", undo: Undo?): FixtureFilterRuleParent
---@overload fun(class: "FixtureFilterRuleFixtureType", undo: Undo?): FixtureFilterRuleFixtureType
---@overload fun(class: "FixtureFilterRuleIDType", undo: Undo?): FixtureFilterRuleIDType
---@overload fun(class: "FixtureFilterRuleClass", undo: Undo?): FixtureFilterRuleClass
---@overload fun(class: "FixtureFilterRuleLayer", undo: Undo?): FixtureFilterRuleLayer
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
---@deprecated use "Acquire" instead
function FixtureFilterRules:Aquire(class, undo) end
---@overload fun(index: integer, class: "FilterRuleFixture", undo: Undo?, count: integer?): FilterRuleFixture
---@overload fun(index: integer, class: "FixtureFilterRuleName", undo: Undo?, count: integer?): FixtureFilterRuleName
---@overload fun(index: integer, class: "FixtureFilterRulePatch", undo: Undo?, count: integer?): FixtureFilterRulePatch
---@overload fun(index: integer, class: "FixtureFilterRuleNumericRanges", undo: Undo?, count: integer?): FixtureFilterRuleNumericRanges
---@overload fun(index: integer, class: "FixtureFilterRuleCID", undo: Undo?, count: integer?): FixtureFilterRuleCID
---@overload fun(index: integer, class: "FixtureFilterRuleFID", undo: Undo?, count: integer?): FixtureFilterRuleFID
---@overload fun(index: integer, class: "FixtureFilterRuleRotZ", undo: Undo?, count: integer?): FixtureFilterRuleRotZ
---@overload fun(index: integer, class: "FixtureFilterRuleRotY", undo: Undo?, count: integer?): FixtureFilterRuleRotY
---@overload fun(index: integer, class: "FixtureFilterRuleRotX", undo: Undo?, count: integer?): FixtureFilterRuleRotX
---@overload fun(index: integer, class: "FixtureFilterRulePosZ", undo: Undo?, count: integer?): FixtureFilterRulePosZ
---@overload fun(index: integer, class: "FixtureFilterRulePosY", undo: Undo?, count: integer?): FixtureFilterRulePosY
---@overload fun(index: integer, class: "FixtureFilterRulePosX", undo: Undo?, count: integer?): FixtureFilterRulePosX
---@overload fun(index: integer, class: "FixtureFilterRuleIndices", undo: Undo?, count: integer?): FixtureFilterRuleIndices
---@overload fun(index: integer, class: "FixtureFilterRuleParent", undo: Undo?, count: integer?): FixtureFilterRuleParent
---@overload fun(index: integer, class: "FixtureFilterRuleFixtureType", undo: Undo?, count: integer?): FixtureFilterRuleFixtureType
---@overload fun(index: integer, class: "FixtureFilterRuleIDType", undo: Undo?, count: integer?): FixtureFilterRuleIDType
---@overload fun(index: integer, class: "FixtureFilterRuleClass", undo: Undo?, count: integer?): FixtureFilterRuleClass
---@overload fun(index: integer, class: "FixtureFilterRuleLayer", undo: Undo?, count: integer?): FixtureFilterRuleLayer
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FilterRuleFixture
function FixtureFilterRules:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FilterRuleFixture"): FilterRuleFixture
---@overload fun(name: string, class: "FixtureFilterRuleName"): FixtureFilterRuleName
---@overload fun(name: string, class: "FixtureFilterRulePatch"): FixtureFilterRulePatch
---@overload fun(name: string, class: "FixtureFilterRuleNumericRanges"): FixtureFilterRuleNumericRanges
---@overload fun(name: string, class: "FixtureFilterRuleCID"): FixtureFilterRuleCID
---@overload fun(name: string, class: "FixtureFilterRuleFID"): FixtureFilterRuleFID
---@overload fun(name: string, class: "FixtureFilterRuleRotZ"): FixtureFilterRuleRotZ
---@overload fun(name: string, class: "FixtureFilterRuleRotY"): FixtureFilterRuleRotY
---@overload fun(name: string, class: "FixtureFilterRuleRotX"): FixtureFilterRuleRotX
---@overload fun(name: string, class: "FixtureFilterRulePosZ"): FixtureFilterRulePosZ
---@overload fun(name: string, class: "FixtureFilterRulePosY"): FixtureFilterRulePosY
---@overload fun(name: string, class: "FixtureFilterRulePosX"): FixtureFilterRulePosX
---@overload fun(name: string, class: "FixtureFilterRuleIndices"): FixtureFilterRuleIndices
---@overload fun(name: string, class: "FixtureFilterRuleParent"): FixtureFilterRuleParent
---@overload fun(name: string, class: "FixtureFilterRuleFixtureType"): FixtureFilterRuleFixtureType
---@overload fun(name: string, class: "FixtureFilterRuleIDType"): FixtureFilterRuleIDType
---@overload fun(name: string, class: "FixtureFilterRuleClass"): FixtureFilterRuleClass
---@overload fun(name: string, class: "FixtureFilterRuleLayer"): FixtureFilterRuleLayer
---@overload fun(name: string, class: nil): FilterRuleFixture
function FixtureFilterRules:Find(name, class) end
---@overload fun(name: string, class: "FilterRuleFixture"): FilterRuleFixture
---@overload fun(name: string, class: "FixtureFilterRuleName"): FixtureFilterRuleName
---@overload fun(name: string, class: "FixtureFilterRulePatch"): FixtureFilterRulePatch
---@overload fun(name: string, class: "FixtureFilterRuleNumericRanges"): FixtureFilterRuleNumericRanges
---@overload fun(name: string, class: "FixtureFilterRuleCID"): FixtureFilterRuleCID
---@overload fun(name: string, class: "FixtureFilterRuleFID"): FixtureFilterRuleFID
---@overload fun(name: string, class: "FixtureFilterRuleRotZ"): FixtureFilterRuleRotZ
---@overload fun(name: string, class: "FixtureFilterRuleRotY"): FixtureFilterRuleRotY
---@overload fun(name: string, class: "FixtureFilterRuleRotX"): FixtureFilterRuleRotX
---@overload fun(name: string, class: "FixtureFilterRulePosZ"): FixtureFilterRulePosZ
---@overload fun(name: string, class: "FixtureFilterRulePosY"): FixtureFilterRulePosY
---@overload fun(name: string, class: "FixtureFilterRulePosX"): FixtureFilterRulePosX
---@overload fun(name: string, class: "FixtureFilterRuleIndices"): FixtureFilterRuleIndices
---@overload fun(name: string, class: "FixtureFilterRuleParent"): FixtureFilterRuleParent
---@overload fun(name: string, class: "FixtureFilterRuleFixtureType"): FixtureFilterRuleFixtureType
---@overload fun(name: string, class: "FixtureFilterRuleIDType"): FixtureFilterRuleIDType
---@overload fun(name: string, class: "FixtureFilterRuleClass"): FixtureFilterRuleClass
---@overload fun(name: string, class: "FixtureFilterRuleLayer"): FixtureFilterRuleLayer
---@overload fun(name: string, class: nil): Object
function FixtureFilterRules:FindRecursive(name, class) end
