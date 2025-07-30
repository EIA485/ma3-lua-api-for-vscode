# Changelog

## 1.4.1 — July 30, 2025

- Update CHANGELOG.md

## 1.4.0 — July 30, 2025

- Added support of GrandMa 3 2.3 API version:
  - Added:
    - Object-Free API:
      - CallRealtimeLockedProtected
      - HostRevision
      - SelectionTable
      - ChannelTable
      - RemoteCallRunning
      - GetVarVersion
      - GetBlockInput
    - Object API:
      - GetListItemAdditionalInfo
      - SetListItemAdditionalInfo
  - Updated:
    - Object-Free API:
      - SetBlockInput function: added "_showInfo" optional parameter
    - Object API:
      - AddListObjectItem function: added "_postNameText" optional parameter
  - Removed:
    - Object-Free API
      - TestPlaybackOutput function
      - TestPlaybackOutputSteps function
      - SampleOutput function
  - Generated list of enums
- renamed folder util/GenerateEnumsFile to generate_enums_file
- added file [publish_extension.txt](utils/vs_code/publish_extension.txt) to remember to publish extension command
- Added [ma_docs](ma_docs/2.1) folder with set of resources for each API version, such as:
  - enums_list.txt generated with the Lua script located in the  [generate_enums_file folder](utils/generate_enums_file)
  - grandMA3_lua_functions.txt generated with the HelpLua command
  - Lua Html from the official documentation located in the C:\ProgramData\MALightingTechnology\gma3_x.x.x\shared\language\HTML folder
- Updated devDependencies

## 1.3.6 — July 10, 2025

- Fix SetVar value missing in autocomplete
- Fix markdown format
  
## 1.3.5 — June 16, 2025

- Fix GetTopOverlay description
- format README.md

## 1.3.4 — April 7, 2025

- Update some text format in MessageBox documentation
- Fix readme image link
- Add missing changelog for 1.3.3

## 1.3.3 — March 24, 2025

- Add new fields to Handle class and Obj function

## 1.3.2 — March 11, 2025

- Move cSpell words from workspace settings to user settings

## 1.3.1 — February 7, 2025

- Added a missing "@Optional" annotation

## 1.3.0 — February 7, 2025

- Add menu to disable extension in non-Ma3 Lua projects

## 1.2.0 — February 6, 2025

- Various spell check
- Added a missing "@Optional" annotation
- Added underscore on start of optional fields in autocomplete

## 1.1.2 — February 3, 2025

- Fix wrong text argument for MessageBox

## 1.1.1 — February 1, 2025

- Change extension logo

## 1.1.0 — January 31, 2025

- Add Enums to the dummy files

## 1.0.2 — January 30, 2025

- Add configuration to disable 'undefined-field' diagnostics in workspace

## 1.0.1 — January 30, 2025

- added missing "@Optional" annotation to few functions in the dummy files

## 1.0.0 — January 29, 2025

- Initial public release
