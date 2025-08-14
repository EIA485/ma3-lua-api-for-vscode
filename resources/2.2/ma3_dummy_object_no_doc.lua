---@meta
--- Ma3 API version: 2.2

-- Not documented Object definition
-- ========================================


---@param parent Object
---@param role? string @Optional
function Object:AddListChildren(parent, role)
end

---@param parent Object
---@param role? string @Optional
function Object:AddListChildrenNames(parent, role)
end

---@param name string
---@param value string
---@param callback function
---@param argument? any @Optional
---@param appearance? table @Optional
function Object:AddListLuaItem(name, value, callback, argument, appearance)
end

---@param items table
function Object:AddListLuaItems(items)
end

---@param name string
---@param value number
---@param baseHandle? Object @Optional
---@param appearance? table @Optional
function Object:AddListNumericItem(name, value, baseHandle, appearance)
end

---@param items table
function Object:AddListNumericItems(items)
end

---@param targetObject Object
---@param explicitName? string @Optional
---@param appearance? table @Optional
function Object:AddListObjectItem(targetObject, explicitName, appearance)
end

---@param name string
---@param value string
---@param targetHandle Object
---@param appearance? table @Optional
function Object:AddListPropertyItem(name, value, targetHandle, appearance)
end

---@param items table
function Object:AddListPropertyItems(items)
end

---@param parent Object
---@param role? string @Optional
function Object:AddListRecursiveNames(parent, role)
end

---@param name string
---@param value string
---@param appearance? table @Optional
function Object:AddListStringItem(name, value, appearance)
end

---@param items table
function Object:AddListStringItems(items)
end


---@param changeLevelEnum string
function Object:Changed(changeLevelEnum)
end

function Object:ClearList()
end


---@return table childHandles
function Object:CmdlineChildren()
    return {}
end

---@param index integer
---@return Object childHandle
function Object:CmdlinePtr(index)
    return Object:new()
end

function Object:CommandAt()
end

---@param destHandle Object
---@param focusSearchAllowed? boolean @Optional
function Object:CommandCall(destHandle, focusSearchAllowed)
end

function Object:CommandCreateDefaults()
end

function Object:CommandDelete()
end

function Object:CommandStore()
end

---@param otherHandle Object
---@return boolean isEqual
---@return string whatDiffers
function Object:Compare(otherHandle)
    return false, ""
end

---@param srcHandle Object
---@param undo? Object @Optional
function Object:Copy(srcHandle, undo)
end


---@param childIndex integer
---@param undo? Object @Optional
function Object:Delete(childIndex, undo)
end

---@param value string
---@return integer index
function Object:FindListItemByName(value)
    return 1
end

---@param value string
---@return integer index
function Object:FindListItemByValueStr(value)
    return 1
end

---@param searchName string
---@return Object foundHandle
function Object:FindWild(searchName)
    return Object:new()
end

---@return Object assignedHandle
function Object:GetAssignedObj()
    return Object:new()
end

---@param camelCaseToFileName? boolean @Optional
---@return string fileName
function Object:GetExportFileName(camelCaseToFileName)
    return ""
end

---@param lineNumber integer
---@return string lineContent
function Object:GetLineAt(lineNumber)
    return ""
end

---@return integer count
function Object:GetLineCount()
    return 0
end

---@param index integer
---@return table appearance
function Object:GetListItemAppearance(index)
    return {}
end

---@param index integer
---@return Object|nil buttonHandle
function Object:GetListItemButton(index)
    return Object:new()
end

---@param index integer
---@return string name
function Object:GetListItemName(index)
    return ""
end

---@param index integer
---@return integer value
function Object:GetListItemValueI64(index)
    return 0
end

---@param index integer
---@return string value
function Object:GetListItemValueStr(index)
    return ""
end

---@return integer count
function Object:GetListItemsCount()
    return 0
end

---@return integer index
function Object:GetListSelectedItemIndex()
    return 1
end


---@return boolean hasDependencies
function Object:HasDependencies()
    return false
end

---@return boolean hasEditSettingUI
function Object:HasEditSettingUI()
    return false
end

---@return boolean hasEditUI
function Object:HasEditUI()
    return false
end

---@param objectToCheck Object
function Object:HasParent(objectToCheck)
end

---@return boolean hasReferences
function Object:HasReferences()
    return false
