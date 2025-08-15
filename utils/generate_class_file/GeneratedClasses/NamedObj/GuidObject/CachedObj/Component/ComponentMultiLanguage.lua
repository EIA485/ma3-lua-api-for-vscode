---@meta

---@class ComponentMultiLanguage: Component A plugin component that contains a multi-language translation unit.
local ComponentMultiLanguage = {}
---@return "ComponentMultiLanguage"
function ComponentMultiLanguage:GetClass() end
---@return "Object"
function ComponentMultiLanguage:GetChildClass() end
---@generic T : ComponentMultiLanguage
---@param class `T`
---@return boolean
function ComponentMultiLanguage:IsClass(class) end
---@return Menu
function ComponentMultiLanguage:Parent() end