---@meta

---@class ExecutorSectionXKeys: ExecutorSection
local ExecutorSectionXKeys = {}
---@return "ExecutorSectionXKeys"
function ExecutorSectionXKeys:GetClass() end
---@return "ExecutorDisplay"
function ExecutorSectionXKeys:GetChildClass() end
---@generic T : ExecutorSectionXKeys
---@param class `T`
---@return boolean
function ExecutorSectionXKeys:IsClass(class) end
---@return ExecutorBarXKeys
function ExecutorSectionXKeys:Parent() end