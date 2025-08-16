--each class has 4 type fields
--self
--baseclass
--children class
--parent class
--for class X to be apendable as a child to class Y 
--class y must be class x's child class (or derived)
--class x must have class y (or base) as it's parent class
--



--todo: refine func deffs for these
SetProgPhaser(integer: ui_channel_index, {
    ['abs_preset'=preset: Preset], ['rel_preset'=preset: Preset],
    ['fade'=number: seconds], ['delay'=number: seconds], ['speed'=number: hz],
    ['phase'=number: degree], ['measure'=number: percent], ['gridpos'=integer: value],
    {['channel_function'=integer: value], ['absolute'=number: percent],
        ['absolute_value'=integer: value], ['relative'=number: percent],
        ['accel'=number: percent[, 'accel_type'=integer: enum_value(Enums.SplineType)]],
        ['decel'=number: percent[, 'decel_type'=integer: enum_value(Enums.SplineType)]],
        ['trans'=number: percent], ['width'=number: percent], ['integrated'=preset: Preset]}})
SetProgPhaserValue(integer: ui_channel_index, integer: step, {
    ['channel_function'=integer: value], ['absolute'=number: percent],
    ['absolute_value'=integer: value], ['relative'=number: percent],
    ['accel'=number: percent[, 'accel_type'=integer: enum_value(Enums.SplineType)]],
    ['decel'=number: percent[, 'decel_type'=integer: enum_value(Enums.SplineType)]],
    ['trans'=number: percent], ['width'=number: percent], ['integrated'=preset: Preset]})
GetProgPhaser(integer: ui_channel_index, boolean: phaser_only): {['abs_preset'=light_userdata: handle], ['rel_preset'=light_userdata: handle], ['fade'=float: seconds], ['delay'=float: seconds], ['speed'=float: hz], ['phase'=float: degree], ['measure'=float: percent], ['gridpos'=integer: value], ['mask_active_phaser'=integer: bitmask], ['mask_active_value'=integer: bitmask], ['mask_individual'=integer: bitmask])
GetProgPhaserValue(integer: ui_channel_index, integer: step): {['channel_function'=integer: value], ['absolute'=number: percent], ['absolute_value'=number: value], ['relative'=number: percent])

PrepareWaitObjectChange(light_userdata: handle[ ,integer: change_level_threshold])
UnhookMultiple(tagetCallback: function?, targetObject: Object?, targetContext: ComponentLua?)
FindBestDMXPatchAddr(light_userdata: patch, integer: starting_address, integer: footprint)
CheckDMXCollision(light_userdata: dmx_mode, string: dmx_address[ ,integer: count[ ,integer: break_index]])
SetLED(light_userdata: usb_device_object_handle, table: led_values)
GetButton(light_userdata: usb_device_object_handle)
RefreshLibrary(light_userdata: handle)
SelectionNotifyBegin(light_userdata: associated_context)
SelectionNotifyObject(light_userdata: object_to_notify_about)
SelectionNotifyEnd(light_userdata: associated_context)
CreateMultiPatch(fixtureTableHandle:{Fixture}, count: integer, undo_text: string?) -- returns integer?
AddFixtures({'mode'=light_userdata: dmx_mode, 'amount'=integer: amount[, 'undo'=string: undo_text][, 'parent'=light_userdata: handle][, 'insert_index'=integer: value][, 'idtype'=string: idtype][, 'cid'=string: cid][, 'fid'=string: fid][, 'name'=string: name][, 'layer'=string: layer][, 'class'=string: class][, 'patch'={table 1..8: string: address}]})
WaitModal([number: seconds to wait])
HasParent(light_userdata: handle, handle: object_to_check)
CommandAt(light_userdata: handle)
CommandDelete(light_userdata: handle)
CommandStore(light_userdata: handle)
CommandCreateDefaults(light_userdata: handle)
GetFaderText(light_userdata: handle, {[string: token(Fader*)], [integer: index]})
GetLineCount(light_userdata: handle)
HasActivePlayback(light_userdata: handle)
InputSetTitle(light_userdata: handle, string: name_value)
InputSetValue(light_userdata: handle, string: value)
InputSetEditTitle(light_userdata: handle, string: name_value)
InputSetAdditionalParameter(light_userdata: handle, string: parameter name, string: parameter value)
InputRun(light_userdata: handle)
InputCallFunction(light_userdata: handle, string: function name[, ...parameters to function])
InputHasFunction(light_userdata: handle, string: function name)
ShowModal(light_userdata: handle, callback: function)
SetPositionHint(light_userdata: handle, integer: x, integer: y)
ScrollIsNeeded(light_userdata: handle, integer: scroll type (see 'ScrollType' enum))
ScrollDo(light_userdata: handle, integer: scroll type (see 'ScrollType' enum), integer: scroll entity (item or area, see 'ScrollParamEntity' enum), integer: value type (absolute or relative, see 'ScrollParamValueType' enum), number: value to scroll (items - 1-based), boolean: updateOpposite side)
ScrollGetInfo(light_userdata: handle, integer: scroll type (see 'ScrollType' enum))
ScrollGetItemSize(light_userdata: handle, integer: scroll type (see 'ScrollType' enum), integer:1-based item idx)
ScrollGetItemOffset(light_userdata: handle, integer: scroll type (see 'ScrollType' enum), integer:1-based item idx)
CmdlinePtr(light_userdata: handle, integer: index(1-based))
CmdlineChildren(light_userdata: handle)



