---@meta
--- Ma3 API version: 2.2

-- Not documented Object definition
-- ========================================


---@param parent Handle
---@param role? string @Optional
function Handle:AddListChildren(parent, role)
end

---@param parent Handle
---@param role? string @Optional
function Handle:AddListChildrenNames(parent, role)
end

---@param name string
---@param value string
---@param callback function
---@param argument? any @Optional
---@param appearance? table @Optional
function Handle:AddListLuaItem(name, value, callback, argument, appearance)
end

---@param items table
function Handle:AddListLuaItems(items)
end

---@param name string
---@param value number
---@param baseHandle? Handle @Optional
---@param appearance? table @Optional
function Handle:AddListNumericItem(name, value, baseHandle, appearance)
end

---@param items table
function Handle:AddListNumericItems(items)
end

---@param targetObject Handle
---@param explicitName? string @Optional
---@param appearance? table @Optional
function Handle:AddListObjectItem(targetObject, explicitName, appearance)
end

---@param name string
---@param value string
---@param targetHandle Handle
---@param appearance? table @Optional
function Handle:AddListPropertyItem(name, value, targetHandle, appearance)
end

---@param items table
function Handle:AddListPropertyItems(items)
end

---@param parent Handle
---@param role? string @Optional
function Handle:AddListRecursiveNames(parent, role)
end

---@param name string
---@param value string
---@param appearance? table @Optional
function Handle:AddListStringItem(name, value, appearance)
end

---@param items table
function Handle:AddListStringItems(items)
end


---@param changeLevelEnum string
function Handle:Changed(changeLevelEnum)
end

function Handle:ClearList()
end


---@return table childHandles
function Handle:CmdlineChildren()
    return {}
end

---@param index integer
---@return Handle childHandle
function Handle:CmdlinePtr(index)
    return Handle:new()
end

function Handle:CommandAt()
end

---@param destHandle Handle
---@param focusSearchAllowed? boolean @Optional
function Handle:CommandCall(destHandle, focusSearchAllowed)
end

function Handle:CommandCreateDefaults()
end

function Handle:CommandDelete()
end

function Handle:CommandStore()
end

---@param otherHandle Handle
---@return boolean isEqual
---@return string whatDiffers
function Handle:Compare(otherHandle)
    return false, ""
end

---@param srcHandle Handle
---@param undo? Handle @Optional
function Handle:Copy(srcHandle, undo)
end


---@param childIndex integer
---@param undo? Handle @Optional
function Handle:Delete(childIndex, undo)
end

---@param value string
---@return integer index
function Handle:FindListItemByName(value)
    return 1
end

---@param value string
---@return integer index
function Handle:FindListItemByValueStr(value)
    return 1
end

---@param searchName string
---@return Handle foundHandle
function Handle:FindWild(searchName)
    return Handle:new()
end

---@return Handle assignedHandle
function Handle:GetAssignedObj()
    return Handle:new()
end

---@param camelCaseToFileName? boolean @Optional
---@return string fileName
function Handle:GetExportFileName(camelCaseToFileName)
    return ""
end

---@param lineNumber integer
---@return string lineContent
function Handle:GetLineAt(lineNumber)
    return ""
end

---@return integer count
function Handle:GetLineCount()
    return 0
end

---@param index integer
---@return table appearance
function Handle:GetListItemAppearance(index)
    return {}
end

---@param index integer
---@return Handle|nil buttonHandle
function Handle:GetListItemButton(index)
    return Handle:new()
end

---@param index integer
---@return string name
function Handle:GetListItemName(index)
    return ""
end

---@param index integer
---@return integer value
function Handle:GetListItemValueI64(index)
    return 0
end

---@param index integer
---@return string value
function Handle:GetListItemValueStr(index)
    return ""
end

---@return integer count
function Handle:GetListItemsCount()
    return 0
end

---@return integer index
function Handle:GetListSelectedItemIndex()
    return 1
end


---@return boolean hasDependencies
function Handle:HasDependencies()
    return false
end

---@return boolean hasEditSettingUI
function Handle:HasEditSettingUI()
    return false
end

---@return boolean hasEditUI
function Handle:HasEditUI()
    return false
end

---@param objectToCheck Handle
function Handle:HasParent(objectToCheck)
end

---@return boolean hasReferences
function Handle:HasReferences()
    return false
end

---@return integer index
function Handle:Index()
    return 0
end

