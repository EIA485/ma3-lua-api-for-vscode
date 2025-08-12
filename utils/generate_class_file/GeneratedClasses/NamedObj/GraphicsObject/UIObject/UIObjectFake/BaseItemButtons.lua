---@meta

---@class BaseItemButtons: UIObjectFake
local BaseItemButtons = {}
---@return "BaseItemButtons"
function BaseItemButtons:GetClass() end
---@return "BaseItemButton"
function BaseItemButtons:GetChildClass() end
---@param index integer
---@return BaseItemButton
function BaseItemButtons:Ptr(index) end
---@return BaseItemButton[]
function BaseItemButtons:Children() end
---@return BaseItemButton?
function BaseItemButtons:CurrentChild() end
---@overload fun(name: integer, role: nil): BaseItemButton
function BaseItemButtons:Get(name, role) end
---@overload fun(index: integer, class: "BaseItemButton", undo: Undo?): BaseItemButton
---@overload fun(index: integer, class: "UITabButton", undo: Undo?): UITabButton
---@overload fun(index: integer, class: "UIArrowButton", undo: Undo?): UIArrowButton
---@overload fun(index: integer, class: "ListItemButton", undo: Undo?): ListItemButton
---@overload fun(index: integer, class: "FixtureTypeItemButton", undo: Undo?): FixtureTypeItemButton
---@overload fun(index: integer, class: "StateItemButton", undo: Undo?): StateItemButton
---@overload fun(index: integer, class: "RadioItemButtonV2", undo: Undo?): RadioItemButtonV2
---@overload fun(index: integer, class: "RadioItemButtonWithIndicator", undo: Undo?): RadioItemButtonWithIndicator
---@overload fun(index: integer, class: "EncoderBankRadioButton", undo: Undo?): EncoderBankRadioButton
---@overload fun(index: integer, class: "AttributeRadioButton", undo: Undo?): AttributeRadioButton
---@overload fun(index: integer, class: "MatricksRadioButton", undo: Undo?): MatricksRadioButton
---@overload fun(index: integer, class: "RadioItemButton", undo: Undo?): RadioItemButton
---@overload fun(index: integer, class: "PopupItemButton", undo: Undo?): PopupItemButton
---@overload fun(index: integer, class: "PopupItemButtonExt", undo: Undo?): PopupItemButtonExt
---@overload fun(index: integer, class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Create(index, class, undo) end
---@overload fun(class: "BaseItemButton", undo: Undo?, count: integer?): BaseItemButton
---@overload fun(class: "UITabButton", undo: Undo?, count: integer?): UITabButton
---@overload fun(class: "UIArrowButton", undo: Undo?, count: integer?): UIArrowButton
---@overload fun(class: "ListItemButton", undo: Undo?, count: integer?): ListItemButton
---@overload fun(class: "FixtureTypeItemButton", undo: Undo?, count: integer?): FixtureTypeItemButton
---@overload fun(class: "StateItemButton", undo: Undo?, count: integer?): StateItemButton
---@overload fun(class: "RadioItemButtonV2", undo: Undo?, count: integer?): RadioItemButtonV2
---@overload fun(class: "RadioItemButtonWithIndicator", undo: Undo?, count: integer?): RadioItemButtonWithIndicator
---@overload fun(class: "EncoderBankRadioButton", undo: Undo?, count: integer?): EncoderBankRadioButton
---@overload fun(class: "AttributeRadioButton", undo: Undo?, count: integer?): AttributeRadioButton
---@overload fun(class: "MatricksRadioButton", undo: Undo?, count: integer?): MatricksRadioButton
---@overload fun(class: "RadioItemButton", undo: Undo?, count: integer?): RadioItemButton
---@overload fun(class: "PopupItemButton", undo: Undo?, count: integer?): PopupItemButton
---@overload fun(class: "PopupItemButtonExt", undo: Undo?, count: integer?): PopupItemButtonExt
---@overload fun(class: nil, undo: Undo?, count: integer?): BaseItemButton
function BaseItemButtons:Append(class, undo, count) end
---@overload fun(class: "BaseItemButton", undo: Undo?): BaseItemButton
---@overload fun(class: "UITabButton", undo: Undo?): UITabButton
---@overload fun(class: "UIArrowButton", undo: Undo?): UIArrowButton
---@overload fun(class: "ListItemButton", undo: Undo?): ListItemButton
---@overload fun(class: "FixtureTypeItemButton", undo: Undo?): FixtureTypeItemButton
---@overload fun(class: "StateItemButton", undo: Undo?): StateItemButton
---@overload fun(class: "RadioItemButtonV2", undo: Undo?): RadioItemButtonV2
---@overload fun(class: "RadioItemButtonWithIndicator", undo: Undo?): RadioItemButtonWithIndicator
---@overload fun(class: "EncoderBankRadioButton", undo: Undo?): EncoderBankRadioButton
---@overload fun(class: "AttributeRadioButton", undo: Undo?): AttributeRadioButton
---@overload fun(class: "MatricksRadioButton", undo: Undo?): MatricksRadioButton
---@overload fun(class: "RadioItemButton", undo: Undo?): RadioItemButton
---@overload fun(class: "PopupItemButton", undo: Undo?): PopupItemButton
---@overload fun(class: "PopupItemButtonExt", undo: Undo?): PopupItemButtonExt
---@overload fun(class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Acquire(class, undo) end
---@overload fun(class: "BaseItemButton", undo: Undo?): BaseItemButton
---@overload fun(class: "UITabButton", undo: Undo?): UITabButton
---@overload fun(class: "UIArrowButton", undo: Undo?): UIArrowButton
---@overload fun(class: "ListItemButton", undo: Undo?): ListItemButton
---@overload fun(class: "FixtureTypeItemButton", undo: Undo?): FixtureTypeItemButton
---@overload fun(class: "StateItemButton", undo: Undo?): StateItemButton
---@overload fun(class: "RadioItemButtonV2", undo: Undo?): RadioItemButtonV2
---@overload fun(class: "RadioItemButtonWithIndicator", undo: Undo?): RadioItemButtonWithIndicator
---@overload fun(class: "EncoderBankRadioButton", undo: Undo?): EncoderBankRadioButton
---@overload fun(class: "AttributeRadioButton", undo: Undo?): AttributeRadioButton
---@overload fun(class: "MatricksRadioButton", undo: Undo?): MatricksRadioButton
---@overload fun(class: "RadioItemButton", undo: Undo?): RadioItemButton
---@overload fun(class: "PopupItemButton", undo: Undo?): PopupItemButton
---@overload fun(class: "PopupItemButtonExt", undo: Undo?): PopupItemButtonExt
---@overload fun(class: nil, undo: Undo?): BaseItemButton
---@deprecated use "Acquire" instead
function BaseItemButtons:Aquire(class, undo) end
---@overload fun(index: integer, class: "BaseItemButton", undo: Undo?, count: integer?): BaseItemButton
---@overload fun(index: integer, class: "UITabButton", undo: Undo?, count: integer?): UITabButton
---@overload fun(index: integer, class: "UIArrowButton", undo: Undo?, count: integer?): UIArrowButton
---@overload fun(index: integer, class: "ListItemButton", undo: Undo?, count: integer?): ListItemButton
---@overload fun(index: integer, class: "FixtureTypeItemButton", undo: Undo?, count: integer?): FixtureTypeItemButton
---@overload fun(index: integer, class: "StateItemButton", undo: Undo?, count: integer?): StateItemButton
---@overload fun(index: integer, class: "RadioItemButtonV2", undo: Undo?, count: integer?): RadioItemButtonV2
---@overload fun(index: integer, class: "RadioItemButtonWithIndicator", undo: Undo?, count: integer?): RadioItemButtonWithIndicator
---@overload fun(index: integer, class: "EncoderBankRadioButton", undo: Undo?, count: integer?): EncoderBankRadioButton
---@overload fun(index: integer, class: "AttributeRadioButton", undo: Undo?, count: integer?): AttributeRadioButton
---@overload fun(index: integer, class: "MatricksRadioButton", undo: Undo?, count: integer?): MatricksRadioButton
---@overload fun(index: integer, class: "RadioItemButton", undo: Undo?, count: integer?): RadioItemButton
---@overload fun(index: integer, class: "PopupItemButton", undo: Undo?, count: integer?): PopupItemButton
---@overload fun(index: integer, class: "PopupItemButtonExt", undo: Undo?, count: integer?): PopupItemButtonExt
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BaseItemButton
function BaseItemButtons:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "BaseItemButton"): BaseItemButton
---@overload fun(name: string, class: "UITabButton"): UITabButton
---@overload fun(name: string, class: "UIArrowButton"): UIArrowButton
---@overload fun(name: string, class: "ListItemButton"): ListItemButton
---@overload fun(name: string, class: "FixtureTypeItemButton"): FixtureTypeItemButton
---@overload fun(name: string, class: "StateItemButton"): StateItemButton
---@overload fun(name: string, class: "RadioItemButtonV2"): RadioItemButtonV2
---@overload fun(name: string, class: "RadioItemButtonWithIndicator"): RadioItemButtonWithIndicator
---@overload fun(name: string, class: "EncoderBankRadioButton"): EncoderBankRadioButton
---@overload fun(name: string, class: "AttributeRadioButton"): AttributeRadioButton
---@overload fun(name: string, class: "MatricksRadioButton"): MatricksRadioButton
---@overload fun(name: string, class: "RadioItemButton"): RadioItemButton
---@overload fun(name: string, class: "PopupItemButton"): PopupItemButton
---@overload fun(name: string, class: "PopupItemButtonExt"): PopupItemButtonExt
---@overload fun(name: string, class: nil): BaseItemButton
function BaseItemButtons:Find(name, class) end
---@overload fun(name: string, class: "BaseItemButton"): BaseItemButton
---@overload fun(name: string, class: "UITabButton"): UITabButton
---@overload fun(name: string, class: "UIArrowButton"): UIArrowButton
---@overload fun(name: string, class: "ListItemButton"): ListItemButton
---@overload fun(name: string, class: "FixtureTypeItemButton"): FixtureTypeItemButton
---@overload fun(name: string, class: "StateItemButton"): StateItemButton
---@overload fun(name: string, class: "RadioItemButtonV2"): RadioItemButtonV2
---@overload fun(name: string, class: "RadioItemButtonWithIndicator"): RadioItemButtonWithIndicator
---@overload fun(name: string, class: "EncoderBankRadioButton"): EncoderBankRadioButton
---@overload fun(name: string, class: "AttributeRadioButton"): AttributeRadioButton
---@overload fun(name: string, class: "MatricksRadioButton"): MatricksRadioButton
---@overload fun(name: string, class: "RadioItemButton"): RadioItemButton
---@overload fun(name: string, class: "PopupItemButton"): PopupItemButton
---@overload fun(name: string, class: "PopupItemButtonExt"): PopupItemButtonExt
---@overload fun(name: string, class: nil): Object
function BaseItemButtons:FindRecursive(name, class) end
