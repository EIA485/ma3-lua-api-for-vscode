---@meta


---@class UIObject
UIObject = {}

---@return Overlay
function UIObject:GetOverlay() end
---@return Display
function UIObject:GetDisplay() end
---@return integar displayIndex
function UIObject:GetDisplayIndex() end
---@return Screen
function UIObject:GetScreen() end
---@return integer
function UIObject:GetUiChildrenCount() end
function UIObject:ClearUIChildren() end
---@param index integer
---@return UIObject
function UIObject:GetUIChild(index) end
---@return UIObject[]
function UIObject:UIChildren() end
---@param seconds number?
---@param force bool?
---@return bool?
function UIObject:WaitInit(seconds, force) end
---@param amount integer
---@param waitSeconds number
---@return bool?
function UIObject:WaitChildren(amount, waitSeconds) end
---@param CallBack function
---@param ... @passed to the callback
---@return bool?
function UIObject:HookDelete(CallBack, ...) end
---@return bool
function UIObject:IsVisible() end
---@return bool
function UIObject:IsEnabled() end
---@param topicName string
function UIObject:SetContextSensHelpLink(topicName) end
function UIObject:InputRun() end
---@param scrollType ScrollType
---@param offset integer
---@return integer itemIndex
function UIObject:ScrollGetItemByOffset(scrollType, offset) end
---@param scrollType ScrollType
---@param itemIdx integer
---@return integer? offset
function UIObject:ScrollGetItemOffset(scrollType, itemIdx) end
---@param scrollType ScrollType
---@param itemIdx integer
---@return integer? size
function UIObject:ScrollGetItemSize(scrollType, itemIdx) end
---@param scrollType ScrollType
---@param scrollEntity ScrollParamEntity
---@param valueType ScrollParamValueType
---@param value number
---@param updateOpposite boolean
---@return boolean success
function UIObject:ScrollDo(scrollType, scrollEntity, valueType, value, updateOpposite) end
---@param scrollType ScrollType
---@return table? scrollInfo
function UIObject:ScrollGetInfo(scrollType) end
---@param scrollType ScrollType
---@return boolean isNeeded
function UIObject:ScrollIsNeeded(scrollType) end


---@class UIGrid
UIGrid = {}

---@return GridBase
function UIGrid:GridGetBase() end
---@return GridData
function UIGrid:GridGetData() end
---@return GridSelection
function UIGrid:GridGetSelection() end
---@param x integer
---@param y integer
function UIGrid:GridMoveSelection(x, y) end
---@return table
function UIGrid:GridGetSelectedCells() end
---@return GridSettings
function UIGrid:GridGetSettings() end
---@return {r: integer, c: integer}
function UIGrid:GridGetDimensions() end
---@return {v: table<integer,integer>, h: table<integer,integer>}
function UIGrid:GridGetScrollOffset() end
---@param columnId integer
---@param size integer
function UIGrid:GridSetColumnSize(columnId, size) end
---@return {r: integer, c: integer}
function UIGrid:GridGetScrollOffset() end
---@param cell {r: integer, c: integer}
---@return {text, color:{text, back}}
function UIGrid:GridGetCellData(cell) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:GridIsCellVisible(cell) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:GridCellExists(cell) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:GridIsCellReadOnly(cell) end
---@param cell {r: integer, c: integer}
function UIGrid:GridScrollCellIntoView(cell) end
---@param cell {r: integer, c: integer}
---@return {x, y, w, h}
function UIGrid:GridGetCellDimensions(cell) end
---@param rowId : integer
---@return integer? ParentRowId
function UIGrid:GridGetParentRowId(rowId) end
---@return {r: integer, c: integer}?
function UIGrid:GridsGetExpandHeaderCell() end
---@return bool?
function UIGrid:GridsGetExpandHeaderCellState() end
---@param cell {r: integer, c: integer}
---@return integer?
function UIGrid:GridsGetLevelButtonWidth(cell) end
---@param columnId integer
---@return integer?
function UIGrid:GridsGetColumnById(columnId) end
---@param rowId integer
---@return integer?
function UIGrid:GridsGetRowById(rowId) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:FSExtendedModeHasDots(cell) end


---@class UILayoutGrid
UILayoutGrid = {}

---@param index integer
---@return integer
UILayoutGrid:UILGGetColumnWidth(index) end
---@param index integer
---@return integer
UILayoutGrid:UILGGetRowHeight(index) end
---@param index integer
---@return integer
UILayoutGrid:UILGGetColumnAbsXLeft(index) end
---@param index integer
---@return integer
UILayoutGrid:UILGGetColumnAbsXRight(index) end
---@param index integer
---@return integer
UILayoutGrid:UILGGetRowAbsYTop(index) end
---@param index integer
---@return integer
UILayoutGrid:UILGGetRowAbsYBottom(index)


---@class Overlay
Overlay = {}

---@param callbackName string
---@param ctx any?
function Overlay:OverlaySetCloseCallback(callbackName, ctx) end

---@param callback function
function Overlay:ShowModal(callback) end

---@param x integer
---@param y integer
function Overlay:SetPositionHint(x, y) end


---@class Overlay
BaseInput = {}

---@param func string
---@return any result
function BaseInput:InputCallFunction(func) end
---@param functionName string
---@return boolean? hasFunction
function BaseInput:InputHasFunction(functionName) end