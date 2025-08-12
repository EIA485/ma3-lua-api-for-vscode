---@meta

---@class User: GuidObject
---@field Password Crypto.SHA256
---@field Profile UserProfile
---@field ScreenConfig ScreenConfig
---@field Rights integer
---@field Language string
---@field Keyboard KeyboardLayout A reference to a currently selected keyboard layout
---@field PrivacyPolicy integer
---@field WebRemoteLogin integer
local User = {
    Profile="Default",
    ScreenConfig="Default",
    Rights="Admin",
    Language="en",
    Keyboard="en"
}
---@return "User"
function User:GetClass() end
---@return "Object"
function User:GetChildClass() end
---@return Users
function User:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Password", role: nil): Crypto.SHA256
---@overload fun(name: "Profile", role: nil): UserProfile
---@overload fun(name: "ScreenConfig", role: nil): ScreenConfig
---@overload fun(name: "Rights", role: nil): integer
---@overload fun(name: "Language", role: nil): string
---@overload fun(name: "Keyboard", role: nil): KeyboardLayout
---@overload fun(name: "PrivacyPolicy"|"WebRemoteLogin", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Password"|"Profile"|"ScreenConfig"|"Rights"|"Language"|"Keyboard"|"PrivacyPolicy"|"WebRemoteLogin", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function User:Get(name, role) end
