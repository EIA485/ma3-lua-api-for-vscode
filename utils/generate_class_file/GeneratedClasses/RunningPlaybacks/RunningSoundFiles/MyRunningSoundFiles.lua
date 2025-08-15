---@meta

---@class MyRunningSoundFiles: RunningSoundFiles
local MyRunningSoundFiles = {}
---@return "MyRunningSoundFiles"
function MyRunningSoundFiles:GetClass() end
---@return "Sound"
function MyRunningSoundFiles:GetChildClass() end
---@generic T : MyRunningSoundFiles
---@param class `T`
---@return boolean
function MyRunningSoundFiles:IsClass(class) end