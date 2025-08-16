---@meta
--- Ma3 API version: 2.2

-- Not documented Object definition
-- ========================================

---@class Object
Object = {}

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


---@param changeLevelEnum ChangeLevel
function Object:Changed(changeLevelEnum) end

function Object:ClearList() end


---@return table childHandles
function Object:CmdlineChildren() end

---@param index integer
---@return Object childHandle
function Object:CmdlinePtr(index) end

function Object:CommandAt() end

---@param destHandle Object
---@param focusSearchAllowed boolean? @Optional
function Object:CommandCall(destHandle, focusSearchAllowed) end

function Object:CommandCreateDefaults() end

function Object:CommandDelete() end

function Object:CommandStore() end

---@param otherHandle Object
---@return boolean isEqual
---@return string whatDiffers
function Object:Compare(otherHandle) end

---@param srcHandle Object
---@param undo Object? @Optional
function Object:Copy(srcHandle, undo) end


---@param childIndex integer
---@param undo Object? @Optional
function Object:Delete(childIndex, undo) end

---@param value string
---@return integer index
function Object:FindListItemByName(value) end

---@param value string
---@return integer index
function Object:FindListItemByValueStr(value) end

---@param searchName string
---@return Object? foundHandle
function Object:FindWild(searchName) end

---@return Object assignedHandle
function Object:GetAssignedObj() end

---@param camelCaseToFileName boolean? @Optional
---@return string fileName
function Object:GetExportFileName(camelCaseToFileName) end

---@param lineNumber integer
---@return string lineContent
function Object:GetLineAt(lineNumber) end

---@return integer count
function Object:GetLineCount() end

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


---@return boolean hasDependencies
function Object:HasDependencies() end

---@return boolean hasEditSettingUI
function Object:HasEditSettingUI() end

---@return boolean hasEditUI
function Object:HasEditUI() end

---@generic T : Object
---@param objectToCheck T
---@return T? @returns the passed in Object if it's self's parent. else returns nil
function Object:HasParent(objectToCheck) end

---@return boolean hasReferences
function Object:HasReferences() end

---@return integer index
function Object:Index() end

---@param parameterName string
---@param parameterValue string
function Object:InputSetAdditionalParameter(parameterName, parameterValue) end

---@param nameValue string
function Object:InputSetEditTitle(nameValue) end

---@param length integer
function Object:InputSetMaxLength(length) end

---@param nameValue string
function Object:InputSetTitle(nameValue) end

---@param value string
function Object:InputSetValue(value) end


---@return boolean isEmpty
function Object:IsEmpty() end


---@param index integer
function Object:IsListItemEmpty(index) end

---@param index integer
function Object:IsListItemEnabled(index) end

---@return boolean isLocked
function Object:IsLocked() end

---@return boolean isValid
function Object:IsValid() end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Load(filePath, fileName) end

---@return integer maxCount
function Object:MaxCount() end

function Object:PrepareAccess() end

---@return integer propertyCount
function Object:PropertyCount() end

---@param propertyIndex integer
---@return {ExportIgnore: boolean, EnumCollection: EnumCollection?, ReadOnly: boolean, ImportIgnore: boolean} propertyInfo
function Object:PropertyInfo(propertyIndex) end


---@param childIndex integer
---@param undo Object? @Optional
function Object:Remove(childIndex, undo) end

---@param name string
function Object:RemoveListItem(name) end

---@param size integer
function Object:Resize(size) end

---@param filePath string
---@param fileName string
---@return boolean success
function Object:Save(filePath, fileName) end


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
