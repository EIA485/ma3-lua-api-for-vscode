---@meta
--- Ma3 API version: 2.2

-- Object free definition
-- ========================================

---@param fixtureTable table
---@return boolean? success
function AddFixtures(fixtureTable) end

---@param addonName string
---@return Variables? addonVariable
function AddonVars(addonName) end

---@return table buildDetails
function BuildDetails() end

---@param dmxMode DMXMode
---@param startAddress string
---@param count integer?? @Optional
---@param breakIndex integer? @Optional
---@return boolean noCollisionFound
function CheckDMXCollision(dmxMode, startAddress, count, breakIndex) end

---@param fixtureId integer
---@param count integer? @Optional
---@param type integer? @Optional
---@return boolean noCollisionFound
function CheckFIDCollision(fixtureId, count, type) end

---@param className string
---@return boolean result
function ClassExists(className) end

function CloseAllOverlays() end

---@param undoHandle Undo
---@return boolean closed
function CloseUndo(undoHandle) end

---@param command string
---@param undoHandle Undo? @Optional
---@return string result
function Cmd(command, undoHandle) end

---@param command string
---@param undoHandle Undo? @Optional
---@param handleTarget Object? @Optional
function CmdIndirect(command, undoHandle, handleTarget)
    end

---@param command string
---@param undoHandle Undo? @Optional
---@param handleTarget Object? @Optional
function CmdIndirectWait(command, undoHandle, handleTarget)
    end

---@return Cmdline object
function CmdObj() end

---@return table configDetails
function ConfigTable() end

---@param title string
---@param text string? @Optional
---@param screen integer? @Optional
---@param showCancel boolean? @Optional
---@return boolean result
function Confirm(title, text, screen, showCancel) end

---@param fixtureTableHandle Fixture[]
---@param multiPatchAmount integer
---@param undoText string? @Optional
---@return integer? multiPatchAmountCreated
function CreateMultiPatch(fixtureTableHandle, multiPatchAmount, undoText) end

---@param undoText any
---@return Undo undoHandle
function CreateUndo(undoText) end

---@return UserEnvironment environmentHandle
function CurrentEnvironment() end

---@return Page execHandle
function CurrentExecPage() end

---@return UserProfile profileHandle
function CurrentProfile() end

---@return ScreenConfig screenConfigHandle
function CurrentScreenConfig() end

---@return User userHandle
function CurrentUser() end

---@return Pool dataPoolHandle
function DataPool() end

---@return DefaultDisplayPositions displayPositionsHandle
function DefaultDisplayPositions() end

---@param variableSetHandle Variables
---@param variableName string
---@return boolean success 
function DelVar(variableSetHandle, variableName) end

---@return boolean deskIsLocked
function DeskLocked() end

---@return DeviceConfigurations configurationHandle
function DeviceConfiguration() end

---@param path string
---@param filter string? @Optional
---@return table
function DirList(path, filter) end

---@param displayIndex integer
---@param position table
---@param duration integer? @Optional
function DrawPointer(displayIndex, position, duration) end

function DumpAllHooks() end

---@param message string
function Echo(message) end

---@param message string
function ErrEcho(message) end

---@param message string
function ErrPrintf(message)
    end

---@param fileName string
---@param exportData table
---@return boolean success
function Export(fileName, exportData) end

---@param fileName string
---@param exportData table
---@return boolean success
function ExportCSV(fileName, exportData) end

---@param fileName string
---@param exportData table
---@return boolean success
function ExportJson(fileName, exportData) end

---@param fileName string
---@return boolean result
function FileExists(fileName) end

---@param textureName string
---@return Texture? textureHandle
function FindTexture(textureName) end

---@param fixtureDMXMode DMXmode
---@return Fixture fixtureHandle
function FirstDmxModeFixture(fixtureDMXMode) end

---@return FixtureType? fixtureHandle
function FixtureType() end

---@param objectString string
---@param addressHandle Object? @Optional
---@return Object object
function FromAddr(objectString, addressHandle) end

---@return table apiDescriptor
function GetApiDescriptor() end

---@param channelIndex integer
---@return Attribute attributeHandle
function GetAttributeByUIChannel(channelIndex) end

---@return integer attributeCount
function GetAttributeCount() end

---@param attributeName string
---@return integer attributeIndex
function GetAttributeIndex(attributeName) end

---@param Ma3ModuleHandle UsbDeviceMA3
---@return table state
function GetButton(Ma3ModuleHandle) end

