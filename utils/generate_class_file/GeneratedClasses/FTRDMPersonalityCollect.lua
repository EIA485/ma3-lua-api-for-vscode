---@meta

---@class FTRDMPersonalityCollect: Object Personality list
local FTRDMPersonalityCollect = {}
---@return "FTRDMPersonalityCollect"
function FTRDMPersonalityCollect:GetClass() end
---@return "Personality"
function FTRDMPersonalityCollect:GetChildClass() end
---@return RDMFixtureType
function FTRDMPersonalityCollect:Parent() end
---@param index integer
---@return Personality
function FTRDMPersonalityCollect:Ptr(index) end
---@return Personality[]
function FTRDMPersonalityCollect:Children() end
---@return Personality?
function FTRDMPersonalityCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Personality
function FTRDMPersonalityCollect:Get(name, role) end
---@overload fun(index: integer, class: "Personality", undo: Undo?): Personality
---@overload fun(index: integer, class: nil, undo: Undo?): Personality
function FTRDMPersonalityCollect:Create(index, class, undo) end
---@overload fun(class: "Personality", undo: Undo?, count: integer?): Personality
---@overload fun(class: nil, undo: Undo?, count: integer?): Personality
function FTRDMPersonalityCollect:Append(class, undo, count) end
---@overload fun(class: "Personality", undo: Undo?): Personality
---@overload fun(class: nil, undo: Undo?): Personality
function FTRDMPersonalityCollect:Acquire(class, undo) end
---@overload fun(class: "Personality", undo: Undo?): Personality
---@overload fun(class: nil, undo: Undo?): Personality
---@deprecated use "Acquire" instead
function FTRDMPersonalityCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Personality", undo: Undo?, count: integer?): Personality
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Personality
function FTRDMPersonalityCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Personality"): Personality
---@overload fun(name: string, class: nil): Personality
function FTRDMPersonalityCollect:Find(name, class) end
---@overload fun(name: string, class: "Personality"): Personality
---@overload fun(name: string, class: nil): Object
function FTRDMPersonalityCollect:FindRecursive(name, class) end
