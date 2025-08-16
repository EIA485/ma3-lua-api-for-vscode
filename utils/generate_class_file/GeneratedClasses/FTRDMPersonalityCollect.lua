---@meta

---@class FTRDMPersonalityCollect: Object Personality list
local FTRDMPersonalityCollect = {}
---@return "FTRDMPersonalityCollect"
function FTRDMPersonalityCollect:GetClass() end
---@return "Personality"
function FTRDMPersonalityCollect:GetChildClass() end
---@generic T : FTRDMPersonalityCollect
---@param class `T`
---@return boolean
function FTRDMPersonalityCollect:IsClass(class) end
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
---@generic T : Personality
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Personality
function FTRDMPersonalityCollect:Create(index, class, undo) end
---@generic T : Personality
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Personality
function FTRDMPersonalityCollect:Append(class, undo, count) end
---@generic T : Personality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Personality
function FTRDMPersonalityCollect:Acquire(class, undo) end
---@generic T : Personality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Personality
---@deprecated use "Acquire" instead
function FTRDMPersonalityCollect:Aquire(class, undo) end
---@generic T : Personality
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Personality
function FTRDMPersonalityCollect:Insert(index, class, undo, count) end
---@generic T : Personality
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Personality
function FTRDMPersonalityCollect:Find(class, undo) end
---@overload fun(property_name: "DMXMode", property_value: DMXMode)
---@overload fun(property_name: "DMXMode", property_value: DMXMode)
---@overload fun(property_name: "DmxFootPrint"|"PersonalityId", property_value: integer)
function FTRDMPersonalityCollect:SetChildren(property_name, property_value) end