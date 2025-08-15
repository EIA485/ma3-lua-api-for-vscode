---@meta

---@class RDMFixtureTypes: Object RDM fixture types
local RDMFixtureTypes = {}
---@return "RDMFixtureTypes"
function RDMFixtureTypes:GetClass() end
---@return "RDMFixtureType"
function RDMFixtureTypes:GetChildClass() end
---@generic T : RDMFixtureTypes
---@param class `T`
---@return boolean
function RDMFixtureTypes:IsClass(class) end
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
---@generic T : RDMFixtureType
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RDMFixtureType
function RDMFixtureTypes:Create(index, class, undo) end
---@generic T : RDMFixtureType
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMFixtureType
function RDMFixtureTypes:Append(class, undo, count) end
---@generic T : RDMFixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixtureType
function RDMFixtureTypes:Acquire(class, undo) end
---@generic T : RDMFixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixtureType
---@deprecated use "Acquire" instead
function RDMFixtureTypes:Aquire(class, undo) end
---@generic T : RDMFixtureType
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMFixtureType
function RDMFixtureTypes:Insert(index, class, undo, count) end
---@generic T : RDMFixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixtureType
function RDMFixtureTypes:Find(class, undo) end
---@overload fun(property_name: "SoftwareID", property_value: integer)
---@overload fun(property_name: "ProductCategory", property_value: RDMProductCategory)
---@overload fun(property_name: "ProductCategory", property_value: RDMProductCategory)
---@overload fun(property_name: "SoftwareID", property_value: integer)
---@overload fun(property_name: "DeviceModelID"|"ManufacturerID"|"SoftwareVersionLabel", property_value: string)
function RDMFixtureTypes:ProductCategory(property_name, property_value) end