---@param channelIndex integer
---@param attributeIndex integer
---@return ChannelFunction channelFunctionHandle
function GetChannelFunction(channelIndex, attributeIndex) end

---@param channelIndex integer
---@param attributeIndex integer
---@return integer channelFunctionIndex
function GetChannelFunctionIndex(channelIndex, attributeIndex) end

---@param className string
---@return integer derivationLevel
function GetClassDerivationLevel(className) end

---@return Cue cueHandle
function GetCurrentCue() end

---@return integer fps
function GetDebugFPS() end

---@param displayIndex integer
---@return Display displayHandle
function GetDisplayByIndex(displayIndex) end

---@return DisplayCollect DisplayCollectHandle
function GetDisplayCollect() end

---@param universe integer
---@param isPercent boolean? @Optional
---@return table? universe
function GetDMXUniverse(universe, isPercent) end

---@param address integer
---@param universe integer? @Optional
---@param returnPercent boolean? @Optional
---@return integer? value
function GetDMXValue(address, universe, returnPercent) end

---@param executorNumber integer
---@return Exec executor, Page page
function GetExecutor(executorNumber) end

---@return UIObject focusHandle
function GetFocus() end

---@return Display focusDisplayHandle
function GetFocusDisplay() end

---@return table apiDescriptor
function GetObjApiDescriptor() end

---@param folderNameOrIndex string|integer
---@param createIfNotExist boolean?? @Optional
---@return string path
function GetPath(folderNameOrIndex, createIfNotExist) end

---@param folderNameOrIndex string|integer
---@param basePath string
---@param createIfNotExist boolean? @Optional 
---@return string path
function GetPathOverrideFor(folderNameOrIndex, basePath, createIfNotExist) end

---@return string separator
function GetPathSeparator() end

---@param objectHandle Object
---@param pathContentType integer? @Optional
---@return string pathType
function GetPathType(objectHandle, pathContentType) end

---@param presetHandle Preset
---@param returnPhaserData boolean?? @Optional
---@param extract boolean? @Optional
---@return {by_fixtures: {}, count:number} presetData
function GetPresetData(presetHandle, returnPhaserData, extract) end

---@param rtChannelIndex integer
---@return table reChanelDescriptor
function GetRTChannel(rtChannelIndex) end

---@return integer count
function GetRTChannelCount() end

--define fallback sig since emmylua's global overload handeling is not the best (issue#651)

---@param fixture integer|Fixture
---@param returnHandles bool?
---@return RTChannel[]|integer[]
---@overload fun(fixture: integer|Fixture, returnHandles: false?) : integer[]
---@overload fun(fixture: integer|Fixture, returnHandles: true) : RTChannel[]
function GetRTChannels(fixture, returnHandles) end

---@param sampleType string
---@return number sample
function GetSample(sampleType) end

---@param screenHandle Object
---@return ScreenContent screenContentHandle
function GetScreenContent(screenHandle) end

---@return Attribute? attributeHandle
function GetSelectedAttribute() end

---@return string status
function GetShowFileStatus() end

---@param fixtureIndex integer
---@return Fixture subFixtureHandle
function GetSubfixture(fixtureIndex) end

---@return integer count
function GetSubfixtureCount() end

---@param shortKeyword string
---@return string? tokenName
function GetTokenName(shortKeyword) end

---@param index string
---@return string? tokenName
function GetTokenNameByIndex(index) end

---@return Popup? modalHandle
function GetTopModal() end

---@param displayIndex integer
---@return Overlay? overlayHandle
function GetTopOverlay(displayIndex) end

---@return integer count
function GetUIChannelCount() end

---@param patchIndex integer
---@param attributeIndex integer
---@return integer index
function GetUIChannelIndex(patchIndex, attributeIndex) end

---@overload fun(fixture: integer|Fixture, returnHandles: false?) : integer[]
---@overload fun(fixture: integer|Fixture, returnHandles: true) : UIChannel[]
function GetUIChannels(fixtureIndexOrHandle, returnHandles) end

---@param displayIndex integer
---@param positionTable {x:integer, y:integer}
---@return UIObject? objectHandle
function GetUIObjectAtPosition(displayIndex, positionTable) end

---@param variableHandle Variables
---@param varName string
---@return string|integer|number|Object? value
function GetVar(variableHandle, varName) end

---@return Variables globalVarHandle
function GlobalVars() end

---@param objectHandle Object
---@return integer handleInt
function HandleToInt(objectHandle) end

---@param objectHandle Object
---@return string handleString
function HandleToStr(objectHandle) end