---@param functionName string
---@return any result
function Handle:InputCallFunction(functionName)
    return nil
end

---@param functionName string
---@return boolean|nil hasFunction
function Handle:InputHasFunction(functionName)
    return true
end

function Handle:InputRun()
end

---@param parameterName string
---@param parameterValue string
function Handle:InputSetAdditionalParameter(parameterName, parameterValue)
end

---@param nameValue string
function Handle:InputSetEditTitle(nameValue)
end

---@param length integer
function Handle:InputSetMaxLength(length)
end

---@param nameValue string
function Handle:InputSetTitle(nameValue)
end

---@param value string
function Handle:InputSetValue(value)
end


---@return boolean isClass
function Handle:IsClass()
    return false
end

---@return boolean isEmpty
function Handle:IsEmpty()
    return false
end


---@param index integer
function Handle:IsListItemEmpty(index)
end

---@param index integer
function Handle:IsListItemEnabled(index)
end

---@return boolean isLocked
function Handle:IsLocked()
    return false
end

---@return boolean isValid
function Handle:IsValid()
    return false
end

---@param filePath string
---@param fileName string
---@return boolean success
function Handle:Load(filePath, fileName)
    return false
end

---@return integer maxCount
function Handle:MaxCount()
    return 0
end

function Handle:PrepareAccess()
end

---@return integer propertyCount
function Handle:PropertyCount()
    return 0
end

---@param propertyIndex integer
---@return table propertyInfo
function Handle:PropertyInfo(propertyIndex)
    return {}
end

---@param propertyIndex integer
---@return string propertyName
function Handle:PropertyName(propertyIndex)
    return ""
end

---@param propertyIndex integer
---@return string propertyType
function Handle:PropertyType(propertyIndex)
    return ""
end

---@param childIndex integer
---@param undo? Handle @Optional
function Handle:Remove(childIndex, undo)
end

---@param name string
function Handle:RemoveListItem(name)
end

---@param size integer
function Handle:Resize(size)
end

---@param filePath string
---@param fileName string
---@return boolean success
function Handle:Save(filePath, fileName)
    return false
end

---@param scrollType integer
---@param scrollEntity integer
---@param valueType integer
---@param value number
---@param updateOpposite boolean
---@return boolean success
function Handle:ScrollDo(scrollType, scrollEntity, valueType, value, updateOpposite)
    return false
end

---@param scrollType integer
---@return table|nil scrollInfo
function Handle:ScrollGetInfo(scrollType)
    return {}
end

---@param scrollType integer
---@param offset integer
---@return integer itemIndex
function Handle:ScrollGetItemByOffset(scrollType, offset)
    return 1
end

---@param scrollType integer
---@param itemIdx integer
---@return integer|nil offset
function Handle:ScrollGetItemOffset(scrollType, itemIdx)
    return 0
end

---@param scrollType integer
---@param itemIdx integer
---@return integer|nil size
function Handle:ScrollGetItemSize(scrollType, itemIdx)
    return 0
end

---@param scrollType integer
---@return boolean isNeeded
function Handle:ScrollIsNeeded(scrollType)
    return false
end

---@param index integer
function Handle:SelectListItemByIndex(index)
end

---@param nameValue string
function Handle:SelectListItemByName(nameValue)
end

---@param value string
function Handle:SelectListItemByValue(value)
end

---@param propertyName string
---@param propertyValue string
---@param overrideChangeLevel? integer @Optional
function Handle:Set(propertyName, propertyValue, overrideChangeLevel)
end

---@param propertyName string
---@param propertyValue string
---@param recursive? boolean @Optional
function Handle:SetChildren(propertyName, propertyValue, recursive)
end

---@param propertyName string
---@param propertyValue string
---@param recursive? boolean @Optional
function Handle:SetChildrenRecursive(propertyName, propertyValue, recursive)
end

---@param index integer
---@param empty? boolean @Optional
function Handle:SetEmptyListItem(index, empty)
end

---@param index integer
---@param enable? boolean @Optional
function Handle:SetEnabledListItem(index, enable)
end

---@param index integer
---@param appearance table
function Handle:SetListItemAppearance(index, appearance)
end

---@param index integer
---@param name string
function Handle:SetListItemName(index, name)
end

---@param index integer
---@param value string
function Handle:SetListItemValueStr(index, value)
end

---@param x integer
---@param y integer
function Handle:SetPositionHint(x, y)
end

---@param callback function
function Handle:ShowModal(callback)
end
