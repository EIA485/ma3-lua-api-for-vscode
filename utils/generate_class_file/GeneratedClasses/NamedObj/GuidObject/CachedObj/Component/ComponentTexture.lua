---@meta

---@class ComponentTexture: Component A plugin component that contains graphical texture data.
local ComponentTexture = {}
---@return "ComponentTexture"
function ComponentTexture:GetClass() end
---@return "Object"
function ComponentTexture:GetChildClass() end
---@generic T : ComponentTexture
---@param class `T`
---@return boolean
function ComponentTexture:IsClass(class) end
---@return Menu
function ComponentTexture:Parent() end