---@param callback function
---@param objectHandle Object
---@param pluginHandle Plugin
---@param passedObjectHandle Object? @Optional
---@return integer hookId
function HookObjectChange(functionName, objectHandle, pluginHandle, passedObjectHandle) end

---@return string os
function HostOS() end

---@return string subType
function HostSubType() end

---@return string type
function HostType() end

---@param fileName string
---@return table content
function Import(fileName) end

---@param progressBarHandle Object
---@param value integer
function IncProgress(progressBarHandle, value) end

---@param handleInteger integer
---@return Object Object
function IntToHandle(handleInteger) end

---@param derivedClassName string
---@param baseClassName string
---@return boolean result
function IsClassDerivedFrom(derivedClassName, baseClassName) end

---@param objectHandle Object
---@return boolean? valid
function IsObjectValid(objectHandle) end

---@return Keyboard keyboardHandle
function KeyboardObj() end

---@return Masters poolHandle
function MasterPool() end

---@param messageBoxSettings table
---@return table result
function MessageBox(messageBoxSettings) end

---@return Mouse mouseHandle
function MouseObj() end

---@return boolean needShowSave
function NeedShowSave() end

---@param objectListCommand string #string to parse/resolve (e.g. 'Fixture Thru')
---@param optionsTable table? @Optional
---@return Object[] objectList
function ObjectList(objectListCommand, optionsTable) end

---@return Patch patchHandle
function Patch() end

---@param message string
function Printf(message) end

---@return Programmer programmerHandle
function Programmer() end

---@return ProgPart programmerPartHandle
function ProgrammerPart() end

---@return Pult currentPultHandle
function Pult() end

---@return string releaseType
function ReleaseType() end

---@return Root rootHandle
function Root() end

---@return Feature? featureHandle
function SelectedFeature() end

---@return Layout? layoutHandle
function SelectedLayout() end

---@return Sequence sequenceHandle
function SelectedSequence() end

---@return Timecode? timecodeHandle
function SelectedTimecode() end

---@return Timer timerHandle
function SelectedTimer() end

---@return Selection fixturesHandle
function Selection() end

---@return integer count
function SelectionCount() end

---@return integer patchIndex, integer gridX, integer gridY, integer gridZ
function SelectionFirst() end

---@param fixtureIndex integer
---@return integer patchIndex, integer gridX, integer gridY, integer gridZ
function SelectionNext(fixtureIndex) end

---@return string serialNumber
function SerialNumber() end

---@param block boolean
function SetBlockInput(block) end

---@param moduleHandle Object
---@param ledTable table
function SetLED(moduleHandle, ledTable) end

---@param progressBarHandle Object
---@param progress integer
function SetProgress(progressBarHandle, progress) end

---@param progressBarHandle Object
---@param rangeStart integer
---@param rangeEnd integer
function SetProgressRange(progressBarHandle, rangeStart, rangeEnd) end

---@param progressBarHandle Object
---@param text string
function SetProgressText(progressBarHandle, text) end

---@param variableSetHandle Variables
---@param varName string
---@param value string|number
---@return boolean success
function SetVar(variableSetHandle, varName, value) end

---@return ShowData showDataHandle
function ShowData() end

---@return ShowSettings settingsHandle
function ShowSettings() end

---@param title string
---@return Object progressBarHandle
function StartProgress(title) end

---@param progressBarHandle Object
function StopProgress(progressBarHandle) end

---@param handleString string
---@return Object Object
function StrToHandle(handleString) end

---@param title string? @Optional
---@param textGuide string? @Optional
---@param xPosition string? @Optional
---@param yPosition string? @Optional
---@return string textInputHandle
function TextInput(title, textGuide, xPosition, yPosition) end

---@return integer time
function Time() end

---@param timedFunction function
---@param waitSeconds integer
---@param iterations integer
---@param timerCleanup function? @Optional
---@param passedObjectHandle Object? @Optional
function Timer(timedFunction, waitSeconds, iterations, timerCleanup, passedObjectHandle) end

---@param objectHandle Object
---@param returnType boolean? @Optional
---@return string address
function ToAddr(objectHandle, returnType) end

---@return Touch touchObjectHandle
function TouchObj() end

---@param hookId integer
function Unhook(hookId) end

---@param functionName function?
---@param targetObjectHandle Object?
---@param contextObjectHandle Object?
---@return integer amount
function UnhookMultiple(functionName, targetObjectHandle, contextObjectHandle) end

---@return Variables userVarHandle
function UserVars() end

---@return string textVersion, integer major, integer minor, integer streaming, integer ui
function Version() end