---@meta

---@class RDMFixtureTypes: Object RDM fixture types
local RDMFixtureTypes = {}
---@return "RDMFixtureTypes"
function RDMFixtureTypes:GetClass() end
---@return "RDMFixtureType"
function RDMFixtureTypes:GetChildClass() end
---@return RDMData
function RDMFixtureTypes:Parent() end
---@param index integer
---@return RDMFixtureType
function RDMFixtureTypes:Ptr(index) end
---@return RDMFixtureType[]
function RDMFixtureTypes:Children() end
---@return RDMFixtureType?
function RDMFixtureTypes:CurrentChild() end
---@overload fun(name: integer, role: nil): RDMFixtureType
function RDMFixtureTypes:Get(name, role) end
---@overload fun(index: integer, class: "RDMFixtureType", undo: Undo?): RDMFixtureType
---@overload fun(index: integer, class: nil, undo: Undo?): RDMFixtureType
function RDMFixtureTypes:Create(index, class, undo) end
---@overload fun(class: "RDMFixtureType", undo: Undo?, count: integer?): RDMFixtureType
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMFixtureType
function RDMFixtureTypes:Append(class, undo, count) end
---@overload fun(class: "RDMFixtureType", undo: Undo?): RDMFixtureType
---@overload fun(class: nil, undo: Undo?): RDMFixtureType
function RDMFixtureTypes:Acquire(class, undo) end
---@overload fun(class: "RDMFixtureType", undo: Undo?): RDMFixtureType
---@overload fun(class: nil, undo: Undo?): RDMFixtureType
---@deprecated use "Acquire" instead
function RDMFixtureTypes:Aquire(class, undo) end
---@overload fun(index: integer, class: "RDMFixtureType", undo: Undo?, count: integer?): RDMFixtureType
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMFixtureType
function RDMFixtureTypes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RDMFixtureType"): RDMFixtureType
---@overload fun(name: string, class: nil): RDMFixtureType
function RDMFixtureTypes:Find(name, class) end
---@overload fun(name: string, class: "RDMFixtureType"): RDMFixtureType
---@overload fun(name: string, class: nil): Object
function RDMFixtureTypes:FindRecursive(name, class) end