obj:MaxCount() // write code to dump from ma


all these filter so self can only be DB::InputInterface implementaions 
--for this specific func (InputRun) self must also be UIObject or derived
function UIObject:InputRun() end
---@param value string
function Object:InputSetValue(value) end 
---@param length integer
function Object:InputSetMaxLength(length) end
---@param nameValue string
function Object:InputSetEditTitle(nameValue) end
---@param nameValue string
function Object:InputSetTitle(nameValue) end
---@param parameterName string
---@param parameterValue string
function Object:InputSetAdditionalParameter(parameterName, parameterValue) end


all these filter so self can be derived or ScrollableItemList|Popup + DB::ItemList implementaions

---@param parent Object
---@param role string? @Optional
function Object:AddListChildren(parent, role) end

---@param parent Object
---@param role string? @Optional
function Object:AddListChildrenNames(parent, role) end

---@param name string
---@param value string
---@param callback function
---@param argument any? @Optional
---@param appearance table? @Optional
function Object:AddListLuaItem(name, value, callback, argument, appearance) end

---@param items table
function Object:AddListLuaItems(items) end

---@param name string
---@param value number
---@param baseHandle Object? @Optional
---@param appearance table? @Optional
function Object:AddListNumericItem(name, value, baseHandle, appearance) end

---@param items table
function Object:AddListNumericItems(items) end

---@param targetObject Object
---@param explicitName string? @Optional
---@param appearance table? @Optional
function Object:AddListObjectItem(targetObject, explicitName, appearance) end

---@param name string
---@param value string
---@param targetHandle Object
---@param appearance table? @Optional
function Object:AddListPropertyItem(name, value, targetHandle, appearance) end

---@param items table
function Object:AddListPropertyItems(items) end

---@param parent Object
---@param role string? @Optional
function Object:AddListRecursiveNames(parent, role) end

---@param name string
---@param value string
---@param appearance table? @Optional
function Object:AddListStringItem(name, value, appearance) end

---@param items table
function Object:AddListStringItems(items) end

function Object:ClearList() end

---@param value string
---@return integer index
function Object:FindListItemByName(value) end

---@param value string
---@return integer index
function Object:FindListItemByValueStr(value) end

---@param index integer
---@return table appearance
function Object:GetListItemAppearance(index) end

---@param index integer
---@return Object? buttonHandle
function Object:GetListItemButton(index) end

---@param index integer
---@return string name
function Object:GetListItemName(index) end

---@param index integer
---@return integer value
function Object:GetListItemValueI64(index) end

---@param index integer
---@return string value
function Object:GetListItemValueStr(index) end

---@return integer count
function Object:GetListItemsCount() end

---@return integer index
function Object:GetListSelectedItemIndex() end

---@param index integer
function Object:IsListItemEmpty(index) end

---@param index integer
function Object:IsListItemEnabled(index) end

---@param name string
function Object:RemoveListItem(name) end

---@param index integer
function Object:SelectListItemByIndex(index) end

---@param nameValue string
function Object:SelectListItemByName(nameValue) end

---@param value string
function Object:SelectListItemByValue(value) end

---@param index integer
---@param empty boolean? @Optional
function Object:SetEmptyListItem(index, empty) end

---@param index integer
---@param enable boolean? @Optional
function Object:SetEnabledListItem(index, enable) end

---@param index integer
---@param appearance table
function Object:SetListItemAppearance(index, appearance) end

---@param index integer
---@param name string
function Object:SetListItemName(index, name) end

---@param index integer
---@param value string
function Object:SetListItemValueStr(index, value) end