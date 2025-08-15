---@meta

---@class ComponentSound: Component A plugin component that contains sound data.
local ComponentSound = {}
---@return "ComponentSound"
function ComponentSound:GetClass() end
---@return "Object"
function ComponentSound:GetChildClass() end
---@generic T : ComponentSound
---@param class `T`
---@return boolean
function ComponentSound:IsClass(class) end
---@return Menu
function ComponentSound:Parent() end