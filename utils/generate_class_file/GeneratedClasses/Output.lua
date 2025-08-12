---@meta

---@class Output: Object Defines which parameters are calculated by this station in the network. Yields all tables necessary for realtime calculations.
local Output = {}
---@return "Output"
function Output:GetClass() end
---@return "Object"
function Output:GetChildClass() end
---@return ShowData
function Output:Parent() end
