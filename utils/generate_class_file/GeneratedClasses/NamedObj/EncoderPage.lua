---@meta

---@class EncoderPage: NamedObj
local EncoderPage = {}
---@return "EncoderPage"
function EncoderPage:GetClass() end
---@return "Encoder"
function EncoderPage:GetChildClass() end
---@return EncoderBank
function EncoderPage:Parent() end
---@param index integer
---@return Encoder
function EncoderPage:Ptr(index) end
---@return Encoder[]
function EncoderPage:Children() end
---@return Encoder?
function EncoderPage:CurrentChild() end
---@overload fun(name: integer, role: nil): Encoder
function EncoderPage:Get(name, role) end
---@overload fun(index: integer, class: "Encoder", undo: Undo?): Encoder
---@overload fun(index: integer, class: nil, undo: Undo?): Encoder
function EncoderPage:Create(index, class, undo) end
---@overload fun(class: "Encoder", undo: Undo?, count: integer?): Encoder
---@overload fun(class: nil, undo: Undo?, count: integer?): Encoder
function EncoderPage:Append(class, undo, count) end
---@overload fun(class: "Encoder", undo: Undo?): Encoder
---@overload fun(class: nil, undo: Undo?): Encoder
function EncoderPage:Acquire(class, undo) end
---@overload fun(class: "Encoder", undo: Undo?): Encoder
---@overload fun(class: nil, undo: Undo?): Encoder
---@deprecated use "Acquire" instead
function EncoderPage:Aquire(class, undo) end
---@overload fun(index: integer, class: "Encoder", undo: Undo?, count: integer?): Encoder
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Encoder
function EncoderPage:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Encoder"): Encoder
---@overload fun(name: string, class: nil): Encoder
function EncoderPage:Find(name, class) end
---@overload fun(name: string, class: "Encoder"): Encoder
---@overload fun(name: string, class: nil): Object
function EncoderPage:FindRecursive(name, class) end
