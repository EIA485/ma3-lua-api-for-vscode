---@meta

---@class ApiProgress: AddonApi
local ApiProgress = {}
---@return "ApiProgress"
function ApiProgress:GetClass() end
---@return "Object"
function ApiProgress:GetChildClass() end
---@generic T : ApiProgress
---@param class `T`
---@return boolean
function ApiProgress:IsClass(class) end