end

---@return integer index
function Object:Index()
    return 0
end

---@param functionName string
---@return any result
function Object:InputCallFunction(functionName)
    return nil
end

---@param functionName string
---@return boolean|nil hasFunction
function Object:InputHasFunction(functionName)
    return true
end

function Object:InputRun()
end

---@param parameterName string
---@param parameterValue string
function Object:InputSetAdditionalParameter(parameterName, parameterValue)
end

---@param nameValue string
function Object:InputSetEditTitle(nameValue)
end

---@param length integer
function Object:InputSetMaxLength(length)
end

---@param nameValue string
function Object:InputSetTitle(nameValue)
end

---@param value string
function Object:InputSetValue(value)
end


---@return boolean isClass
function Object:IsClass()
    return false
end

---@return boolean isEmpty
function Object:IsEmpty()
    return false
end


---@param index integer
function Object:IsListItemEmpty(index)
end

---@param index integer
function Object:IsListItemEnabled(index)
end

---@return boolean isLocked
function Object:IsLocked()
    return false
end

---@return boolean isValid
function Object:IsValid()
    return false
end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Load(filePath, fileName)
    return false
end

---@return integer maxCount
function Object:MaxCount()
    return 0
end

function Object:PrepareAccess()
end

---@return integer propertyCount
function Object:PropertyCount()
    return 0
end

---@param propertyIndex integer
---@return table propertyInfo
function Object:PropertyInfo(propertyIndex)
    return {}
end

---@param propertyIndex integer
---@return string propertyName
function Object:PropertyName(propertyIndex)
    return ""
end

---@param propertyIndex integer
---@return string propertyType
function Object:PropertyType(propertyIndex)
    return ""
end

---@param childIndex integer
---@param undo? Object @Optional
function Object:Remove(childIndex, undo)
end

---@param name string
function Object:RemoveListItem(name)
end

---@param size integer
function Object:Resize(size)
end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Save(filePath, fileName)
    return false
end

---@param scrollType integer
---@param scrollEntity integer
---@param valueType integer
---@param value number
---@param updateOpposite boolean
---@return boolean success
function Object:ScrollDo(scrollType, scrollEntity, valueType, value, updateOpposite)
    return false
end

---@param scrollType integer
---@return table|nil scrollInfo
function Object:ScrollGetInfo(scrollType)
    return {}
end

---@param scrollType integer
---@param offset integer
---@return integer itemIndex
function Object:ScrollGetItemByOffset(scrollType, offset)
    return 1
end

---@param scrollType integer
---@param itemIdx integer
---@return integer|nil offset
function Object:ScrollGetItemOffset(scrollType, itemIdx)
    return 0
end

---@param scrollType integer
---@param itemIdx integer
---@return integer|nil size
function Object:ScrollGetItemSize(scrollType, itemIdx)
    return 0
end

---@param scrollType integer
---@return boolean isNeeded
function Object:ScrollIsNeeded(scrollType)
    return false
end

---@param index integer
function Object:SelectListItemByIndex(index)
end

---@param nameValue string
function Object:SelectListItemByName(nameValue)
end

---@param value string
function Object:SelectListItemByValue(value)
end

---@param propertyName string
---@param propertyValue string
---@param overrideChangeLevel? integer @Optional
function Object:Set(propertyName, propertyValue, overrideChangeLevel)
end

---@param propertyName string
---@param propertyValue string
---@param recursive? boolean @Optional
function Object:SetChildren(propertyName, propertyValue, recursive)
end

---@param propertyName string
---@param propertyValue string
---@param recursive? boolean @Optional
function Object:SetChildrenRecursive(propertyName, propertyValue, recursive)
end

---@param index integer
---@param empty? boolean @Optional
function Object:SetEmptyListItem(index, empty)
end

---@param index integer
---@param enable? boolean @Optional
function Object:SetEnabledListItem(index, enable)
end

---@param index integer
---@param appearance table
function Object:SetListItemAppearance(index, appearance)
end

---@param index integer
---@param name string
function Object:SetListItemName(index, name)
end

---@param index integer
---@param value string
function Object:SetListItemValueStr(index, value)
end

---@param x integer
---@param y integer
function Object:SetPositionHint(x, y)
end

---@param callback function
function Object:ShowModal(callback)
end
