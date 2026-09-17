

-- ----------------------------------------------------
-- ----------------------------------------------------

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local Stats = game:GetService("Stats")
local Workspace = game:GetService("Workspace")
PS99Farm = PS99Farm or {}
loadPresetsFromFile = nil
savePresetsToFile = nil
getCurrentConfigData = nil
syncAllTogglesUI = nil
applyConfigData = nil
loadConfigsFromFile = nil
saveConfigsToFile = nil
getDefaultConfigData = nil
updateAllDynamicElementsColor = nil
applyDropdownThemeColors = nil
applySliderThemeColors = nil
updateAutoLoadLabel = nil
rebuildPresetSelectionList = nil
rebuildConfigSelectionList = nil
startPinataLoop = nil
sendNotification = nil

function clearPinataTeleportFreeze()
end

function applyPinataTeleportFreeze()
end

function pinataTeleportToModel()
end

function processPinataTeleportTarget()
  return false
end

function startPinataLoop()
  pinataIsRunning = false

  if pinataLoopThread then
    pinataLoopThread = nil
  end
end

tintColorForSlider = nil
contrastTextColor = nil
Players = Players
UserInputService = UserInputService
VirtualInputManager = VirtualInputManager
ReplicatedStorage = ReplicatedStorage
RunService = RunService
Lighting = Lighting
TeleportService = TeleportService
HttpService = HttpService
TweenService = TweenService
Stats = Stats
Workspace = Workspace
ReplicatedStorage = ReplicatedStorage
LocalPlayer = Players.LocalPlayer
DEVS_JSON_URL = "https://raw.githubusercontent.com/KeLLo19/KHub/refs/heads/main/devs.json"
normalFPS = 60
customFPS = 1
isCustomFPS = false
scriptRunning = true
antiAfkEnabled = false
autoGiftsEnabled = false
autoJoinEventEnabled = false
autoZoneLootEnabled = false
autoZoneLootLoopThread = nil
autoZoneLootInterval = 60
autoZoneLootClaimDelay = 1.5
autoMinigamesEnabled = false
autoMinigamesLoopThread = nil
autoMinigamesBusy = false
minigamesStatusLabels = {}

minigameRunState = {
  Current = nil,
  Score = nil,
  Tickets = nil,
  Countdown = 0,
}

disable3DRendering = false
potatoModeEnabled = false
uiVisible = true
currentToggleKey = Enum.KeyCode.Insert
isListeningForKey = false
isColorPickerOpen = false
activeColorPicker = nil

GiftRemoteNames = {
  ["Arcade Gift"] = "Arcade Gift",
  ["Mini Chest"] = "Mini Chest",
  ["Charm Stone"] = "Charm Stone",
  ["Gift Bag"] = "Gift Bag",
  ["Large Gift Bag"] = "Large Gift Bag",
  ["Bundle O' Fruit"] = "Fruit Bundle",
  ["Bundle O' Enchants"] = "Enchant Bundle",
  ["Bundle O' Flags"] = "Flag Bundle",
  ["Large Bundle O' Enchants"] = "Large Enchant Bundle",
  ["Large Bundle O' Potions"] = "Large Potion Bundle",
  ["Bundle O' Potions"] = "Potion Bundle",
  ["Bundle O' Toys"] = "Toy Bundle",
}

breakablesFolder = Workspace:WaitForChild("__THINGS"):WaitForChild("Breakables")
damageEvent = ReplicatedStorage:WaitForChild("Network"):WaitForChild("Breakables_PlayerDealDamage")
autoOptimizePetsEnabled = false
autoOptimizePetsLoopThread = nil
lastSquadSignature = ""
squadOptimizeBusy = false
autoBoostMachineEnabled = false
autoBoostMachineFraction = "Max"
autoBoostMachineSelected = { Coins = false, Xp = false, Luck = false }
autoBoostMachineLoopThread = nil
autoGiftMachineEnabled = false
autoGiftMachineLoopThread = nil
pinataMinDelay = 0
pinataMaxDelay = 5
pinataCurrentDelay = 0.1
pinataIsRunning = false
pinataFocusTarget = false
pinataAutoTeleport = false
pinataLoopThread = nil
pinataLastTeleportTarget = nil
pinataTeleportAnchorState = nil
pinataTeleportPlatformStandState = nil
persistentBossId = nil
pinataFocusedTargetId = nil
autoChestsEnabled = false
autoChestsSelected = { Titanic = true, Gargantuan = true }
autoChestsLastClaimed = nil
autoChestsLoopThread = nil
autoBoostEnabled = false
autoBoostPriority = "Lowest"
autoBoostSelected = { Damage = false, Speed = false, EggLuck = false }
autoBoostLoopThread = nil
autoBuyLuckBoostEnabled = false
autoBuyLuckBoostLoopThread = nil
autoBuyLuckBoostRarities = { "Huge", "Titanic", "Gargantuan" }
autoHatchEnabled = false
autoHatchPreferredEggId = nil
autoHatchMaxDistance = 60
autoHatchDelay = 0.75
autoHatchLoopThread = nil
autoHatchTeleportDone = false
autoHatchLastTargetUid = nil
autoHatchFreezeAnchorState = nil
autoHatchFreezePlatformStandState = nil
autoHatchDisableFreeze = false
autoHatchStandCFrame = nil
autoBuyUpgradesEnabled = false
autoBuyUpgradesLoopThread = nil
autoBuyUpgradesCooldown = 2

availableLuckyEggs = {
  "Nearest (Any)", "1 | Yellow Lucky Egg", "2 | Chartreuse Lucky Egg", "3 | Green Lucky Egg",
  "4 | Cyan Lucky Egg", "5 | Azure Lucky Egg",
}

require(ReplicatedStorage.Library.Client.EventUpgradeCmds)
require(ReplicatedStorage.Library.Directory.EventUpgrades)
require(game.ReplicatedStorage.Library.Directory.EventUpgrades)

C_BG = Color3.fromRGB(15, 15, 20)
C_SIDEBAR = Color3.fromRGB(22, 22, 29)
C_CARD = Color3.fromRGB(28, 28, 38)
C_PROFILE = Color3.fromRGB(18, 18, 25)
C_ACCENT = Color3.fromRGB(114, 137, 218)
C_BUTTON = Color3.fromRGB(114, 137, 218)
C_SUCCESS = Color3.fromRGB(46, 204, 113)
C_DANGER = Color3.fromRGB(231, 76, 60)
C_TEXT = Color3.fromRGB(255, 255, 255)
C_SUBTEXT = Color3.fromRGB(190, 195, 210)
C_SECTION_HEADER = Color3.fromRGB(114, 137, 218)
C_STATBOX = Color3.fromRGB(18, 18, 25)
C_DASHBOARD_LIVE = Color3.fromRGB(18, 18, 25)
C_CONTAINERS = Color3.fromRGB(18, 18, 26)
C_PRESET_SELECTION = Color3.fromRGB(24, 24, 34)
C_CONFIG_SELECTION = Color3.fromRGB(24, 24, 34)
C_SLIDER = Color3.fromRGB(114, 137, 218)
C_DROPDOWN_BUTTON = Color3.fromRGB(32, 38, 56)
containerFramesList = {}
sliderUiElementsList = {}
SETTINGS_FILE_NAME = "PS99Farm_ThemePresets.json"

savedThemePresets = {
  ["Default Dark"] = {
    BG = Color3.fromRGB(15, 15, 20),
    SIDEBAR = Color3.fromRGB(22, 22, 29),
    CARD = Color3.fromRGB(28, 28, 38),
    PROFILE = Color3.fromRGB(18, 18, 25),
    ACCENT = Color3.fromRGB(114, 137, 218),
    BUTTON = Color3.fromRGB(114, 137, 218),
    SECTION_HEADER = Color3.fromRGB(114, 137, 218),
    STATBOX = Color3.fromRGB(18, 18, 25),
    DASHBOARD_LIVE = Color3.fromRGB(18, 18, 25),
    CONTAINERS = Color3.fromRGB(38, 38, 52),
    PRESET_SELECTION = Color3.fromRGB(24, 24, 34),
    CONFIG_SELECTION = Color3.fromRGB(24, 24, 34),
    SLIDER = Color3.fromRGB(114, 137, 218),
    DROPDOWN_BUTTON = Color3.fromRGB(34, 34, 44),
  },
  ["Midnight Blue"] = {
    BG = Color3.fromRGB(10, 12, 25),
    SIDEBAR = Color3.fromRGB(16, 18, 35),
    CARD = Color3.fromRGB(22, 25, 48),
    PROFILE = Color3.fromRGB(14, 16, 30),
    ACCENT = Color3.fromRGB(52, 152, 219),
    BUTTON = Color3.fromRGB(52, 152, 219),
    SECTION_HEADER = Color3.fromRGB(52, 152, 219),
    STATBOX = Color3.fromRGB(14, 16, 30),
    DASHBOARD_LIVE = Color3.fromRGB(14, 16, 30),
    CONTAINERS = Color3.fromRGB(32, 38, 70),
    PRESET_SELECTION = Color3.fromRGB(18, 22, 42),
    CONFIG_SELECTION = Color3.fromRGB(18, 22, 42),
    SLIDER = Color3.fromRGB(52, 152, 219),
    DROPDOWN_BUTTON = Color3.fromRGB(24, 30, 52),
  },
  ["Dark Slate"] = {
    BG = Color3.fromRGB(20, 20, 20),
    SIDEBAR = Color3.fromRGB(30, 30, 30),
    CARD = Color3.fromRGB(40, 40, 40),
    PROFILE = Color3.fromRGB(25, 25, 25),
    ACCENT = Color3.fromRGB(46, 204, 113),
    BUTTON = Color3.fromRGB(46, 204, 113),
    SECTION_HEADER = Color3.fromRGB(46, 204, 113),
    STATBOX = Color3.fromRGB(25, 25, 25),
    DASHBOARD_LIVE = Color3.fromRGB(25, 25, 25),
    CONTAINERS = Color3.fromRGB(55, 55, 55),
    PRESET_SELECTION = Color3.fromRGB(35, 35, 35),
    CONFIG_SELECTION = Color3.fromRGB(35, 35, 35),
    SLIDER = Color3.fromRGB(46, 204, 113),
    DROPDOWN_BUTTON = Color3.fromRGB(48, 48, 48),
  },
  ["Cyberpunk Neon"] = {
    BG = Color3.fromRGB(12, 10, 20),
    SIDEBAR = Color3.fromRGB(20, 15, 32),
    CARD = Color3.fromRGB(28, 22, 45),
    PROFILE = Color3.fromRGB(18, 14, 30),
    ACCENT = Color3.fromRGB(255, 0, 127),
    BUTTON = Color3.fromRGB(255, 0, 127),
    SECTION_HEADER = Color3.fromRGB(255, 0, 127),
    STATBOX = Color3.fromRGB(18, 14, 30),
    DASHBOARD_LIVE = Color3.fromRGB(18, 14, 30),
    CONTAINERS = Color3.fromRGB(45, 30, 65),
    PRESET_SELECTION = Color3.fromRGB(22, 16, 38),
    CONFIG_SELECTION = Color3.fromRGB(22, 16, 38),
    SLIDER = Color3.fromRGB(255, 0, 127),
    DROPDOWN_BUTTON = Color3.fromRGB(42, 24, 60),
  },
  ["Emerald Forest"] = {
    BG = Color3.fromRGB(10, 18, 14),
    SIDEBAR = Color3.fromRGB(15, 26, 20),
    CARD = Color3.fromRGB(22, 38, 28),
    PROFILE = Color3.fromRGB(14, 22, 17),
    ACCENT = Color3.fromRGB(46, 204, 113),
    BUTTON = Color3.fromRGB(46, 204, 113),
    SECTION_HEADER = Color3.fromRGB(46, 204, 113),
    STATBOX = Color3.fromRGB(14, 22, 17),
    DASHBOARD_LIVE = Color3.fromRGB(14, 22, 17),
    CONTAINERS = Color3.fromRGB(32, 55, 40),
    PRESET_SELECTION = Color3.fromRGB(16, 30, 22),
    CONFIG_SELECTION = Color3.fromRGB(16, 30, 22),
    SLIDER = Color3.fromRGB(46, 204, 113),
    DROPDOWN_BUTTON = Color3.fromRGB(28, 42, 32),
  },
  ["Sunset Orange"] = {
    BG = Color3.fromRGB(20, 12, 12),
    SIDEBAR = Color3.fromRGB(30, 18, 18),
    CARD = Color3.fromRGB(40, 24, 24),
    PROFILE = Color3.fromRGB(25, 15, 15),
    ACCENT = Color3.fromRGB(230, 126, 34),
    BUTTON = Color3.fromRGB(230, 126, 34),
    SECTION_HEADER = Color3.fromRGB(230, 126, 34),
    STATBOX = Color3.fromRGB(25, 15, 15),
    DASHBOARD_LIVE = Color3.fromRGB(25, 15, 15),
    CONTAINERS = Color3.fromRGB(58, 34, 34),
    PRESET_SELECTION = Color3.fromRGB(32, 20, 20),
    CONFIG_SELECTION = Color3.fromRGB(32, 20, 20),
    SLIDER = Color3.fromRGB(230, 126, 34),
    DROPDOWN_BUTTON = Color3.fromRGB(48, 30, 26),
  },
  ["Royal Purple"] = {
    BG = Color3.fromRGB(15, 10, 20),
    SIDEBAR = Color3.fromRGB(24, 16, 32),
    CARD = Color3.fromRGB(34, 22, 45),
    PROFILE = Color3.fromRGB(20, 13, 27),
    ACCENT = Color3.fromRGB(155, 89, 182),
    BUTTON = Color3.fromRGB(155, 89, 182),
    SECTION_HEADER = Color3.fromRGB(155, 89, 182),
    STATBOX = Color3.fromRGB(20, 13, 27),
    DASHBOARD_LIVE = Color3.fromRGB(20, 13, 27),
    CONTAINERS = Color3.fromRGB(50, 32, 65),
    PRESET_SELECTION = Color3.fromRGB(26, 17, 36),
    CONFIG_SELECTION = Color3.fromRGB(26, 17, 36),
    SLIDER = Color3.fromRGB(155, 89, 182),
    DROPDOWN_BUTTON = Color3.fromRGB(40, 28, 54),
  },
  ["Teal Breeze"] = {
    BG = Color3.fromRGB(10, 18, 20),
    SIDEBAR = Color3.fromRGB(15, 28, 32),
    CARD = Color3.fromRGB(22, 38, 44),
    PROFILE = Color3.fromRGB(14, 24, 27),
    ACCENT = Color3.fromRGB(26, 188, 156),
    BUTTON = Color3.fromRGB(26, 188, 156),
    SECTION_HEADER = Color3.fromRGB(26, 188, 156),
    STATBOX = Color3.fromRGB(14, 24, 27),
    DASHBOARD_LIVE = Color3.fromRGB(14, 24, 27),
    CONTAINERS = Color3.fromRGB(32, 55, 62),
    PRESET_SELECTION = Color3.fromRGB(16, 30, 35),
    CONFIG_SELECTION = Color3.fromRGB(16, 30, 35),
    SLIDER = Color3.fromRGB(26, 188, 156),
    DROPDOWN_BUTTON = Color3.fromRGB(30, 46, 52),
  },
}

function loadPresetsFromFile()
  if readfile and isfile and isfile(SETTINGS_FILE_NAME) then
    local v2, v3 = pcall(function()
      return HttpService:JSONDecode(readfile(SETTINGS_FILE_NAME))
    end)

    if v2 and type(v3) == "table" then
      for key, value in pairs(v3) do
        if value.BG and value.SIDEBAR and value.CARD and value.PROFILE and value.ACCENT then
          local SavedThemePresets = savedThemePresets
          local Color3_2 = Color3.new(value.BG[1], value.BG[2], value.BG[3])
          local Color3_3 = Color3.new(value.SIDEBAR[1], value.SIDEBAR[2], value.SIDEBAR[3])
          local Color3_4 = Color3.new(value.CARD[1], value.CARD[2], value.CARD[3])
          local Color3_5 = Color3.new(value.PROFILE[1], value.PROFILE[2], value.PROFILE[3])
          local Color3_6 = Color3.new(value.ACCENT[1], value.ACCENT[2], value.ACCENT[3])
          local BUTTON = value.BUTTON

          local Button = BUTTON
          Button = BUTTON and Color3.new(value.BUTTON[1], value.BUTTON[2], value.BUTTON[3])

          local Color6 = Button
          Color6 = Button or Color3.new(value.ACCENT[1], value.ACCENT[2], value.ACCENT[3])

          local SECTION_HEADER = value.SECTION_HEADER

          local SectionHEADER = SECTION_HEADER

          SectionHEADER = SECTION_HEADER and Color3.new(
            value.SECTION_HEADER[1], value.SECTION_HEADER[2], value.SECTION_HEADER[3]
          )

          local Color8 = SectionHEADER
          Color8 = SectionHEADER or Color3.new(value.ACCENT[1], value.ACCENT[2], value.ACCENT[3])

          local STATBOX = value.STATBOX

          local Statbox = STATBOX
          Statbox = STATBOX and Color3.new(value.STATBOX[1], value.STATBOX[2], value.STATBOX[3])

          local Color10 = Statbox
          Color10 = Statbox or Color3.fromRGB(18, 18, 25)

          local New = value.DASHBOARD_LIVE and Color3.new(
            value.DASHBOARD_LIVE[1], value.DASHBOARD_LIVE[2], value.DASHBOARD_LIVE[3]
          ) or value.PROFILE and Color3.new(value.PROFILE[1], value.PROFILE[2], value.PROFILE[3]) or Color3.fromRGB(18, 18, 25)

          local CONTAINERS = value.CONTAINERS

          local Containers = CONTAINERS

          Containers = CONTAINERS
            and Color3.new(value.CONTAINERS[1], value.CONTAINERS[2], value.CONTAINERS[3])

          local Color13 = Containers
          Color13 = Containers or Color3.fromRGB(18, 18, 26)

          local PRESET_SELECTION = value.PRESET_SELECTION

          local PresetSELECTION = PRESET_SELECTION

          PresetSELECTION = PRESET_SELECTION and Color3.new(
            value.PRESET_SELECTION[1], value.PRESET_SELECTION[2], value.PRESET_SELECTION[3]
          )

          local Color15 = PresetSELECTION
          Color15 = PresetSELECTION or Color3.fromRGB(24, 24, 34)

          SavedThemePresets[key] = {
            BG = Color3_2,
            SIDEBAR = Color3_3,
            CARD = Color3_4,
            PROFILE = Color3_5,
            ACCENT = Color3_6,
            BUTTON = Color6,
            SECTION_HEADER = Color8,
            STATBOX = Color10,
            DASHBOARD_LIVE = New,
            CONTAINERS = Color13,
            PRESET_SELECTION = Color15,
            CONFIG_SELECTION = value.CONFIG_SELECTION and Color3.new(
              value.CONFIG_SELECTION[1], value.CONFIG_SELECTION[2], value.CONFIG_SELECTION[3]
            ) or Color3.fromRGB(24, 24, 34),
            SLIDER = value.SLIDER and Color3.new(value.SLIDER[1], value.SLIDER[2], value.SLIDER[3]) or value.CONFIG_SELECTION and Color3.new(
              value.CONFIG_SELECTION[1], value.CONFIG_SELECTION[2], value.CONFIG_SELECTION[3]
            ) or Color3.new(value.ACCENT[1], value.ACCENT[2], value.ACCENT[3]),
            DROPDOWN_BUTTON = value.DROPDOWN_BUTTON and Color3.new(
              value.DROPDOWN_BUTTON[1], value.DROPDOWN_BUTTON[2], value.DROPDOWN_BUTTON[3]
            ) or Color3.fromRGB(32, 38, 56),
          }
        end
      end
    end
  end
end

function savePresetsToFile()
  if writefile then
    pcall(function()
      local v5 = {}

      for key2, value2 in pairs(savedThemePresets) do
        v5[key2] = {
          BG = { value2.BG.R, value2.BG.G, value2.BG.B },
          SIDEBAR = { value2.SIDEBAR.R, value2.SIDEBAR.G, value2.SIDEBAR.B },
          CARD = { value2.CARD.R, value2.CARD.G, value2.CARD.B },
          PROFILE = { value2.PROFILE.R, value2.PROFILE.G, value2.PROFILE.B },
          ACCENT = { value2.ACCENT.R, value2.ACCENT.G, value2.ACCENT.B },
          BUTTON = { value2.BUTTON.R, value2.BUTTON.G, value2.BUTTON.B },
          SECTION_HEADER = {
            value2.SECTION_HEADER.R, value2.SECTION_HEADER.G, value2.SECTION_HEADER.B,
          },
          STATBOX = { value2.STATBOX.R, value2.STATBOX.G, value2.STATBOX.B },
          DASHBOARD_LIVE = {
            value2.DASHBOARD_LIVE.R, value2.DASHBOARD_LIVE.G, value2.DASHBOARD_LIVE.B,
          },
          CONTAINERS = { value2.CONTAINERS.R, value2.CONTAINERS.G, value2.CONTAINERS.B },
          PRESET_SELECTION = {
            value2.PRESET_SELECTION.R, value2.PRESET_SELECTION.G, value2.PRESET_SELECTION.B,
          },
          CONFIG_SELECTION = {
            value2.CONFIG_SELECTION.R, value2.CONFIG_SELECTION.G, value2.CONFIG_SELECTION.B,
          },
          SLIDER = { value2.SLIDER.R, value2.SLIDER.G, value2.SLIDER.B },
          DROPDOWN_BUTTON = {
            value2.DROPDOWN_BUTTON.R, value2.DROPDOWN_BUTTON.G, value2.DROPDOWN_BUTTON.B,
          },
        }
      end

      writefile(SETTINGS_FILE_NAME, HttpService:JSONEncode(v5))
    end)
  end
end

loadPresetsFromFile()
CONFIG_FILE_NAME = "PS99Farm_Configs.json"
savedConfigs = {}
selectedConfigName = nil
autoLoadConfigName = nil

function getCurrentConfigData()
  return {
    Theme = {
      BG = { C_BG.R, C_BG.G, C_BG.B },
      SIDEBAR = { C_SIDEBAR.R, C_SIDEBAR.G, C_SIDEBAR.B },
      CARD = { C_CARD.R, C_CARD.G, C_CARD.B },
      PROFILE = { C_PROFILE.R, C_PROFILE.G, C_PROFILE.B },
      ACCENT = { C_ACCENT.R, C_ACCENT.G, C_ACCENT.B },
      BUTTON = { C_BUTTON.R, C_BUTTON.G, C_BUTTON.B },
      SECTION_HEADER = { C_SECTION_HEADER.R, C_SECTION_HEADER.G, C_SECTION_HEADER.B },
      STATBOX = { C_STATBOX.R, C_STATBOX.G, C_STATBOX.B },
      DASHBOARD_LIVE = { C_DASHBOARD_LIVE.R, C_DASHBOARD_LIVE.G, C_DASHBOARD_LIVE.B },
      CONTAINERS = { C_CONTAINERS.R, C_CONTAINERS.G, C_CONTAINERS.B },
      PRESET_SELECTION = { C_PRESET_SELECTION.R, C_PRESET_SELECTION.G, C_PRESET_SELECTION.B },
      CONFIG_SELECTION = { C_CONFIG_SELECTION.R, C_CONFIG_SELECTION.G, C_CONFIG_SELECTION.B },
      SLIDER = { C_SLIDER.R, C_SLIDER.G, C_SLIDER.B },
      DROPDOWN_BUTTON = { C_DROPDOWN_BUTTON.R, C_DROPDOWN_BUTTON.G, C_DROPDOWN_BUTTON.B },
    },
    Settings = {
      antiAfkEnabled = antiAfkEnabled,
      autoJoinEventEnabled = autoJoinEventEnabled,
      autoFreeGiftsActive = autoFreeGiftsActive,
      autoGiftsActive = autoGiftsActive,
      selectedGiftType = selectedGiftType,
      autoZoneLootEnabled = autoZoneLootEnabled,
      autoZoneLootInterval = autoZoneLootInterval,
      autoMinigamesEnabled = autoMinigamesEnabled,
      pinataFocusTarget = pinataFocusTarget,
      pinataAutoTeleport = pinataAutoTeleport,
      pinataCurrentDelay = pinataCurrentDelay,
      currentToggleKey = currentToggleKey.Name,
      customFPS = customFPS,
      isCustomFPS = isCustomFPS,
      pinataIsRunning = pinataIsRunning,
      disable3DRendering = disable3DRendering,
      autoChestsEnabled = autoChestsEnabled,
      autoChestsSelected = {
        Titanic = autoChestsSelected.Titanic and true or false,
        Gargantuan = autoChestsSelected.Gargantuan and true or false,
      },
      autoBoostEnabled = autoBoostEnabled,
      autoBoostPriority = autoBoostPriority,
      autoBoostSelected = {
        Damage = autoBoostSelected.Damage and true or false,
        Speed = autoBoostSelected.Speed and true or false,
        EggLuck = autoBoostSelected.EggLuck and true or false,
      },
      autoBuyLuckBoostEnabled = autoBuyLuckBoostEnabled,
      autoHatchEnabled = autoHatchEnabled,
      autoHatchPreferredEggId = autoHatchPreferredEggId,
      autoHatchDelay = autoHatchDelay,
      autoHatchMaxDistance = autoHatchMaxDistance,
      autoHatchDisableFreeze = autoHatchDisableFreeze,
      autoBuyUpgradesEnabled = autoBuyUpgradesEnabled,
    },
    AutoLoad = autoLoadConfigName,
  }
end

function syncAllTogglesUI()
  if afkBtn then
    local AfkBtn = afkBtn
    AfkBtn.Text = antiAfkEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local AfkBtn_2 = afkBtn
    AfkBtn_2.BackgroundColor3 = antiAfkEnabled and C_SUCCESS or C_DANGER

    if afkStatusLabel then
      local AfkStatusLabel = afkStatusLabel
      AfkStatusLabel.Text = antiAfkEnabled and "<b>Status: Active</b>" or "<b>Status: Disabled</b>"

      local AfkStatusLabel_2 = afkStatusLabel
      AfkStatusLabel_2.TextColor3 = antiAfkEnabled and C_SUCCESS or C_DANGER
    end
  end

  if eventBtn then
    local EventBtn = eventBtn
    EventBtn.Text = autoJoinEventEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local EventBtn_2 = eventBtn
    EventBtn_2.BackgroundColor3 = autoJoinEventEnabled and C_SUCCESS or C_DANGER
  end

  if freeGiftsBtn then
    local FreeGiftsBtn = freeGiftsBtn
    FreeGiftsBtn.Text = autoFreeGiftsActive and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local FreeGiftsBtn_2 = freeGiftsBtn
    FreeGiftsBtn_2.BackgroundColor3 = autoFreeGiftsActive and C_SUCCESS or C_DANGER
  end

  if giftsBtn then
    local GiftsBtn = giftsBtn
    GiftsBtn.Text = autoGiftsActive and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local GiftsBtn_2 = giftsBtn
    GiftsBtn_2.BackgroundColor3 = autoGiftsActive and C_SUCCESS or C_DANGER
  end

  if zoneLootBtn then
    local ZoneLootBtn = zoneLootBtn
    ZoneLootBtn.Text = autoZoneLootEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local ZoneLootBtn_2 = zoneLootBtn
    ZoneLootBtn_2.BackgroundColor3 = autoZoneLootEnabled and C_SUCCESS or C_DANGER
  end

  if minigamesAutoBtn then
    local MinigamesAutoBtn = minigamesAutoBtn
    MinigamesAutoBtn.Text = autoMinigamesEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local MinigamesAutoBtn_2 = minigamesAutoBtn
    MinigamesAutoBtn_2.BackgroundColor3 = autoMinigamesEnabled and C_SUCCESS or C_DANGER
  end

  if zoneLootIntervalLabel and zoneLootSliderFill then
    autoZoneLootInterval = math.clamp(tonumber(autoZoneLootInterval) or 60, 15, 300)
    zoneLootIntervalLabel.Text = string.format("<b>Every: %ds</b>", autoZoneLootInterval)

    zoneLootSliderFill.Size = UDim2.new(
      math.clamp((autoZoneLootInterval - 15) / 285, 0, 1), 0, 1, 0
    )

    local ZoneLootSliderFill = zoneLootSliderFill
    ZoneLootSliderFill.BackgroundColor3 = C_SLIDER or C_ACCENT
  end

  if pinataFocusBtn then
    local PinataFocusBtn = pinataFocusBtn
    PinataFocusBtn.Text = pinataFocusTarget and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local PinataFocusBtn_2 = pinataFocusBtn
    PinataFocusBtn_2.BackgroundColor3 = pinataFocusTarget and C_SUCCESS or C_DANGER
  end

  if pinataTeleportBtn then
    local PinataTeleportBtn = pinataTeleportBtn
    PinataTeleportBtn.Text = pinataAutoTeleport and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local PinataTeleportBtn_2 = pinataTeleportBtn
    PinataTeleportBtn_2.BackgroundColor3 = pinataAutoTeleport and C_SUCCESS or C_DANGER
  end

  if giftDropdownBtn then
    if selectedGiftType then
      giftDropdownBtn.Text = "<b>" .. selectedGiftType .. " ▼</b>"
    else
      giftDropdownBtn.Text = "<b>Select ▼</b>"
    end
  end

  if keybindBtn then
    keybindBtn.Text = "<b>Key: " .. currentToggleKey.Name .. "</b>"
  end

  if pinataDelayLabel and pinataSliderFill then
    pinataDelayLabel.Text = string.format("<b>Delay: %.2fs</b>", pinataCurrentDelay)

    pinataSliderFill.Size = UDim2.new(math.clamp((pinataCurrentDelay - pinataMinDelay)
      / (pinataMaxDelay - pinataMinDelay), 0, 1), 0, 1, 0)

    if pinataCurrentDelay < 0.35 then
      pinataSliderFill.BackgroundColor3 = C_DANGER

      if pinataLagWarning then
        pinataLagWarning.Visible = true
      end
    else
      local PinataSliderFill = pinataSliderFill
      PinataSliderFill.BackgroundColor3 = C_SLIDER or C_ACCENT

      if pinataLagWarning then
        pinataLagWarning.Visible = false
      end
    end
  end

  if pinataAutoBreakBtn then
    local PinataAutoBreakBtn = pinataAutoBreakBtn
    PinataAutoBreakBtn.Text = pinataIsRunning and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local PinataAutoBreakBtn_2 = pinataAutoBreakBtn
    PinataAutoBreakBtn_2.BackgroundColor3 = pinataIsRunning and C_SUCCESS or C_DANGER
  end

  if fpsBtn then
    if isCustomFPS then
      fpsBtn.Text = "<b>FPS: " .. tostring(customFPS) .. "</b>"
      fpsBtn.BackgroundColor3 = C_DANGER
    else
      fpsBtn.Text = "<b>FPS: Normal</b>"
      fpsBtn.BackgroundColor3 = C_BUTTON
    end
  end

  if fpsInput then
    fpsInput.Text = tostring(customFPS or 1)
  end

  if render3dBtn then
    local Render3dBtn = render3dBtn
    Render3dBtn.Text = disable3DRendering and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local Render3dBtn_2 = render3dBtn
    Render3dBtn_2.BackgroundColor3 = disable3DRendering and C_SUCCESS or C_DANGER
  end

  if toggleButtonsList then
    for index, value3 in ipairs(toggleButtonsList) do
      if value3 and value3.sync then
        pcall(value3.sync)
      elseif value3 and value3.btn and value3.getState then
        if value3.btn.Parent then
          local btn = value3.btn
          btn.Text = "<b>DISABLED</b>"

          local btn2 = value3.btn
          btn2.BackgroundColor3 = C_DANGER
        end
      end
    end
  end

  if autoChestsBtn then
    local AutoChestsBtn = autoChestsBtn
    AutoChestsBtn.Text = autoChestsEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local AutoChestsBtn_2 = autoChestsBtn
    AutoChestsBtn_2.BackgroundColor3 = autoChestsEnabled and C_SUCCESS or C_DANGER
  end

  if chestSelectBtn then
    chestSelectBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    chestSelectBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)

    if updateChestSelectButtonText then
      updateChestSelectButtonText(isChestSelectOpen)
    end
  end

  if refreshChestSelectOptions then
    refreshChestSelectOptions()
  end

  if autoBoostBtn then
    local AutoBoostBtn = autoBoostBtn
    AutoBoostBtn.Text = autoBoostEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local AutoBoostBtn_2 = autoBoostBtn
    AutoBoostBtn_2.BackgroundColor3 = autoBoostEnabled and C_SUCCESS or C_DANGER
  end

  if arcadeBoostBtn then
    local ArcadeBoostBtn = arcadeBoostBtn
    ArcadeBoostBtn.Text = autoArcadeBoostEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local ArcadeBoostBtn_2 = arcadeBoostBtn
    ArcadeBoostBtn_2.BackgroundColor3 = autoArcadeBoostEnabled and C_SUCCESS or C_DANGER
  end

  if arcadeBoostPriorityBtn then
    arcadeBoostPriorityBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    arcadeBoostPriorityBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)

    local ArcadeBoostPriorityBtn = arcadeBoostPriorityBtn
    ArcadeBoostPriorityBtn.Text = "<b>" .. tostring(autoArcadeBoostPriority or "Lowest") .. " ▼</b>"
  end

  if autoBuyLuckBoostBtn then
    local AutoBuyLuckBoostBtn = autoBuyLuckBoostBtn
    AutoBuyLuckBoostBtn.Text = autoBuyLuckBoostEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local AutoBuyLuckBoostBtn_2 = autoBuyLuckBoostBtn
    AutoBuyLuckBoostBtn_2.BackgroundColor3 = autoBuyLuckBoostEnabled and C_SUCCESS or C_DANGER
  end

  if boostPriorityBtn then
    boostPriorityBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    boostPriorityBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)

    local BoostPriorityBtn = boostPriorityBtn
    BoostPriorityBtn.Text = "<b>" .. tostring(autoBoostPriority or "Lowest") .. " ▼</b>"
  end

  if boostSelectBtn then
    boostSelectBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    boostSelectBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)

    if updateBoostSelectButtonText then
      updateBoostSelectButtonText(isBoostSelectOpen)
    end
  end

  if refreshBoostSelectOptions then
    refreshBoostSelectOptions()
  end

  if autoHatchBtn then
    local AutoHatchBtn = autoHatchBtn
    AutoHatchBtn.Text = autoHatchEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local AutoHatchBtn_2 = autoHatchBtn
    AutoHatchBtn_2.BackgroundColor3 = autoHatchEnabled and C_SUCCESS or C_DANGER
  end

  if disableFreezeBtn then
    local DisableFreezeBtn = disableFreezeBtn
    DisableFreezeBtn.Text = autoHatchDisableFreeze and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local DisableFreezeBtn_2 = disableFreezeBtn
    DisableFreezeBtn_2.BackgroundColor3 = autoHatchDisableFreeze and C_SUCCESS or C_DANGER
  end

  if eggDropdownBtn then
    if autoHatchPreferredEggId then
      eggDropdownBtn.Text = "<b>" .. tostring(autoHatchPreferredEggId) .. " ▼</b>"
    else
      eggDropdownBtn.Text = "<b>Nearest (Any) ▼</b>"
    end
  end

  if autoBuyUpgradesBtn then
    local AutoBuyUpgradesBtn = autoBuyUpgradesBtn
    AutoBuyUpgradesBtn.Text = autoBuyUpgradesEnabled and "<b>ENABLED</b>" or "<b>DISABLED</b>"

    local AutoBuyUpgradesBtn_2 = autoBuyUpgradesBtn
    AutoBuyUpgradesBtn_2.BackgroundColor3 = autoBuyUpgradesEnabled and C_SUCCESS or C_DANGER
  end

  updateAllDynamicElementsColor()
  applyDropdownThemeColors()

  if updateAutoLoadLabel then
    updateAutoLoadLabel()
  end
end

function applyConfigData(p1)
  if not p1 then
    return
  end

  if p1.Theme then
    local Theme = p1.Theme
    C_BG = Color3.new(Theme.BG[1], Theme.BG[2], Theme.BG[3])
    C_SIDEBAR = Color3.new(Theme.SIDEBAR[1], Theme.SIDEBAR[2], Theme.SIDEBAR[3])
    C_CARD = Color3.new(Theme.CARD[1], Theme.CARD[2], Theme.CARD[3])
    C_PROFILE = Color3.new(Theme.PROFILE[1], Theme.PROFILE[2], Theme.PROFILE[3])
    C_ACCENT = Color3.new(Theme.ACCENT[1], Theme.ACCENT[2], Theme.ACCENT[3])
    C_BUTTON = Color3.new(Theme.BUTTON[1], Theme.BUTTON[2], Theme.BUTTON[3])

    C_SECTION_HEADER = Color3.new(
      Theme.SECTION_HEADER[1], Theme.SECTION_HEADER[2], Theme.SECTION_HEADER[3]
    )

    C_STATBOX = Color3.new(Theme.STATBOX[1], Theme.STATBOX[2], Theme.STATBOX[3])

    C_DASHBOARD_LIVE = Color3.new(
      Theme.DASHBOARD_LIVE[1], Theme.DASHBOARD_LIVE[2], Theme.DASHBOARD_LIVE[3]
    )

    C_CONTAINERS = Color3.new(Theme.CONTAINERS[1], Theme.CONTAINERS[2], Theme.CONTAINERS[3])

    C_PRESET_SELECTION = Color3.new(
      Theme.PRESET_SELECTION[1], Theme.PRESET_SELECTION[2], Theme.PRESET_SELECTION[3]
    )

    C_CONFIG_SELECTION = Color3.new(
      Theme.CONFIG_SELECTION[1], Theme.CONFIG_SELECTION[2], Theme.CONFIG_SELECTION[3]
    )

    C_SLIDER = Color3.new(Theme.SLIDER[1], Theme.SLIDER[2], Theme.SLIDER[3])

    C_DROPDOWN_BUTTON = Color3.new(
      Theme.DROPDOWN_BUTTON[1], Theme.DROPDOWN_BUTTON[2], Theme.DROPDOWN_BUTTON[3]
    )
  end

  if p1.Settings then
    local Settings = p1.Settings
    antiAfkEnabled = Settings.antiAfkEnabled or false
    autoJoinEventEnabled = Settings.autoJoinEventEnabled or false
    autoFreeGiftsActive = Settings.autoFreeGiftsActive or false
    autoGiftsActive = Settings.autoGiftsActive or false
    selectedGiftType = Settings.selectedGiftType
    autoZoneLootEnabled = Settings.autoZoneLootEnabled or false
    autoZoneLootInterval = Settings.autoZoneLootInterval or autoZoneLootInterval or 60
    autoMinigamesEnabled = Settings.autoMinigamesEnabled or false
    pinataFocusTarget = Settings.pinataFocusTarget or false
    pinataAutoTeleport = Settings.pinataAutoTeleport or false
    pinataCurrentDelay = Settings.pinataCurrentDelay or 0.1
    customFPS = Settings.customFPS or 1
    isCustomFPS = Settings.isCustomFPS or false

    if Settings.currentToggleKey then
      currentToggleKey = Enum.KeyCode[Settings.currentToggleKey] or Enum.KeyCode.Insert
    end

    pinataIsRunning = Settings.pinataIsRunning or false
    autoChestsEnabled = Settings.autoChestsEnabled or false

    if Settings.autoChestsSelected and type(Settings.autoChestsSelected) == "table" then
      autoChestsSelected.Titanic = Settings.autoChestsSelected.Titanic and true or false
      autoChestsSelected.Gargantuan = Settings.autoChestsSelected.Gargantuan and true or false
    end

    autoBoostEnabled = Settings.autoBoostEnabled or false
    autoBoostPriority = Settings.autoBoostPriority or "Lowest"

    if Settings.autoBoostSelected and type(Settings.autoBoostSelected) == "table" then
      autoBoostSelected.Damage = Settings.autoBoostSelected.Damage and true or false
      autoBoostSelected.Speed = Settings.autoBoostSelected.Speed and true or false
      autoBoostSelected.EggLuck = Settings.autoBoostSelected.EggLuck and true or false
    end

    autoBuyLuckBoostEnabled = Settings.autoBuyLuckBoostEnabled or false
    autoHatchEnabled = Settings.autoHatchEnabled or false
    autoHatchPreferredEggId = Settings.autoHatchPreferredEggId
    autoHatchDelay = Settings.autoHatchDelay or 0.75
    autoHatchMaxDistance = Settings.autoHatchMaxDistance or 60
    autoHatchDisableFreeze = Settings.autoHatchDisableFreeze or false
    disable3DRendering = Settings.disable3DRendering or false
    autoBuyUpgradesEnabled = Settings.autoBuyUpgradesEnabled or false

    pcall(function()
      if RunService then
        RunService:Set3dRenderingEnabled(not disable3DRendering)
      end

      if BlackOverlay then
        BlackOverlay.Visible = disable3DRendering
      end
    end)
  end

  if type(p1) == "table" then
    autoLoadConfigName = p1.AutoLoad
  end

  pcall(function()
    if MainFrame then
      MainFrame.BackgroundColor3 = C_BG
    end

    if Sidebar then
      Sidebar.BackgroundColor3 = C_SIDEBAR
    end

    if ProfileCard then
      ProfileCard.BackgroundColor3 = C_PROFILE
    end

    if cardsList then
      for index2, value4 in ipairs(cardsList) do
        if value4 and value4.Parent then
          value4.BackgroundColor3 = C_CARD
        end
      end
    end

    if typeof(updateAllDynamicElementsColor) == "function" then
      updateAllDynamicElementsColor()
    end

    if typeof(syncAllTogglesUI) == "function" then
      syncAllTogglesUI()
    end

    if typeof(applyDropdownThemeColors) == "function" then
      applyDropdownThemeColors()
    end

    if typeof(applySliderThemeColors) == "function" then
      applySliderThemeColors()
    end

    if typeof(updateAutoLoadLabel) == "function" then
      updateAutoLoadLabel()
    end
  end)
end

function loadConfigsFromFile()
  if readfile and isfile and isfile(CONFIG_FILE_NAME) then
    local v46, v47 = pcall(function()
      return HttpService:JSONDecode(readfile(CONFIG_FILE_NAME))
    end)

    if v46 and type(v47) == "table" then
      savedConfigs = v47.Configs or {}
      autoLoadConfigName = v47.AutoLoad
    end
  end
end

function saveConfigsToFile()
  if writefile then
    pcall(function()
      writefile(
        CONFIG_FILE_NAME,
        HttpService:JSONEncode({ Configs = savedConfigs, AutoLoad = autoLoadConfigName })
      )
    end)
  end
end

loadConfigsFromFile()

function getDefaultConfigData()
  return {
    Theme = {
      BG = { 0.058823529411765, 0.058823529411765, 0.07843137254902 },
      SIDEBAR = { 0.086274509803922, 0.086274509803922, 0.11372549019608 },
      CARD = { 0.10980392156863, 0.10980392156863, 0.14901960784314 },
      PROFILE = { 0.070588235294118, 0.070588235294118, 0.098039215686275 },
      ACCENT = { 0.44705882352941, 0.53725490196078, 0.85490196078431 },
      BUTTON = { 0.44705882352941, 0.53725490196078, 0.85490196078431 },
      SECTION_HEADER = { 0.44705882352941, 0.53725490196078, 0.85490196078431 },
      STATBOX = { 0.070588235294118, 0.070588235294118, 0.098039215686275 },
      DASHBOARD_LIVE = { 0.070588235294118, 0.070588235294118, 0.098039215686275 },
      CONTAINERS = { 0.070588235294118, 0.070588235294118, 0.10196078431373 },
      PRESET_SELECTION = { 0.094117647058824, 0.094117647058824, 0.13333333333333 },
      CONFIG_SELECTION = { 0.094117647058824, 0.094117647058824, 0.13333333333333 },
      SLIDER = { 0.44705882352941, 0.53725490196078, 0.85490196078431 },
      DROPDOWN_BUTTON = { 0.12549019607843, 0.14901960784314, 0.21960784313725 },
    },
    Settings = {
      antiAfkEnabled = false,
      autoJoinEventEnabled = false,
      autoFreeGiftsActive = false,
      autoGiftsActive = false,
      selectedGiftType = nil,
      autoZoneLootEnabled = false,
      autoZoneLootInterval = 60,
      autoMinigamesEnabled = false,
      pinataFocusTarget = false,
      pinataAutoTeleport = false,
      pinataCurrentDelay = 0.1,
      currentToggleKey = "Insert",
      customFPS = 1,
      isCustomFPS = false,
      pinataIsRunning = false,
      disable3DRendering = false,
      autoChestsEnabled = false,
      autoChestsSelected = { Titanic = true, Gargantuan = true },
      autoBoostEnabled = false,
      autoBoostPriority = "Lowest",
      autoBoostSelected = { Damage = false, Speed = false, EggLuck = false },
      autoBuyLuckBoostEnabled = false,
      autoHatchEnabled = false,
      autoHatchPreferredEggId = nil,
      autoHatchDelay = 0.75,
      autoHatchMaxDistance = 60,
      autoHatchDisableFreeze = false,
      autoBuyUpgradesEnabled = false,
    },
    AutoLoad = nil,
  }
end

savedConfigs.Default = getDefaultConfigData()
saveConfigsToFile()
FONT_FREDOKA = Enum.Font.FredokaOne
FONT_BOLD = Enum.Font.GothamBold
FONT_MEDIUM = Enum.Font.GothamMedium
FONT_REGULAR = Enum.Font.Gotham
Network = require(game.ReplicatedStorage.Library.Client.Network)

function getPlayerRank()
  local C_SUBTEXT_2 = C_SUBTEXT

  local v48, v49 = pcall(function()
    return game:HttpGet(DEVS_JSON_URL .. "?nocache=" .. tostring(os.time()))
  end)

  if v48 and v49 then
    local v50, v51 = pcall(function() return HttpService:JSONDecode(v49) end)

    if v50 and type(v51) == "table" then
      local ToString = tostring(LocalPlayer.UserId)

      if v51[ToString] then
        local v53 = v51[ToString]

        if type(v53) == "table" then
          local role = v53.Role or "Developer"
          local color17 = v53.Color and v53.Color[1] or 241
          local color18 = v53.Color and v53.Color[2] or 196
          local color19 = v53.Color and v53.Color[3] or 15
          return role, Color3.fromRGB(color17, color18, color19)
        end

        return tostring(v53), Color3.fromRGB(241, 196, 15)
      end

      return "Normal User", C_SUBTEXT_2
    end

    return "Normal User", C_SUBTEXT_2
  end

  return "Normal User", C_SUBTEXT_2
end

function triggerJoinEvent()
  local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")

  if not PlayerGui then
    return
  else
    local MainLeft = PlayerGui:FindFirstChild("MainLeft")
    local Left = MainLeft and MainLeft:FindFirstChild("Left")
    local Tools = Left and Left:FindFirstChild("Tools")
    local JoinEvent = Tools and Tools:FindFirstChild("JoinEvent")

    if JoinEvent and JoinEvent.Visible then
      if firesignal then
        if JoinEvent:IsA("TextButton") or JoinEvent:IsA("ImageButton") then
          firesignal(JoinEvent.MouseButton1Click)
          firesignal(JoinEvent.MouseButton1Down)
          firesignal(JoinEvent.Activated)
        end
      else
        pos = JoinEvent.AbsolutePosition
        size = JoinEvent.AbsoluteSize
        centerX = pos.X + size.X / 2
        centerY = pos.Y + size.Y / 2 + 36
        VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, true, game, 0)
        task.wait(0.05)
        VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, false, game, 0)
      end
    end

    return
  end
end

autoFreeGiftsActive = false

function autoCollectFreeGifts()
  while autoFreeGiftsActive and scriptRunning do
    pcall(function()
      local Module = require(game.ReplicatedStorage.Library.Client.Network)
      local Module_2 = require(game.ReplicatedStorage.Library.Directory)
      local Module_3 = require(game.ReplicatedStorage.Library.Client.Save).Get()

      if not Module_3 then
        return
      else
        local v57 = {}

        for key3, value5 in pairs(Module_2.FreeGifts) do
          v57[value5.Id] = value5
        end

        for key4, value6 in pairs(v57) do
          local v58 = false

          if Module_3.FreeGiftsRedeemed then
            for index3, value7 in ipairs(Module_3.FreeGiftsRedeemed) do
              if value7 == key4 then
                v58 = true
                break
              end
            end
          end

          if not v58 and Module_3.FreeGiftsTime >= value6.WaitTime then
            Module.Invoke("Redeem Free Gift", key4)
            task.wait(0.35)
          end
        end

        return
      end
    end)

    task.wait(1.5)
  end
end

autoGiftsActive = false
selectedGiftType = "All"

availableGifts = {
  "All", "Arcade Gift", "Mini Chest", "Charm Stone", "Gift Bag", "Large Gift Bag",
  "Bundle O' Fruit", "Bundle O' Enchants", "Bundle O' Flags", "Large Bundle O' Enchants",
  "Large Bundle O' Potions", "Bundle O' Potions", "Bundle O' Toys",
}

function autoCollectGifts()
  local Module_4 = require(game.ReplicatedStorage.Library.Items.MiscItem)

  while autoGiftsActive and scriptRunning do
    pcall(function()
      if not selectedGiftType then
        return
      else
        local function f1(p2)
          if p2 == "Arcade Gift" then
            local Module_5 = require(game.ReplicatedStorage.Library.Client.LootboxCmds)
            local Module_6 = require(game.ReplicatedStorage.Library.Items.LootboxItem)
            local Module_7 = require(game.ReplicatedStorage.Library.Types.Lootboxes)
            local v61_2 = Module_6("Arcade Gift")

            if v61_2 then
              local FindAny = v61_2:FindAny()
              local v63 = FindAny and FindAny[1]

              if v63 then
                local GetAmount = v63:GetAmount() or 1
                local MathMin = math.min(GetAmount, Module_7.MaxOpenAmount or GetAmount)

                if MathMin > 0 then
                  Module_5.Open(v63, MathMin)
                end
              end
            end

            return
          end

          remoteName = GiftRemoteNames[p2]

          if not remoteName then
            return
          end

          gift = Module_4(remoteName)

          if not gift then
            return
          end

          items = gift:FindAny()
          item = items and items[1]

          if not item then
            return
          end

          amount = item:GetAmount() or 1

          if amount <= 0 then
            return
          end

          Network.Invoke("GiftBag_Open", remoteName, amount)
        end

        if selectedGiftType == "All" then
          for index4, value8 in ipairs(availableGifts) do
            if value8 ~= "All" then
              f1(value8)
            end
          end
        else
          f1(selectedGiftType)
        end

        return
      end
    end)

    task.wait(0.7)
  end
end

Network = require(game.ReplicatedStorage.Library.Client.Network)

function isCoinArcadeZoneUnlocked(p3)
  if p3 == 1 then
    return true
  else
    local v65, v66 = pcall(function()
      return require(game.ReplicatedStorage.Library.Client.InstanceZoneCmds).IsUnlocked(p3)
    end)

    return v65 and v66 == true
  end
end

function getZoneLootCabinetCount()
  local v67, v68 = pcall(function()
    return require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
  end)

  if v67 and v68 and type(v68.CABINET_COUNT) == "number" and v68.CABINET_COUNT > 0 then
    return v68.CABINET_COUNT
  end

  return 5
end

function getZoneLootClaimPart(p4)
  local Tostring = "CoinArcadeClaim" .. tostring(p4)

  local v70, v71 = pcall(function()
    return workspace.__THINGS.__INSTANCE_CONTAINER.Active.CoinArcade.INTERACT.Machines[Tostring].Claim
  end)

  if v70 and v71 and v71:IsA("BasePart") then
    return v71
  end

  return nil
end

function getZoneLootClaimAllPart()
  local v72, v73 = pcall(function()
    return workspace.__THINGS.__INSTANCE_CONTAINER.Active.CoinArcade.INTERACT.Machines.CoinArcadeClaimAll.Claim
  end)

  if v72 and v73 and v73:IsA("BasePart") then
    return v73
  end

  return nil
end

function touchZoneLootClaim(p5, p6)
  if not firetouchinterest or not p5 or not p6 then
    return false
  end

  return (pcall(function()
    firetouchinterest(p5, p6, 0)
    task.wait(0.12)
    firetouchinterest(p5, p6, 1)
  end))
end

function collectZoneLootOnce(p7)
  local Character = LocalPlayer.Character
  local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

  if not HumanoidRootPart then
    return false
  elseif not firetouchinterest then
    return false
  elseif not p7 and (not autoZoneLootEnabled or not scriptRunning) then
    return false
  elseif not scriptRunning then
    return false
  else
    local getZoneLootClaimAllPart_2 = getZoneLootClaimAllPart()

    if not getZoneLootClaimAllPart_2 then
      return false
    end

    return touchZoneLootClaim(HumanoidRootPart, getZoneLootClaimAllPart_2)
  end
end

function startAutoZoneLootLoop()
  if autoZoneLootLoopThread then
    autoZoneLootLoopThread = nil
  end

  autoZoneLootLoopThread = task.spawn(function()
    while autoZoneLootEnabled and scriptRunning do
      pcall(function()
        if collectZoneLootOnce(false) and sendNotification then
          sendNotification("Zone Loot", "Collected All Zones Successfully", 2)
        end
      end)

      local v75 = 0
      local MathClamp = math.clamp(tonumber(autoZoneLootInterval) or 60, 15, 600) + math.random(0, 8)

      while v75 < MathClamp and autoZoneLootEnabled and scriptRunning do
        task.wait(1)
        v75 = v75 + 1
      end
    end

    autoZoneLootLoopThread = nil
  end)
end

function minigamePlaysLeft(p8)
  local v77 = 3

  pcall(function()
    local Module_8 = require(game.ReplicatedStorage.Library.Client.Save)
    local Module_9 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
    local Get = Module_8.Get()
    local v81 = Get and Get[Module_9.MINIGAMES_SAVE_KEY]
    local TypeName = type(v81) == "table" and v81[p8] or nil

    if type(TypeName) == "table" and type(TypeName.Window) == "number" and type(TypeName.Plays) == "number" then
      local Workspace_2 = workspace

      if TypeName.Window + Module_9.MINIGAME_WINDOW_SECONDS > Workspace_2:GetServerTimeNow() then
        v77 = math.max(0, 3 - TypeName.Plays)
      end
    end
  end)

  return v77
end

function getMinigameRewardAmount(p9)
  if type(p9) == "table" then
    return tonumber(p9.Tickets or p9.Amount or p9.Reward or 0) or 0
  end

  if type(p9) == "number" then
    return p9
  end

  return 0
end

function setMinigameStatus(p10, p11)
  local v84 = minigamesStatusLabels and minigamesStatusLabels[p10]

  if v84 and v84.Parent then
    v84.Text = "<b>" .. tostring(p11) .. "</b>"
  end
end

function notifyMinigameStart(p12)
  if sendNotification then
    sendNotification("Minigame", "Started " .. (({
      Flappy = "Flappy Pet",
      Snake = "Snake",
      BlockDrop = "Block Drop",
      ColorBlocks = "Color Blocks",
      Invaders = "Pet Invaders",
    })[p12] or tostring(p12)), 3)
  end
end

function notifyMinigameFinished(p13, p14, p15)
  if sendNotification then
    sendNotification(({
      Flappy = "Flappy Pet",
      Snake = "Snake",
      BlockDrop = "Block Drop",
      ColorBlocks = "Color Blocks",
      Invaders = "Pet Invaders",
    })[p13] or tostring(p13), string.format(
      "Finished! Score: %d | Tickets: %d", tonumber(p14) or 0, tonumber(p15) or 0
    ), 4)
  end
end

function waitWithMinigameCountdown(p16, p17)
  local ToNumber = tonumber(p17)
  local MathMax = math.max(0, ToNumber or 0)
  local OsClock = os.clock() + MathMax

  while autoMinigamesEnabled and scriptRunning do
    local MathMax_2 = math.max(0, OsClock - os.clock())

    minigameRunState.Current = p16
    minigameRunState.Countdown = MathMax_2

    setMinigameStatus(p16, (string.format("%.1fs until score submit", MathMax_2)))

    if MathMax_2 <= 0 then
      break
    end

    task.wait(0.1)
  end

  return autoMinigamesEnabled and scriptRunning
end

function getMinigameMaxScore(p18)
  if type(p18) ~= "table" then
    return 0
  else
    local ToNumber_2 = tonumber(p18.PerfectScore)

    if ToNumber_2 then
      return math.floor(ToNumber_2)
    else
      local ToNumber_3 = tonumber(p18.MaxSeconds)
      local ToNumber_4 = tonumber(p18.MaxPerSecond)

      if ToNumber_3 and ToNumber_4 then
        return math.floor(ToNumber_3 * ToNumber_4)
      end

      return math.floor(tonumber(p18.PerfectScore) or 0)
    end
  end
end

function runFlappyAutoOnce(p19)
  local Module_10 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
  local Module_11 = require(game.ReplicatedStorage.Library.Client.InstancingCmds)
  local Module_12 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameRules)
  local v95 = p19 or "Flappy"
  local games = Module_12 and Module_12.Games and Module_12.Games[v95] or { MaxSeconds = 90, PerfectScore = 60 }
  local v96, v97 = Module_11.InvokeCustom(Module_10.RPC.MinigameStart, v95)

  if not v96 then
    return false, tostring(v97)
  else
    notifyMinigameStart(v95)
    local ToNumber_5 = tonumber(games.PerfectScore) or 60

    if not waitWithMinigameCountdown(v95, (tonumber(games.MaxSeconds) or 90) + 0.5) then
      return false, "Stopped"
    else
      local v99, v100 = Module_11.InvokeCustom(Module_10.RPC.MinigameFinish, v95, ToNumber_5, {})

      if not v99 then
        return false, tostring(v100)
      else
        local getMinigameRewardAmount_2 = getMinigameRewardAmount(v100)

        minigameRunState.Score = ToNumber_5
        minigameRunState.Tickets = getMinigameRewardAmount_2

        setMinigameStatus(v95, string.format("Score: %d | Tickets: %d", ToNumber_5, getMinigameRewardAmount_2))
        notifyMinigameFinished(v95, ToNumber_5, getMinigameRewardAmount_2)
        return true, v100
      end
    end
  end
end

function runInvadersAutoOnce(p20)
  local Module_13 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
  local Module_14 = require(game.ReplicatedStorage.Library.Client.InstancingCmds)
  local Module_15 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameRules)
  local v105 = p20 or "Invaders"

  local Games = Module_15 and Module_15.Games and Module_15.Games[v105]
    or { MaxSeconds = 200, PerfectScore = 90 }

  local v106, v107 = Module_14.InvokeCustom(Module_13.RPC.MinigameStart, v105)

  if not v106 then
    return false, tostring(v107)
  else
    notifyMinigameStart(v105)
    local ToNumber_6 = tonumber(Games.PerfectScore) or 90

    if not waitWithMinigameCountdown(v105, (tonumber(Games.MaxSeconds) or 200) + 0.5) then
      return false, "Stopped"
    else
      local v109, v110 = Module_14.InvokeCustom(Module_13.RPC.MinigameFinish, v105, ToNumber_6, {})

      if not v109 then
        return false, tostring(v110)
      else
        local getMinigameRewardAmount_3 = getMinigameRewardAmount(v110)

        minigameRunState.Score = ToNumber_6
        minigameRunState.Tickets = getMinigameRewardAmount_3

        setMinigameStatus(v105, string.format("Score: %d | Tickets: %d", ToNumber_6, getMinigameRewardAmount_3))
        notifyMinigameFinished(v105, ToNumber_6, getMinigameRewardAmount_3)
        return true, v110
      end
    end
  end
end

function runSnakeAutoOnce(p21)
  local Module_16 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
  local Module_17 = require(game.ReplicatedStorage.Library.Client.InstancingCmds)
  local Module_18 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameSims)
  local Module_19 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameRules)
  local v116 = p21 or "Snake"
  local v117 = Module_19.Games[v116] or {}
  local v118, v119 = Module_17.InvokeCustom(Module_16.RPC.MinigameStart, v116)

  if not v118 then
    return false, tostring(v119)
  else
    notifyMinigameStart(v116)
    local TypeName_2 = type(v119) == "number" and v119 or 0
    local SnakeNew = Module_18.SnakeNew(TypeName_2)
    local v122 = {}
    local v123 = 0
    local MathMax_3 = math.max(1, tonumber(Module_18.SNAKE_MAX_TICKS) or 2000)

    local v125 = {
      [1] = { x = 0, y = -1 },
      [2] = { x = 1, y = 0 },
      [3] = { x = 0, y = 1 },
      [4] = { x = -1, y = 0 },
    }

    local function f2(p22, p23)
      return p22 == 1 and p23 == 3 or p22 == 3 and p23 == 1 or p22 == 2 and p23 == 4
        or p22 == 4 and p23 == 2
    end

    while not SnakeNew.dead and not SnakeNew.won and v123 < MathMax_3 do
      v123 = v123 + 1
      local v126 = SnakeNew.body[1]
      local fruit = SnakeNew.fruit
      local dir = SnakeNew.dir or 2
      local Dir = dir
      local MathHuge = math.MathHuge

      for i = 1, 4 do
        if not f2(dir, i) then
          local v128 = v126.x + v125[i].x
          local v129 = v126.y + v125[i].y

          if v128 >= 1 and v129 >= 1 and v128 <= SnakeNew.width and v129 <= SnakeNew.height then
            local v130 = false

            for index5, value9 in ipairs(SnakeNew.body) do
              if index5 < #SnakeNew.body and value9.x == v128 and value9.y == v129 then
                v130 = true
                break
              end
            end

            if not v130 then
              local MathAbs = math.abs(v128 - fruit.x) + math.abs(v129 - fruit.y)

              if MathAbs < MathHuge then
                MathHuge = MathAbs
                Dir = i
              end
            end
          end
        end
      end

      local v132 = nil

      if Dir ~= SnakeNew.dir then
        v132 = Dir
        table.insert(v122, { t = v123, d = v132 })
      end

      Module_18.SnakeStep(SnakeNew, v132)
    end

    local getMinigameMaxScore_2 = getMinigameMaxScore(v117)
    local ToNumber_7 = tonumber(v117.MaxSeconds)

    if not waitWithMinigameCountdown(v116, math.max(0.2, ToNumber_7 or 0, tonumber(v123) * 0.18) + 0.5) then
      return false, "Stopped"
    else
      local v135 = getMinigameMaxScore_2 > 0 and getMinigameMaxScore_2 or tonumber(SnakeNew.score) or 0
      local v136, v137 = Module_17.InvokeCustom(Module_16.RPC.MinigameFinish, v116, v135, v122)

      if not v136 then
        return false, tostring(v137)
      else
        local getMinigameRewardAmount_4 = getMinigameRewardAmount(v137)

        minigameRunState.Score = v135
        minigameRunState.Tickets = getMinigameRewardAmount_4

        setMinigameStatus(v116, string.format("Score: %d | Tickets: %d", v135, getMinigameRewardAmount_4))
        notifyMinigameFinished(v116, v135, getMinigameRewardAmount_4)
        return true, v137
      end
    end
  end
end

function runBlockDropAutoOnce(p24)
  local Module_20 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
  local Module_21 = require(game.ReplicatedStorage.Library.Client.InstancingCmds)
  local Module_22 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameRules)
  local Module_23 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameSims)
  local v143 = p24 or "BlockDrop"

  local Games_2 = Module_22 and Module_22.Games and Module_22.Games[v143]
    or { MaxSeconds = 240, PerfectScore = 1800 }

  local v144, v145 = Module_21.InvokeCustom(Module_20.RPC.MinigameStart, v143)

  if not v144 then
    return false, tostring(v145)
  else
    notifyMinigameStart(v143)
    local TypeName_3 = type(v145) == "number" and v145 or 0
    local ToNumber_8 = tonumber(Games_2.PerfectScore) or 1800
    local ToNumber_9 = tonumber(Games_2.MaxSeconds) or 240
    local DropNew = Module_23.DropNew(TypeName_3)
    local v150 = {}
    local v151 = 0
    local dropMAXTICKS = Module_23.DROP_MAX_TICKS or 9000

    while not DropNew.dead and not DropNew.done and v151 < dropMAXTICKS and DropNew.score < ToNumber_8 do
      v151 = v151 + 1

      if v151 % 12 == 0 then
        if Module_23.DropAct(DropNew, 4) then
          table.insert(v150, { t = v151, a = 4 })
        end
      end

      Module_23.DropTickStep(DropNew)
    end

    local MathMax_4 = math.max(ToNumber_8, DropNew.score)

    if not waitWithMinigameCountdown(v143, ToNumber_9 + 0.5) then
      return false, "Stopped"
    else
      local v153, v154 = Module_21.InvokeCustom(Module_20.RPC.MinigameFinish, v143, MathMax_4, v150)

      if not v153 then
        return false, tostring(v154)
      else
        local getMinigameRewardAmount_5 = getMinigameRewardAmount(v154)

        minigameRunState.Score = MathMax_4
        minigameRunState.Tickets = getMinigameRewardAmount_5

        setMinigameStatus(v143, string.format("Score: %d | Tickets: %d", MathMax_4, getMinigameRewardAmount_5))
        notifyMinigameFinished(v143, MathMax_4, getMinigameRewardAmount_5)
        return true, v154
      end
    end
  end
end

function runColorBlocksAutoOnce(p25)
  local Module_24 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
  local Module_25 = require(game.ReplicatedStorage.Library.Client.InstancingCmds)
  local Module_26 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameRules)
  local Module_27 = require(game.ReplicatedStorage.Library.Util.CoinArcadeMinigameSims)
  local v160 = p25 or "ColorBlocks"

  local Games_3 = Module_26 and Module_26.Games and Module_26.Games[v160]
    or { MaxSeconds = 150, PerfectScore = 800 }

  local v161, v162 = Module_25.InvokeCustom(Module_24.RPC.MinigameStart, v160)

  if not v161 then
    return false, tostring(v162)
  else
    notifyMinigameStart(v160)
    local TypeName_4 = type(v162) == "number" and v162 or 0
    local ToNumber_10 = tonumber(Games_3.PerfectScore) or 800
    local ToNumber_11 = tonumber(Games_3.MaxSeconds) or 150
    local BlocksNew = Module_27.BlocksNew(TypeName_4)
    local v167 = {}

    while Module_27.BlocksHasMoves(BlocksNew) and #v167 < 120 and BlocksNew.score < ToNumber_10 do
      local v168 = nil
      local v169 = nil
      local v170 = 1

      for index6, value10 in ipairs(BlocksNew.grid) do
        for j = 1, #value10 do
          local BlocksGroup = Module_27.BlocksGroup(BlocksNew, index6, j)

          if #BlocksGroup > v170 then
            v169 = j
            v168 = index6
            v170 = #BlocksGroup
          end
        end
      end

      if not v168 then
        break
      else
        local V169 = v169
        local V168 = v168

        if Module_27.BlocksTap(BlocksNew, V168, V169) then
          table.insert(v167, { c = V168, r = V169 })
        else
          break
        end
      end
    end

    local MathMax_5 = math.max(ToNumber_10, BlocksNew.score)

    if not waitWithMinigameCountdown(v160, ToNumber_11 + 0.5) then
      return false, "Stopped"
    else
      local v175, v176 = Module_25.InvokeCustom(Module_24.RPC.MinigameFinish, v160, MathMax_5, v167)

      if not v175 then
        return false, tostring(v176)
      else
        local getMinigameRewardAmount_6 = getMinigameRewardAmount(v176)

        minigameRunState.Score = MathMax_5
        minigameRunState.Tickets = getMinigameRewardAmount_6

        setMinigameStatus(v160, string.format("Score: %d | Tickets: %d", MathMax_5, getMinigameRewardAmount_6))
        notifyMinigameFinished(v160, MathMax_5, getMinigameRewardAmount_6)
        return true, v176
      end
    end
  end
end

function getMinigameId(p26)
  local Module_28 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)

  if p26 == "Flappy" then
    local v179, v180 = pcall(function() return Module_28.MinigameForZone(1) or "Flappy" end)
    return v179 and v180 or "Flappy"
  end

  if p26 == "Snake" then
    local v181, v182 = pcall(function() return Module_28.MinigameForZone(2) or "Snake" end)
    return v181 and v182 or "Snake"
  end

  return p26
end

function runOneMinigame(p27)
  local getMinigameId_2 = getMinigameId(p27)

  if minigamePlaysLeft(getMinigameId_2) <= 0 then
    setMinigameStatus(getMinigameId_2, "No plays left")
    return false, "No plays left"
  elseif getMinigameId_2 == "Flappy" then
    return runFlappyAutoOnce(getMinigameId_2)
  elseif getMinigameId_2 == "Snake" then
    return runSnakeAutoOnce(getMinigameId_2)
  elseif getMinigameId_2 == "BlockDrop" then
    return runBlockDropAutoOnce(getMinigameId_2)
  elseif getMinigameId_2 == "ColorBlocks" then
    return runColorBlocksAutoOnce(getMinigameId_2)
  else
    if getMinigameId_2 == "Invaders" then
      return runInvadersAutoOnce(getMinigameId_2)
    end

    return false, "Unsupported minigame: " .. tostring(getMinigameId_2)
  end
end

function playMinigameBatch(p28, p29)
  local v184 = 0
  local v185 = p29 or 3

  while v184 < v185 and autoMinigamesEnabled and scriptRunning do
    local getMinigameId_3 = getMinigameId(p28)

    if minigamePlaysLeft(getMinigameId_3) <= 0 then
      setMinigameStatus(getMinigameId_3, "No plays left")
      break
    end

    if not runOneMinigame(getMinigameId_3) then
      break
    end

    v184 = v184 + 1
    task.wait(0.5)
  end

  return v184
end

function startAutoMinigamesLoop()
  if autoMinigamesLoopThread then
    autoMinigamesLoopThread = nil
  end

  autoMinigamesLoopThread = task.spawn(function()
    local v187 = { "Flappy", "Snake", "BlockDrop", "ColorBlocks", "Invaders" }

    while autoMinigamesEnabled and scriptRunning do
      for index7, value11 in ipairs(v187) do
        if not autoMinigamesEnabled or not scriptRunning then
          break
        else
          local getMinigameId_4 = getMinigameId(value11)

          if minigamePlaysLeft(getMinigameId_4) <= 0 then
            setMinigameStatus(getMinigameId_4, "No plays left")
          end

          while true do
            if autoMinigamesEnabled and scriptRunning and minigamePlaysLeft(getMinigameId_4) > 0 then
              autoMinigamesBusy = true
              autoMinigamesBusy = false
              break
            end

            break
          end
        end
      end

      if autoMinigamesEnabled and scriptRunning then
        local v189 = false

        for index8, value12 in ipairs(v187) do
          if minigamePlaysLeft((getMinigameId(value12))) > 0 then
            v189 = true
            break
          end
        end

        if not v189 then
          autoMinigamesBusy = false
          break
        end
      end

      task.wait(2)
    end

    autoMinigamesBusy = false
    autoMinigamesLoopThread = nil
  end)
end

function clickGuiElement(p30)
  if not p30 then
    return false
  end

  local v190 = false

  pcall(function()
    if firesignal then
      pcall(firesignal, p30.MouseButton1Click)
      pcall(firesignal, p30.Activated)
      v190 = true
    end
  end)

  pcall(function()
    if p30.Activate then
      p30:Activate()
      v190 = true
    end
  end)

  pcall(function()
    local AbsolutePosition = p30.AbsolutePosition
    local AbsoluteSize = p30.AbsoluteSize

    if AbsoluteSize.X > 1 and AbsoluteSize.Y > 1 then
      local v191 = AbsolutePosition.X + AbsoluteSize.X / 2
      local v192 = AbsolutePosition.Y + AbsoluteSize.Y / 2
      VirtualInputManager:SendMouseButtonEvent(v191, v192, 0, true, game, 0)
      task.wait(0.04)
      VirtualInputManager:SendMouseButtonEvent(v191, v192, 0, false, game, 0)
      v190 = true
    end
  end)

  return v190
end

function isGuiReallyVisible(p31)
  if not p31 or not p31:IsA("GuiObject") then
    return false
  end

  if not p31.Visible then
    return false
  end

  if p31.AbsoluteSize.X <= 1 or p31.AbsoluteSize.Y <= 1 then
    return false
  else
    local Parent = p31.Parent

    while Parent and Parent ~= game do
      if Parent:IsA("GuiObject") and not Parent.Visible then
        return false
      end

      Parent = Parent.Parent
    end

    return true
  end
end

CHEST_DEFS = {
  { key = "Titanic", label = "Titanic Chest", remoteName = "LuckyBreakoutTitanicChest" },
  {
    key = "Gargantuan",
    label = "Gargantuan Chest",
    remoteName = "LuckyBreakoutGargantuanChest",
  },
}

CHEST_COOLDOWN = 3600

function canClaimChest(p32)
  local v193, v194 = pcall(function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
  end)

  if not v193 or not v194 or not v194.TimedRewardTimestamps then
    return false
  else
    local TimedRewardTimestamps = v194.TimedRewardTimestamps[p32]

    if not TimedRewardTimestamps then
      return true
    end

    return CHEST_COOLDOWN - (workspace:GetServerTimeNow() - TimedRewardTimestamps) <= 0
  end
end

function claimChest(p33)
  return false
end

function getSelectedChestDefs()
  local v196 = {}

  for index9, value13 in ipairs(CHEST_DEFS) do
    if autoChestsSelected[value13.key] then
      table.insert(v196, value13)
    end
  end

  return v196
end

function pickNextChestToClaim()
  local getSelectedChestDefs_2 = getSelectedChestDefs()

  if #getSelectedChestDefs_2 == 0 then
    return nil
  elseif #getSelectedChestDefs_2 == 1 then
    return getSelectedChestDefs_2[1]
  else
    local v198 = nil
    local v199 = nil

    for index10, value14 in ipairs(getSelectedChestDefs_2) do
      if not canClaimChest(value14.remoteName) then
      else
        if autoChestsLastClaimed ~= value14.remoteName then
          v198 = value14
          break
        end

        v199 = value14
      end
    end

    if v198 then
      return v198
    end

    if v199 and canClaimChest(v199.remoteName) then
      return v199
    end

    for index11, value15 in ipairs(getSelectedChestDefs_2) do
      if canClaimChest(value15.remoteName) then
        return value15
      end
    end

    return nil
  end
end

function startAutoChestsLoop()
  if autoChestsLoopThread then
    autoChestsLoopThread = nil
  end

  autoChestsLoopThread = task.spawn(function()
    while autoChestsEnabled and scriptRunning do
      pcall(function()
        local pickNextChestToClaim_2 = pickNextChestToClaim()

        if pickNextChestToClaim_2 then
          if claimChest(pickNextChestToClaim_2.remoteName) then
            autoChestsLastClaimed = pickNextChestToClaim_2.remoteName

            if sendNotification then
              sendNotification("Chest Claimed", pickNextChestToClaim_2.label, 3)
            end
          end

          task.wait(1.5)
        end
      end)

      task.wait(20)
    end

    autoChestsLoopThread = nil
  end)
end

function getLuckyBreakoutChanceMachineCmds()
  local v201, v202 = pcall(function()
    return require(game.ReplicatedStorage.Library.Client.LuckyBreakoutChanceMachineCmds)
  end)

  return v201 and v202 or nil
end

function getLuckyBreakoutChanceMachineTypes()
  local v203, v204 = pcall(function()
    return require(game.ReplicatedStorage.Library.Types.LuckyBreakoutChanceMachine)
  end)

  return v203 and v204 or nil
end

function getBreakoutCoinsBalance()
  local breakoutBucks = 0

  if breakoutBucks > 0 then
    return breakoutBucks
  end

  pcall(function()
    local Module_29 = require(game.ReplicatedStorage.Library.Client.CurrencyCmds)

    breakoutBucks = Module_29.Get("BreakoutBucks") or Module_29.Get("Breakout Coins")
      or Module_29.Get("BreakoutCoins") or 0
  end)

  return breakoutBucks or 0
end

function getSpendableCapForRarity(p34)
  if not getLuckyBreakoutChanceMachineCmds() then
    return 0
  end

  return 0
end

function tryBuyLuckBoostForRarity(p35)
  local getSpendableCapForRarity_2 = getSpendableCapForRarity(p35)

  if getSpendableCapForRarity_2 <= 0 then
    return false, "no room or no coins"
  end

  local getLuckyBreakoutChanceMachineCmds_2 = getLuckyBreakoutChanceMachineCmds()

  if not getLuckyBreakoutChanceMachineCmds_2 or not getLuckyBreakoutChanceMachineCmds_2.AddBoost then
    return false, "no api"
  else
    local v208, v209, v210 = pcall(function() return getLuckyBreakoutChanceMachineCmds_2.AddBoost(p35, getSpendableCapForRarity_2) end)

    if v208 and v209 then
      return true, getSpendableCapForRarity_2
    end

    return false, tostring(v210 or v209 or "fail")
  end
end

function resolveLuckBoostRarities()
  local v211

  if v211 and #v211 > 0 then
    return v211
  end

  return autoBuyLuckBoostRarities
end

function startAutoBuyLuckBoostLoop()
  if autoBuyLuckBoostLoopThread then
    autoBuyLuckBoostLoopThread = nil
  end

  autoBuyLuckBoostLoopThread = task.spawn(function()
    while autoBuyLuckBoostEnabled and scriptRunning do
      pcall(function()
        for index12, value16 in ipairs((resolveLuckBoostRarities())) do
          if not autoBuyLuckBoostEnabled or not scriptRunning then
            break
          else
            local v212, v213 = tryBuyLuckBoostForRarity(value16)

            if v212 and sendNotification then
              sendNotification(
                "Luck Boost Bought", tostring(value16) .. " x" .. tostring(v213), 2
              )
            end

            task.wait(0.5)
          end
        end
      end)

      task.wait(8)
    end

    autoBuyLuckBoostLoopThread = nil
  end)
end

autoBoostDefs = {
  Damage = {
    label = "Lucky Damage Boost",
    tiers = {
      { consumable = "Lucky Damage Boost", tier = 1, boostId = "LuckyBreakoutDamage1" },
      { consumable = "Lucky Damage Boost", tier = 2, boostId = "LuckyBreakoutDamage2" },
      { consumable = "Lucky Damage Boost", tier = 3, boostId = "LuckyBreakoutDamage3" },
    },
  },
  Speed = {
    label = "Lucky Speed Boost",
    tiers = {
      { consumable = "Lucky Speed Boost", tier = 1, boostId = "LuckyBreakoutSpeed1" },
      { consumable = "Lucky Speed Boost", tier = 2, boostId = "LuckyBreakoutSpeed2" },
      { consumable = "Lucky Speed Boost", tier = 3, boostId = "LuckyBreakoutSpeed3" },
    },
  },
  EggLuck = {
    label = "Lucky Egg Booster",
    tiers = {
      { consumable = "Lucky Egg Booster", tier = 1, boostId = "LuckyBreakoutEggLuck1" },
      { consumable = "Lucky Egg Booster", tier = 2, boostId = "LuckyBreakoutEggLuck2" },
      { consumable = "Lucky Egg Booster", tier = 3, boostId = "LuckyBreakoutEggLuck3" },
    },
  },
}

function getBoostCmdsMod()
  local v214, v215 = pcall(function()
    return require(game.ReplicatedStorage.Library.Client.BoostCmds)
  end)

  return v214 and v215 or nil
end

function getConsumableCmdsMod()
  local v216, v217 = pcall(function()
    return require(game.ReplicatedStorage.Library.Client.ConsumableCmds)
  end)

  return v216 and v217 or nil
end

function getConsumableItemMod()
  local v218, v219 = pcall(function()
    return require(game.ReplicatedStorage.Library.Items.ConsumableItem)
  end)

  return v218 and v219 or nil
end

function isBoostActive(p36)
  local getBoostCmdsMod_2 = getBoostCmdsMod()

  if not getBoostCmdsMod_2 or not getBoostCmdsMod_2.GetTimer then
    return false
  else
    local v221, v222 = pcall(function() return getBoostCmdsMod_2.GetTimer(p36) end)
    return v221 and type(v222) == "number" and v222 > 1
  end
end

function findConsumableInInv(p37, p38)
  local getConsumableItemMod_2 = getConsumableItemMod()

  if not getConsumableItemMod_2 then
    return nil
  end

  local f3

  function f3(p39, p40)
    if not p39 then
      return nil
    else
      local v224, v225 = pcall(function()
        local v223_2 = getConsumableItemMod_2(p39)

        if not v223_2 then
          return nil
        else
          if p40 and p40 > 1 and v223_2.SetTier then
            v223_2 = v223_2:SetTier(p40)
          end

          local FindAny_2 = v223_2:FindAny()
          return FindAny_2 and FindAny_2[1] or nil
        end
      end)

      if v224 and v225 then
        return v225
      end

      return nil
    end
  end

  local f3_2 = f3(p37, p38)

  if f3_2 then
    return f3_2
  end

  if type(p37) == "string" then
    f3_2 = f3(p37:gsub("%s+", ""), p38)

    if f3_2 then
      return f3_2
    end
  end

  pcall(function()
    local Module_30 = require(game.ReplicatedStorage.Library.Directory)
    local Consumables = Module_30 and Module_30.Consumables

    if type(Consumables) ~= "table" then
      return
    else
      local StringLower = string.lower(tostring(p37 or ""))

      for key5, value17 in pairs(Consumables) do
        local Key5 = key5
        local Value17 = value17
        local v231 = ""

        pcall(function()
          local Tostring_2 = tostring
          v231 = string.lower(Tostring_2(Value17.Name or Value17._id or Key5))
        end)

        if v231 == StringLower or tostring(Key5) == p37 then
          f3_2 = f3(Key5, p38) or f3(Value17.Name, p38) or f3(Value17._id, p38)

          if f3_2 then
            return
          end
        end

        if p38 and p38 > 1 and Value17.Tiers and Value17.Tiers[p38] then
          local Name = Value17.Tiers[p38].Name

          if Name and string.lower(tostring(Name)) == StringLower then
            f3_2 = f3(Key5, p38) or f3(Name, nil)

            if f3_2 then
              return
            end
          end
        end
      end

      return
    end
  end)

  return f3_2
end

function tryConsumeBoost(p41)
  if isBoostActive(p41.boostId) then
    return false, "active"
  end

  local findConsumableInInv_2 = findConsumableInInv(p41.consumable, p41.tier)

  if not findConsumableInInv_2 then
    return false, "none"
  end

  local getConsumableCmdsMod_2 = getConsumableCmdsMod()

  if not getConsumableCmdsMod_2 or not getConsumableCmdsMod_2.Consume then
    return false, "noapi"
  else
    local v235, v236, v237 = pcall(function() return getConsumableCmdsMod_2.Consume(findConsumableInInv_2, 1) end)

    if v235 and v236 then
      return true, "ok"
    end

    return false, tostring(v237 or v236 or "fail")
  end
end

function tryUseBoostType(p42)
  local v238 = autoBoostDefs[p42]

  if not v238 or not v238.tiers then
    return false
  else
    local v239 = {}

    if autoBoostPriority == "Highest" then
      local v240 = #v238.tiers - -1

      while true do
        v240 = -1 + v240

        if not (1 <= v240 or false) then
          break
        end

        table.insert(v239, v238.tiers[v240])
      end
    else
      for k = 1, #v238.tiers do
        table.insert(v239, v238.tiers[k])
      end
    end

    for index13, value18 in ipairs(v239) do
      if value18 and not isBoostActive(value18.boostId) then
        if tryConsumeBoost(value18) then
          return true
        end
      end
    end

    return false
  end
end

function startAutoBoostLoop()
  if autoBoostLoopThread then
    autoBoostLoopThread = nil
  end

  autoBoostLoopThread = task.spawn(function()
    while autoBoostEnabled and scriptRunning do
      pcall(function()
        for key6, value19 in pairs(autoBoostSelected) do
          if not autoBoostEnabled or not scriptRunning then
            break
          elseif value19 then
            tryUseBoostType(key6)
            task.wait(0.4)
          end
        end
      end)

      task.wait(3)
    end

    autoBoostLoopThread = nil
  end)
end

autoArcadeBoostEnabled = false
autoArcadeBoostPriority = "Lowest"
autoArcadeBoostSelected = { Luck = true, Coins = true, Xp = true }
autoArcadeBoostLoopThread = nil

arcadeBoostDefs = {
  Luck = {
    label = "Arcade Luck Boost",
    baseNames = { "Arcade Luck Boost", "Coin Arcade Luck Boost", "CoinArcadeLuck" },
    tiers = {
      { tier = 1, boostId = "CoinArcadeLuck1" }, { tier = 2, boostId = "CoinArcadeLuck2" },
      { tier = 3, boostId = "CoinArcadeLuck3" },
    },
  },
  Coins = {
    label = "Arcade Coin Boost",
    baseNames = {
      "Arcade Coin Boost", "Arcade Coins Boost", "Coin Arcade Coin Boost", "CoinArcadeCoins",
    },
    tiers = {
      { tier = 1, boostId = "CoinArcadeCoins1" }, { tier = 2, boostId = "CoinArcadeCoins2" },
      { tier = 3, boostId = "CoinArcadeCoins3" },
    },
  },
  Xp = {
    label = "Arcade XP Boost",
    baseNames = { "Arcade XP Boost", "Arcade Xp Boost", "Coin Arcade XP Boost", "CoinArcadeXp" },
    tiers = {
      { tier = 1, boostId = "CoinArcadeXp1" }, { tier = 2, boostId = "CoinArcadeXp2" },
      { tier = 3, boostId = "CoinArcadeXp3" },
    },
  },
}

function buildArcadeBoostNameVariants(p43, p44)
  local tier = p44.tier or 1
  local boostId = p44.boostId
  local v241 = { [1] = "", [2] = " II", [3] = " III" }
  local v242 = { [1] = "", [2] = "II", [3] = "III" }
  local v243 = { [1] = "", [2] = " 2", [3] = " 3" }
  local v244 = {}

  local function f4(p45, tier2)
    if not p45 or p45 == "" then
      return
    end

    table.insert(v244, { consumable = p45, tier = tier2, boostId = boostId })
  end

  f4(boostId, tier)
  f4(boostId, 1)
  f4(boostId, nil)

  local ToString_2 = tostring(boostId):ToString_2("%d+$", "")

  f4(ToString_2, tier)
  f4(ToString_2, 1)

  for index14, value20 in ipairs(p43.baseNames or { p43.label }) do
    f4(value20, tier)
    f4(value20 .. (v241[tier] or ""), tier)
    f4(value20 .. " " .. (v242[tier] or ""), tier)
    f4(value20 .. (v243[tier] or ""), tier)
    f4(value20 .. " T" .. tostring(tier), tier)
    f4(value20 .. " Tier " .. tostring(tier), tier)
  end

  pcall(function()
    local Module_31 = require(game.ReplicatedStorage.Library.Directory.Boosts)
    local v246 = Module_31 and Module_31[boostId]

    if v246 then
      local Name_2 = v246.DisplayName or v246.Name

      if Name_2 then
        f4(Name_2, tier)
        f4(Name_2, 1)
        f4(Name_2, nil)
      end
    end
  end)

  return v244
end

function tryUseArcadeBoostType(p46)
  local v247 = arcadeBoostDefs[p46]

  if not v247 or not v247.tiers then
    return false
  else
    local v248 = {}

    if autoArcadeBoostPriority == "Highest" then
      local v249 = #v247.tiers - -1

      while true do
        v249 = -1 + v249

        if not (v249 >= 1 or false) then
          break
        end

        table.insert(v248, v247.tiers[v249])
      end
    else
      for m = 1, #v247.tiers do
        table.insert(v248, v247.tiers[m])
      end
    end

    for index15, value21 in ipairs(v248) do
      local Value21 = value21

      if Value21 and Value21.boostId and not isBoostActive(Value21.boostId) then
        local v251 = false

        pcall(function()
          local getBoostCmdsMod_3 = getBoostCmdsMod()

          if getBoostCmdsMod_3 and getBoostCmdsMod_3.IsTierPaused and getBoostCmdsMod_3.IsTierPaused(Value21.boostId) then
            v251 = true
          end
        end)

        if not v251 then
          for index16, value22 in ipairs((buildArcadeBoostNameVariants(v247, Value21))) do
            if tryConsumeBoost(value22) then
              if sendNotification then
                sendNotification(
                  "Arcade Boost", (v247.label or p46) .. " T" .. tostring(Value21.tier), 2
                )
              end

              return true
            end
          end
        end
      end
    end

    return false
  end
end

function startAutoGiftMachineLoop()
  if autoGiftMachineLoopThread then
    autoGiftMachineLoopThread = nil
  end

  autoGiftMachineLoopThread = task.spawn(function()
    local v253
    pcall(function() v253 = require(game.ReplicatedStorage.Library.Functions) end)
    local v254

    local function f5(p47)
      local countAny = 0

      pcall(function()
        if v254 and p47 then
          local v254_2 = v254(p47)

          if v254_2 then
            if v254_2.CountAny then
              countAny = v254_2:CountAny() or 0
            end

            if countAny <= 0 and v254_2.FindAny then
              local FindAny_3 = v254_2:FindAny()
              local v256 = FindAny_3 and FindAny_3[1]

              if v256 then
                if v256.GetAmount then
                  countAny = v256:GetAmount() or 0
                elseif v256.CountAny then
                  countAny = v256:CountAny() or 0
                end
              end
            end
          end
        end
      end)

      if countAny <= 0 then
        pcall(function()
          local Module_32 = require(game.ReplicatedStorage.Library.Items)

          if Module_32 and Module_32.Misc then
            local Misc = Module_32.Misc:Find(p47) or Module_32.Misc(p47)

            if Misc then
              if Misc.CountAny then
                countAny = Misc:CountAny() or 0
              elseif Misc.GetAmount then
                countAny = Misc:GetAmount() or 0
              end
            end
          end
        end)
      end

      return tonumber(countAny) or 0
    end

    local v258, v259

    while autoGiftMachineEnabled and scriptRunning do
      pcall(function()
        if not v258 then
          v258 = require(game.ReplicatedStorage.Library.Util.CoinArcadeGiftMachine)
        end

        if not v259 then
          v259 = require(game.ReplicatedStorage.Library.Client.Network)
        end

        local rpc, v260, v261, v262, v263, v264, v265

        if not v258 or not v259 then
          return
        else
          local inputID = v258.INPUT_ID or "Arcade Invader"
          local ToNumber_12 = tonumber(v258.INPUT_PER_GIFT) or 10
          rpc = v258.RPC or "VR_Fold"

          if ToNumber_12 < 1 then
            ToNumber_12 = 10
          end

          local f5_2 = f5(inputID)

          if f5_2 < ToNumber_12 then
            return
          else
            local MathFloor = math.floor(f5_2 / ToNumber_12)
            v260 = MathFloor * ToNumber_12

            if v260 < ToNumber_12 then
              return
            end

            v261 = false
            v262 = nil
            v263 = nil

            pcall(function()
              local v269, v270, v271 = v259.Invoke(rpc, v260)
              v261 = v269
              v262 = v270
              v263 = v271
            end)

            if v261 then
              v264 = v263

              if type(v264) ~= "number" then
                v264 = MathFloor
              end

              if sendNotification then
                v265 = tostring(v264)

                pcall(function()
                  if v253 and v253.NumberShorten then
                    v265 = v253.NumberShorten(v264)
                  end
                end)

                sendNotification("Gifts", "Crafted " .. v265 .. " "
                  .. tostring(v258.GIFT_ID or "Arcade Gift") .. "!", 3)
              end

              task.wait(1)
            elseif v262 and sendNotification then
              sendNotification("Gifts", tostring(v262), 2)
            end

            return
          end
        end
      end)

      task.wait(4)
    end

    autoGiftMachineLoopThread = nil
  end)
end

function startAutoArcadeBoostLoop()
  if autoArcadeBoostLoopThread then
    autoArcadeBoostLoopThread = nil
  end

  autoArcadeBoostLoopThread = task.spawn(function()
    while autoArcadeBoostEnabled and scriptRunning do
      pcall(function()
        for key7, value23 in pairs(autoArcadeBoostSelected) do
          if not autoArcadeBoostEnabled or not scriptRunning then
            break
          elseif value23 then
            tryUseArcadeBoostType(key7)
            task.wait(0.4)
          end
        end
      end)

      task.wait(3)
    end

    autoArcadeBoostLoopThread = nil
  end)
end

function clearAutoHatchFreeze()
  local Character_2 = LocalPlayer.Character

  if not Character_2 then
    autoHatchFreezeAnchorState = nil
    autoHatchFreezePlatformStandState = nil
    return
  else
    local HumanoidRootPart_2 = Character_2:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character_2:FindFirstChildWhichIsA("Humanoid")

    if HumanoidRootPart_2 then
      HumanoidRootPart_2.Anchored = false
    end

    if Humanoid then
      Humanoid.PlatformStand = false
    end

    autoHatchFreezeAnchorState = nil
    autoHatchFreezePlatformStandState = nil
    return
  end
end

function applyAutoHatchFreeze(p48, p49)
  if not p48 then
    return
  end

  if autoHatchDisableFreeze then
    p48.Anchored = false

    if p49 then
      p49.PlatformStand = false
    end

    return
  end

  if autoHatchFreezeAnchorState == nil then
    autoHatchFreezeAnchorState = p48.Anchored
  end

  if p49 and autoHatchFreezePlatformStandState == nil then
    autoHatchFreezePlatformStandState = p49.PlatformStand
  end

  p48.Anchored = true

  if p49 then
    p49.PlatformStand = true
  end
end

function teleportToEggOnce(p50)
  if not p50 or not p50._position then
    return false
  end

  local Character_3 = LocalPlayer.Character
  local vector, model, cframe

  if not Character_3 then
    return false
  else
    local HumanoidRootPart_3 = Character_3:FindFirstChild("HumanoidRootPart")

    if not HumanoidRootPart_3 then
      return false
    else
      local Humanoid_2 = Character_3:FindFirstChildWhichIsA("Humanoid")
      HumanoidRootPart_3.Anchored = false

      if Humanoid_2 then
        Humanoid_2.PlatformStand = false
        Humanoid_2:ChangeState(Enum.HumanoidStateType.Running)
      end

      local position = p50._position
      local Position = position
      model = p50._model

      if model then
        local v272, v273 = pcall(function() return model:GetPivot() end)

        if v272 and v273 then
          position = v273.Position
          Position = v273.Position
        end

        local Center = model:FindFirstChild("Center", true)
          or model:FindFirstChildWhichIsA("BasePart", true)

        if Center and Center:IsA("BasePart") then
          position = Center.Position
          Position = Center.Position
        end
      end

      local Vector3_2 = Vector3.new(0, 3, 0)
      local vector3 = HumanoidRootPart_3.Position - position

      if vector3.Magnitude < 0.5 then
        vector3 = Vector3.new(0, 0, -1)
      end

      local Vector3_3 = Vector3.new(vector3.X, 0, vector3.Z)

      if Vector3_3.Magnitude < 0.1 then
        vector = Vector3.new(0, 0, -1)
      else
        vector = Vector3_3.Unit
      end

      local v274 = position + vector * 5 + Vector3_2
      cframe = CFrame.new(v274, Vector3.new(Position.X, v274.Y, Position.Z))

      HumanoidRootPart_3.AssemblyLinearVelocity = Vector3.zero
      HumanoidRootPart_3.AssemblyAngularVelocity = Vector3.zero
      HumanoidRootPart_3.CFrame = cframe

      pcall(function() Character_3:PivotTo(cframe) end)
      task.wait(0.35)
      HumanoidRootPart_3.CFrame = cframe
      pcall(function() Character_3:PivotTo(cframe) end)
      task.wait(0.25)
      autoHatchStandCFrame = cframe

      if not autoHatchDisableFreeze then
        applyAutoHatchFreeze(HumanoidRootPart_3, Humanoid_2)
      else
        HumanoidRootPart_3.Anchored = false

        if Humanoid_2 then
          Humanoid_2.PlatformStand = false
        end
      end

      return true
    end
  end
end

_cachedCustomEggsCmds = nil
_cachedEggCmds = nil
_cachedCurrencyCmds = nil
_cachedCalcEggPrice = nil
_cachedPlayerLib = nil
_hatchModFail = {}

function getCustomEggsCmds()
  if _cachedCustomEggsCmds then
    return _cachedCustomEggsCmds
  elseif _hatchModFail.CustomEggs then
    return nil
  else
    local v275, v276 = pcall(function()
      return require(game.ReplicatedStorage.Library.Client.CustomEggsCmds)
    end)

    if v275 and v276 then
      _cachedCustomEggsCmds = v276
      return v276
    end

    _hatchModFail.CustomEggs = true
    return nil
  end
end

function getEggCmdsMod()
  if _cachedEggCmds then
    return _cachedEggCmds
  elseif _hatchModFail.EggCmds then
    return nil
  else
    local v277, v278 = pcall(function()
      return require(game.ReplicatedStorage.Library.Client.EggCmds)
    end)

    if v277 and v278 then
      _cachedEggCmds = v278
      return v278
    end

    _hatchModFail.EggCmds = true
    return nil
  end
end

function getCurrencyCmdsMod()
  if _cachedCurrencyCmds then
    return _cachedCurrencyCmds
  elseif _hatchModFail.Currency then
    return nil
  else
    local v279, v280 = pcall(function()
      return require(game.ReplicatedStorage.Library.Client.CurrencyCmds)
    end)

    if v279 and v280 then
      _cachedCurrencyCmds = v280
      return v280
    end

    _hatchModFail.Currency = true
    return nil
  end
end

function getCalcEggPriceMod()
  if _cachedCalcEggPrice then
    return _cachedCalcEggPrice
  elseif _hatchModFail.Calc then
    return nil
  else
    local v281, v282 = pcall(function()
      return require(game.ReplicatedStorage.Library.Balancing.CalcEggPricePlayer)
    end)

    if v281 and v282 then
      _cachedCalcEggPrice = v282
      return v282
    end

    _hatchModFail.Calc = true
    return nil
  end
end

function getPlayerLibMod()
  if _cachedPlayerLib then
    return _cachedPlayerLib
  elseif _hatchModFail.PlayerLib then
    return nil
  else
    local v283, v284 = pcall(function() return require(game.ReplicatedStorage.Library.Player) end)

    if v283 and v284 then
      _cachedPlayerLib = v284
      return v284
    end

    _hatchModFail.PlayerLib = true
    return nil
  end
end

function eggIdMatchesPreferred(p51, p52)
  if not p52 or p52 == "Nearest (Any)" then
    return true
  elseif not p51 then
    return false
  else
    local StringLower_2 = string.lower(tostring(p51))
    local StringLower_3 = string.lower(tostring(p52))

    if StringLower_2 == StringLower_3 then
      return true
    else
      local Match = StringLower_3:match("%d+%s*|%s*(.+)") or StringLower_3

      if Match and StringLower_2:find(Match, 1, true) then
        return true
      end

      if StringLower_3:find(StringLower_2, 1, true) then
        return true
      end

      return false
    end
  end
end

function getAffordableHatchAmount(p53)
  local dir2 = p53 and p53._dir
  local v287, v288, maxEggCount

  if not dir2 or not dir2.currency then
    return 0
  else
    v287 = getCalcEggPriceMod()
    v288 = getEggCmdsMod()
    local getCurrencyCmdsMod_2 = getCurrencyCmdsMod()

    if not v287 or not getCurrencyCmdsMod_2 then
      return 1
    else
      local v290, v291 = pcall(function()
        return v287(dir2, nil, not p53._allowChargedAndGolden)
      end)

      if not v290 or not v291 or v291 <= 0 then
        return 0
      else
        maxEggCount = 1

        pcall(function()
          maxEggCount = p53._maxEggCount or v288 and v288.GetMaxHatch(dir2) or 1
        end)

        local MathFloor_2 = math.floor(math.min(maxEggCount, 0 / v291))
        return math.max(0, MathFloor_2)
      end
    end
  end
end

function getTargetCustomEgg()
  local getCustomEggsCmds_2 = getCustomEggsCmds()
  local getPlayerLibMod_2 = getPlayerLibMod()
  local v295 = not getCustomEggsCmds_2 or not getPlayerLibMod_2
  local v296

  if v295 then
    return nil
  else
    local vector5 = nil

    if not vector5 then
      vector5 = Vector3.new(0, 0, 0)
    end

    local AutoHatchPreferredEggId = autoHatchPreferredEggId
    local MathHuge_2 = math.huge
    local v298 = nil
    local MathHuge_3 = math.huge
    local v299 = nil
    v296 = nil
    pcall(function() v296 = getCustomEggsCmds_2.All() end)

    if type(v296) ~= "table" then
      return nil
    end

    for key8, value24 in pairs(v296) do
      if value24 and not value24._destroyed and value24._hatchable and value24._position then
        local Magnitude = (value24._position - vector5).Magnitude

        if Magnitude < MathHuge_2 then
          MathHuge_2 = Magnitude
          v298 = value24
        end

        if eggIdMatchesPreferred(value24._id, AutoHatchPreferredEggId) and Magnitude < MathHuge_3 then
          MathHuge_3 = Magnitude
          v299 = value24
        end
      end
    end

    return v299 or v298
  end
end

function hatchCustomEggOnce()
  local getTargetCustomEgg_2 = getTargetCustomEgg()

  if not getTargetCustomEgg_2 then
    return false, "No egg nearby"
  end

  local getAffordableHatchAmount_2 = getAffordableHatchAmount(getTargetCustomEgg_2)

  if getAffordableHatchAmount_2 <= 0 then
    return false, "Can't afford"
  else
    local v302, v303, v304 = pcall(function()
      return Network.Invoke("CustomEggs_Hatch", getTargetCustomEgg_2._uid, getAffordableHatchAmount_2)
    end)

    if not v302 then
      return false, tostring(v303)
    end

    if v303 == false then
      return false, v304 or "Hatch failed"
    end

    return true, getTargetCustomEgg_2._id or getTargetCustomEgg_2._uid, getAffordableHatchAmount_2
  end
end

function hasCameraEggs()
  local Camera = workspace.CurrentCamera or workspace:FindFirstChild("Camera")

  if not Camera then
    return false
  else
    local Eggs = Camera:FindFirstChild("Eggs")

    if not Eggs then
      return false
    else
      local v305 = 0

      for index17, value25 in ipairs(Eggs:GetChildren()) do
        v305 = v305 + 1

        if v305 > 0 then
          return true
        end
      end

      return false
    end
  end
end

function fireHatchClicks(p54, p55)
  local MathClamp_2 = math.clamp(tonumber(p55) or 5, 4, 6)
  local Character_4 = LocalPlayer.Character

  local Character4 = Character_4
  Character4 = Character_4 and Character_4:FindFirstChild("HumanoidRootPart")

  local HumanoidRootPart4 = Character4
  HumanoidRootPart4 = Character4 and Character4.Position + Vector3.new(0, 2, 0)

  local V307 = HumanoidRootPart4
  V307 = HumanoidRootPart4 or Vector3.new(0, 5, 0)

  local New_2 = V307 + Vector3.new(0, -2, -8)

  if p54 and p54._position then
    New_2 = p54._position + Vector3.new(0, 2, 0)

    if Character4 then
      V307 = Character4.Position + Vector3.new(0, 1.5, 0)
    end
  end

  local v309 = New_2 - V307
  local vector7

  if v309.Magnitude < 0.1 then
    vector7 = Vector3.new(0, -1, 0)
  else
    vector7 = v309.Unit
  end

  local v310 = 0

  while true do
    v310 = 1 + v310

    if not (v310 <= MathClamp_2) then
      break
    end

    local V310 = v310

    local Vector3_4 = Vector3.new(
      (math.random() - 0.5) * 1.5, (math.random() - 0.5) * 1, (math.random() - 0.5) * 1.5
    )

    local v312 = V307 + Vector3_4
    local v313 = New_2 + Vector3_4 * 0.5
    local unit = v313 - v312

    if unit.Magnitude < 0.1 then
      unit = vector7
    else
      unit = unit.Unit
    end

    pcall(function() Network.Fire("Click", Ray.new(v312, unit * 50), v313) end)

    pcall(function()
      local CurrentCamera = workspace.CurrentCamera
      local ViewportSize = CurrentCamera and CurrentCamera.ViewportSize

      if ViewportSize then
        local Random = ViewportSize.X * (0.46 + (math.random() - 0.5) * 0.12)
        local Random_2 = ViewportSize.Y * (0.52 + (math.random() - 0.5) * 0.12)
        VirtualInputManager:SendMouseButtonEvent(Random, Random_2, 0, true, game, 0)
        task.wait(0.03)
        VirtualInputManager:SendMouseButtonEvent(Random, Random_2, 0, false, game, 0)
      end
    end)

    if V310 < MathClamp_2 then
      task.wait(0.2)
    end
  end
end

function startAutoHatchLoop()
  if autoHatchLoopThread then
    autoHatchLoopThread = nil
  end

  autoHatchTeleportDone = false
  autoHatchLastTargetUid = nil

  autoHatchLoopThread = task.spawn(function()
    local v316 = 0

    while autoHatchEnabled and scriptRunning do
      local getTargetCustomEgg_3 = getTargetCustomEgg()

      if getTargetCustomEgg_3 then
        local uid = getTargetCustomEgg_3._uid

        if not autoHatchTeleportDone or autoHatchLastTargetUid ~= uid or v316 >= 3 then
          clearAutoHatchFreeze()

          if teleportToEggOnce(getTargetCustomEgg_3) then
            autoHatchTeleportDone = true
            autoHatchLastTargetUid = uid
            v316 = 0
            task.wait(0.2)
          else
            task.wait(1)
          end
        else
          local Character_5 = LocalPlayer.Character
          local HumanoidRootPart_4 = Character_5 and Character_5:FindFirstChild("HumanoidRootPart")
          local Humanoid_3 = Character_5 and Character_5:FindFirstChildWhichIsA("Humanoid")

          if HumanoidRootPart_4 then
            if autoHatchDisableFreeze then
              if autoHatchStandCFrame then
                if (HumanoidRootPart_4.Position - autoHatchStandCFrame.Position).Magnitude > 6 then
                  HumanoidRootPart_4.AssemblyLinearVelocity = Vector3.zero
                  HumanoidRootPart_4.AssemblyAngularVelocity = Vector3.zero
                  HumanoidRootPart_4.CFrame = autoHatchStandCFrame

                  pcall(function() Character_5:PivotTo(autoHatchStandCFrame) end)
                end
              end

              HumanoidRootPart_4.Anchored = false

              if Humanoid_3 then
                Humanoid_3.PlatformStand = false
              end
            else
              applyAutoHatchFreeze(HumanoidRootPart_4, Humanoid_3)
            end
          end
        end

        local getAffordableHatchAmount_3 = getAffordableHatchAmount(getTargetCustomEgg_3)

        if getAffordableHatchAmount_3 > 0 then
          local v319, v320, v321 = pcall(function()
            return Network.Invoke("CustomEggs_Hatch", getTargetCustomEgg_3._uid, getAffordableHatchAmount_3)
          end)

          if v319 and v320 ~= false then
            v316 = 0
            task.wait(0.3)
            pcall(function() fireHatchClicks(getTargetCustomEgg_3, 5) end)
            local total = 0

            while total < 2.5 do
              if not hasCameraEggs() and total > 0.4 then
                break
              end

              task.wait(0.15)
              total = total + 0.15
            end

            task.wait(0.25)
          else
            v316 = v316 + 1
            local StringLower_4 = string.lower(tostring(v321 or v320 or ""))

            if StringLower_4:find("quickly") then
              task.wait(2.5)
            elseif StringLower_4:find("far") or StringLower_4:find("distance") or StringLower_4:find("close")
              or StringLower_4:find("near") or v320 == false then
              autoHatchTeleportDone = false
              clearAutoHatchFreeze()
              task.wait(0.4)
            else
              task.wait(1)
            end
          end
        else
          task.wait(1)
        end
      else
        task.wait(1)
      end
    end

    clearAutoHatchFreeze()
    autoHatchTeleportDone = false
    autoHatchLastTargetUid = nil
    autoHatchLoopThread = nil
  end)
end

function rejoinServer()
  if #Players:GetPlayers() <= 1 then
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
  else
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
  end
end

function serverHop()
  local PlaceId = game.PlaceId
  local JobId = game.JobId

  local v323 = "https://games.roblox.com/v1/games/" .. PlaceId
    .. "/servers/Public?sortOrder=Asc&limit=100"

  local v324, v325 = pcall(function() return HttpService:JSONDecode(game:HttpGet(v323)) end)

  if v324 and v325 and v325.data then
    for index18, value26 in ipairs(v325.data) do
      if value26.id ~= JobId and value26.playing < value26.maxPlayers then
        TeleportService:TeleportToPlaceInstance(PlaceId, value26.id, LocalPlayer)
        return
      end
    end

    TeleportService:Teleport(PlaceId, game.JobId, LocalPlayer)
    return
  end

  TeleportService:Teleport(PlaceId, game.JobId, LocalPlayer)
end

function findBossId()
  local THINGS = workspace:FindFirstChild("__THINGS")
  local Breakables = THINGS and THINGS:FindFirstChild("Breakables")

  if not Breakables then
    return persistentBossId
  end

  for index19, value27 in ipairs(Breakables:GetChildren()) do
    if value27:FindFirstChild("RopeAttachment", true) then
      persistentBossId = value27.Name
      return value27.Name
    end
  end

  return persistentBossId
end

ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PS99FarmUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

activeToasts = {}
TOAST_HEIGHT = 65
TOAST_GAP = 8
TOAST_BOTTOM_OFFSET = 80

function recalculateToastPositions()
  for index20, value28 in ipairs(activeToasts) do
    if value28 and value28.Parent then
      TweenService:Create(value28, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = UDim2.new(
          1, -250, 1, -(TOAST_BOTTOM_OFFSET + (index20 - 1) * (TOAST_HEIGHT + TOAST_GAP))
        ),
      }):Play()
    end
  end
end

function removeToast(p56)
  recalculateToastPositions()
end

function sendNotification(p57, p58, p59)
  local P59 = p59
  P59 = P59 or 3

  local v327 = -(TOAST_BOTTOM_OFFSET + (#activeToasts + 1 - 1) * (TOAST_HEIGHT + TOAST_GAP))

  local Frame = Instance.new("Frame", ScreenGui)
  Frame.Name = "NotificationToast"
  Frame.Size = UDim2.new(0, 240, 0, TOAST_HEIGHT)
  Frame.Position = UDim2.new(1, 260, 1, v327)
  Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
  Frame.BorderSizePixel = 0
  Frame.ZIndex = 500

  Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

  local UIStroke = Instance.new("UIStroke", Frame)
  UIStroke.Color = C_ACCENT
  UIStroke.Thickness = 1

  local TextLabel = Instance.new("TextLabel", Frame)
  TextLabel.Size = UDim2.new(1, -16, 0, 20)
  TextLabel.Position = UDim2.new(0, 10, 0, 8)
  TextLabel.BackgroundTransparency = 1
  TextLabel.Font = FONT_BOLD
  TextLabel.RichText = true
  TextLabel.Text = "<b>" .. p57 .. "</b>"
  TextLabel.TextColor3 = C_TEXT
  TextLabel.TextSize = 11
  TextLabel.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel.ZIndex = 501

  local TextLabel_2 = Instance.new("TextLabel", Frame)
  TextLabel_2.Size = UDim2.new(1, -16, 0, 25)
  TextLabel_2.Position = UDim2.new(0, 10, 0, 28)
  TextLabel_2.BackgroundTransparency = 1
  TextLabel_2.Font = FONT_MEDIUM
  TextLabel_2.RichText = true
  TextLabel_2.Text = "<b>" .. p58 .. "</b>"
  TextLabel_2.TextColor3 = C_SUBTEXT
  TextLabel_2.TextSize = 10
  TextLabel_2.TextWrapped = true
  TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_2.ZIndex = 501

  table.insert(activeToasts, Frame)

  TweenService:Create(
    Frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
    { Position = UDim2.new(1, -250, 1, v327) }
  ):Play()

  task.spawn(function()
    task.wait(P59)

    if Frame and Frame.Parent then
      TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Position = UDim2.new(1, 260, 1, Frame.Position.Y.Offset),
      }):Play()

      task.wait(0.3)
      removeToast(Frame)
      Frame:Destroy()
    end
  end)
end

BlackOverlay = Instance.new("Frame", ScreenGui)
BlackOverlay.Name = "BlackOverlay"
BlackOverlay.Size = UDim2.new(1, 0, 1, 36)
BlackOverlay.Position = UDim2.new(0, 0, 0, -36)
BlackOverlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlackOverlay.BorderSizePixel = 0
BlackOverlay.Visible = false
BlackOverlay.ZIndex = 0

MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 620, 0, 420)
MainFrame.Position = UDim2.new(0.5, -310, 0.5, -210)
MainFrame.BackgroundColor3 = C_BG
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.ClipsDescendants = true
MainFrame.ZIndex = 10
MainFrame.Visible = false
MainFrame.BackgroundTransparency = 1

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 1
MainStroke.Color = Color3.fromRGB(38, 38, 52)

WindowHeader = Instance.new("Frame", MainFrame)
WindowHeader.Name = "WindowHeader"
WindowHeader.Size = UDim2.new(1, 0, 0, 36)
WindowHeader.BackgroundTransparency = 1
WindowHeader.ZIndex = 35

CloseBtn = Instance.new("TextButton", WindowHeader)
CloseBtn.Name = "CloseBtn"
CloseBtn.Size = UDim2.new(0, 28, 0, 28)
CloseBtn.Position = UDim2.new(1, -34, 0, 4)
CloseBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 52)
CloseBtn.BackgroundTransparency = 0.35
CloseBtn.Font = FONT_BOLD
CloseBtn.RichText = true
CloseBtn.Text = "<b>X</b>"
CloseBtn.TextColor3 = Color3.fromRGB(200, 205, 220)
CloseBtn.TextSize = 14
CloseBtn.ZIndex = 50
CloseBtn.AutoButtonColor = true

Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 6)

CloseBtn.MouseEnter:Connect(function()
  CloseBtn.TextColor3 = C_DANGER
  CloseBtn.BackgroundTransparency = 0.1
end)

CloseBtn.MouseLeave:Connect(function()
  CloseBtn.TextColor3 = Color3.fromRGB(200, 205, 220)
  CloseBtn.BackgroundTransparency = 0.35
end)

CloseBtn.MouseButton1Click:Connect(function()
  uiVisible = false
  MainFrame.Visible = false
end)

Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 185, 1, 0)
Sidebar.BackgroundColor3 = C_SIDEBAR
Sidebar.BorderSizePixel = 0
Sidebar.ClipsDescendants = true
Sidebar.ZIndex = 11

Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 12)

HeaderFrame = Instance.new("Frame", Sidebar)
HeaderFrame.Name = "HeaderFrame"
HeaderFrame.Size = UDim2.new(1, 0, 0, 65)
HeaderFrame.BackgroundTransparency = 1
HeaderFrame.ZIndex = 12

HeaderContent = Instance.new("Frame", HeaderFrame)
HeaderContent.Name = "HeaderContent"
HeaderContent.Size = UDim2.new(1, -24, 1, -10)
HeaderContent.Position = UDim2.new(0, 14, 0, 14)
HeaderContent.BackgroundTransparency = 1
HeaderContent.ZIndex = 13

TitleLabel = Instance.new("TextLabel", HeaderContent)
TitleLabel.Name = "TitleLabel"
TitleLabel.Size = UDim2.new(1, 0, 0, 20)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Font = FONT_FREDOKA
TitleLabel.RichText = true
TitleLabel.Text = "<b><font color=\"#FFFFFF\">PS99 </font><font color=\"#7289DA\">Farm</font></b>"
TitleLabel.TextSize = 18
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.ZIndex = 14

TitleSub = Instance.new("TextLabel", HeaderContent)
TitleSub.Name = "TitleSub"
TitleSub.Size = UDim2.new(1, 0, 0, 14)
TitleSub.Position = UDim2.new(0, 0, 0, 22)
TitleSub.BackgroundTransparency = 1
TitleSub.Font = FONT_MEDIUM
TitleSub.RichText = true
TitleSub.Text = "<b>🕹️ Coin Arcade</b>"
TitleSub.TextColor3 = C_SUBTEXT
TitleSub.TextSize = 10
TitleSub.TextXAlignment = Enum.TextXAlignment.Left
TitleSub.ZIndex = 14

HeaderSeparator = Instance.new("Frame", HeaderFrame)
HeaderSeparator.Size = UDim2.new(1, -28, 0, 1)
HeaderSeparator.Position = UDim2.new(0, 14, 1, -1)
HeaderSeparator.BackgroundColor3 = Color3.fromRGB(32, 32, 44)
HeaderSeparator.BorderSizePixel = 0
HeaderSeparator.ZIndex = 13

NavContainer = Instance.new("Frame", Sidebar)
NavContainer.Size = UDim2.new(1, 0, 1, -150)
NavContainer.Position = UDim2.new(0, 0, 0, 75)
NavContainer.BackgroundTransparency = 1
NavContainer.ZIndex = 12

SidebarLayout = Instance.new("UIListLayout", NavContainer)
SidebarLayout.SortOrder = Enum.SortOrder.LayoutOrder
SidebarLayout.Padding = UDim.new(0, 5)
SidebarLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

SidebarPadding = Instance.new("UIPadding", NavContainer)
SidebarPadding.PaddingLeft = UDim.new(0, 10)
SidebarPadding.PaddingRight = UDim.new(0, 10)

local v328
userRankTitle, v328 = getPlayerRank()
userRankColor = v328

ProfileCard = Instance.new("Frame", Sidebar)
ProfileCard.Name = "ProfileCard"
ProfileCard.Size = UDim2.new(1, -20, 0, 52)
ProfileCard.Position = UDim2.new(0, 10, 1, -70)
ProfileCard.BackgroundColor3 = C_PROFILE
ProfileCard.BorderSizePixel = 0
ProfileCard.ZIndex = 12

Instance.new("UICorner", ProfileCard).CornerRadius = UDim.new(0, 8)

ProfileImage = Instance.new("ImageLabel", ProfileCard)
ProfileImage.Size = UDim2.new(0, 32, 0, 32)
ProfileImage.Position = UDim2.new(0, 8, 0.5, -16)
ProfileImage.BackgroundTransparency = 1

ProfileImage.Image = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId
  .. "&w=150&h=150"

ProfileImage.ZIndex = 13

Instance.new("UICorner", ProfileImage).CornerRadius = UDim.new(1, 0)

ProfileUser = Instance.new("TextLabel", ProfileCard)
ProfileUser.Size = UDim2.new(1, -48, 0, 15)
ProfileUser.Position = UDim2.new(0, 44, 0, 10)
ProfileUser.BackgroundTransparency = 1
ProfileUser.Font = FONT_BOLD
ProfileUser.RichText = true
ProfileUser.Text = "<b>@" .. LocalPlayer.Name .. "</b>"
ProfileUser.TextColor3 = C_TEXT
ProfileUser.TextSize = 11
ProfileUser.TextXAlignment = Enum.TextXAlignment.Left
ProfileUser.TextTruncate = Enum.TextTruncate.AtEnd
ProfileUser.ZIndex = 13

ProfileRank = Instance.new("TextLabel", ProfileCard)
ProfileRank.Size = UDim2.new(1, -48, 0, 13)
ProfileRank.Position = UDim2.new(0, 44, 0, 27)
ProfileRank.BackgroundTransparency = 1
ProfileRank.Font = FONT_BOLD
ProfileRank.RichText = true
ProfileRank.Text = "<b>• " .. userRankTitle .. "</b>"
ProfileRank.TextColor3 = userRankColor
ProfileRank.TextSize = 10
ProfileRank.TextXAlignment = Enum.TextXAlignment.Left
ProfileRank.ZIndex = 13

VersionLabel = Instance.new("TextLabel", Sidebar)
VersionLabel.Size = UDim2.new(1, 0, 0, 14)
VersionLabel.Position = UDim2.new(0, 0, 1, -14)
VersionLabel.BackgroundTransparency = 1
VersionLabel.Font = FONT_BOLD
VersionLabel.RichText = true
VersionLabel.Text = "<b>PS99 Farm v1.0</b>"
VersionLabel.TextColor3 = C_SUBTEXT
VersionLabel.TextSize = 10
VersionLabel.ZIndex = 12

ContentContainer = Instance.new("Frame", MainFrame)
ContentContainer.Size = UDim2.new(1, -185, 1, 0)
ContentContainer.Position = UDim2.new(0, 185, 0, 0)
ContentContainer.BackgroundTransparency = 1
ContentContainer.ZIndex = 11

ContentPadding = Instance.new("UIPadding", ContentContainer)
ContentPadding.PaddingTop = UDim.new(0, 36)
ContentPadding.PaddingBottom = UDim.new(0, 16)
ContentPadding.PaddingLeft = UDim.new(0, 16)
ContentPadding.PaddingRight = UDim.new(0, 16)

Tabs = {
  Dashboard = Instance.new("ScrollingFrame"),
  Automation = Instance.new("ScrollingFrame"),
  Squad = Instance.new("ScrollingFrame"),
  Minigames = Instance.new("ScrollingFrame"),
  Upgrades = Instance.new("ScrollingFrame"),
  Graphics = Instance.new("ScrollingFrame"),
  Settings = Instance.new("ScrollingFrame"),
}

TabButtons = {}
currentTab = "Dashboard"

tabIcons = {
  Dashboard = "📊 ",
  Automation = "⚡ ",
  Squad = "🐾 ",
  Minigames = "🎮 ",
  Upgrades = "🔧 ",
  Graphics = "🎨 ",
  Settings = "⚙️ ",
}

sectionHeadersList = {}
staticAccentButtonsList = {}
colorPickerButtonsList = {}
dashboardLiveBoxesList = {}
dropdownOptionButtonsList = {}
updateAutoLoadLabel = nil
applyDropdownThemeColors = nil
presetButtonsMap = {}
configButtonsMap = {}
selectedPresetName = "Default Dark"
selectedConfigName = "Default Config"
rebuildPresetSelectionList = nil
rebuildConfigSelectionList = nil

function tintColorForSlider(p60, p61)
  return Color3.new(
    math.clamp(p60.R + p61, 0, 1), math.clamp(p60.G + p61, 0, 1), math.clamp(p60.B + p61, 0, 1)
  )
end

function contrastTextColor(p62)
  if p62.R * 0.299 + p62.G * 0.587 + p62.B * 0.114 > 0.5 then
    return Color3.fromRGB(0, 0, 0)
  end

  return Color3.fromRGB(255, 255, 255)
end

function applySliderThemeColors()
  for index21, value29 in ipairs(sliderUiElementsList) do
    if value29 and value29.frame and value29.frame.Parent then
      value29.frame.BackgroundColor3 = tintColorForSlider(C_SLIDER, -0.28)
    end

    if value29 and value29.fill and value29.fill.Parent then
      if value29.fill == pinataSliderFill and pinataCurrentDelay < 0.35 then
        value29.fill.BackgroundColor3 = C_DANGER
      else
        value29.fill.BackgroundColor3 = C_SLIDER
      end
    end
  end
end

function applyDropdownThemeColors()
  if giftDropdownBtn and giftDropdownBtn.Parent then
    giftDropdownBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    giftDropdownBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  end

  if eggDropdownBtn and eggDropdownBtn.Parent then
    eggDropdownBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    eggDropdownBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  end

  if boostPriorityBtn and boostPriorityBtn.Parent then
    boostPriorityBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    boostPriorityBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  end

  if boostSelectBtn and boostSelectBtn.Parent then
    boostSelectBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    boostSelectBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  end

  if chestSelectBtn and chestSelectBtn.Parent then
    chestSelectBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
    chestSelectBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  end

  local tintColorForSlider_2 = tintColorForSlider(C_CONTAINERS, 0.08)

  if listStroke and listStroke.Parent then
    listStroke.Color = tintColorForSlider_2
  end

  if eggListStroke and eggListStroke.Parent then
    eggListStroke.Color = tintColorForSlider_2
  end

  for index22, value30 in ipairs(dropdownOptionButtonsList) do
    if value30 and value30.Parent and not value30:GetAttribute("BoostKey")
      and not value30:GetAttribute("ChestKey") and not value30:GetAttribute("MSKey") then
      value30.BackgroundColor3 = C_CARD
      value30.TextColor3 = C_TEXT
    end
  end

  if refreshChestSelectOptions then
    refreshChestSelectOptions()
  end

  if refreshBoostSelectOptions then
    refreshBoostSelectOptions()
  end
end

function updateAllDynamicElementsColor()
  if MainFrame then
    MainFrame.BackgroundColor3 = C_BG
  end

  if Sidebar then
    Sidebar.BackgroundColor3 = C_SIDEBAR
  end

  if ProfileCard then
    ProfileCard.BackgroundColor3 = C_PROFILE
  end

  if cardsList then
    for index23, value31 in ipairs(cardsList) do
      if value31 and value31.Parent then
        value31.BackgroundColor3 = C_CARD
      end
    end
  end

  if containerFramesList then
    for index24, value32 in ipairs(containerFramesList) do
      if value32 and value32.Parent then
        value32.BackgroundColor3 = C_CONTAINERS
      end
    end
  end

  if sectionHeadersList then
    for index25, value33 in ipairs(sectionHeadersList) do
      if value33 and value33.Parent then
        value33.TextColor3 = C_SECTION_HEADER
      end
    end
  end

  if staticAccentButtonsList then
    for index26, value34 in ipairs(staticAccentButtonsList) do
      if value34 and value34.Parent then
        value34.BackgroundColor3 = C_BUTTON
      end
    end
  end

  if dropdownOptionButtonsList then
    for index27, value35 in ipairs(dropdownOptionButtonsList) do
      if value35 and value35.Parent and not value35:GetAttribute("BoostKey")
        and not value35:GetAttribute("ChestKey") and not value35:GetAttribute("MSKey") then
        value35.BackgroundColor3 = C_CARD
      end
    end
  end

  if refreshChestSelectOptions then
    refreshChestSelectOptions()
  end

  if refreshBoostSelectOptions then
    refreshBoostSelectOptions()
  end

  if sliderUiElementsList then
    for index28, value36 in ipairs(sliderUiElementsList) do
      if value36.frame and value36.frame.Parent then
        value36.frame.BackgroundColor3 = tintColorForSlider(C_SLIDER, -0.35)
      end

      if value36.fill and value36.fill.Parent then
        if value36.fill == pinataSliderFill and pinataCurrentDelay < 0.35 then
          value36.fill.BackgroundColor3 = C_DANGER
        else
          value36.fill.BackgroundColor3 = C_SLIDER
        end
      end
    end
  end

  if TabButtons then
    for key9, value37 in pairs(TabButtons) do
      if value37 and value37.Parent then
        if key9 == currentTab then
          value37.BackgroundColor3 = C_ACCENT
          value37.BackgroundTransparency = 0
          value37.TextColor3 = C_TEXT
        else
          value37.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
          value37.BackgroundTransparency = 1
          value37.TextColor3 = C_SUBTEXT
        end
      end
    end
  end

  if configButtonsMap then
    for key10, value38 in pairs(configButtonsMap) do
      if value38 and value38.Parent then
        value38.BackgroundColor3 = key10 == selectedConfigName and C_ACCENT
          or C_CONFIG_SELECTION
      end
    end
  end

  if presetButtonsMap then
    for key11, value39 in pairs(presetButtonsMap) do
      if value39 and value39.Parent then
        value39.BackgroundColor3 = key11 == selectedPresetName and C_ACCENT
          or C_PRESET_SELECTION
      end
    end
  end

  if giftDropdownBtn then
    giftDropdownBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
  end

  if colorPickerButtonsList then
    for index29, value40 in ipairs(colorPickerButtonsList) do
      if value40 and value40.Parent then
        value40.BackgroundColor3 = C_BUTTON
      end
    end
  end

  if fpsBtn and fpsBtn.Parent then
    if isCustomFPS then
      fpsBtn.BackgroundColor3 = C_DANGER
      fpsBtn.Text = "<b>FPS: " .. tostring(customFPS) .. "</b>"
    else
      fpsBtn.BackgroundColor3 = C_BUTTON
      fpsBtn.Text = "<b>FPS: Normal</b>"
    end
  end

  local tintColorForSlider_3 = tintColorForSlider(C_CONTAINERS, 0.08)

  if listStroke and listStroke.Parent then
    listStroke.Color = tintColorForSlider_3
  end

  if updateAutoLoadLabel then
    updateAutoLoadLabel()
  end
end

function createTab(p63, layoutOrder)
  local v329 = Tabs[p63]
  v329.Name = p63 .. "Tab"
  v329.Size = UDim2.new(1, 0, 1, 0)
  v329.BackgroundTransparency = 1
  v329.BorderSizePixel = 0
  v329.ScrollBarThickness = 4
  v329.CanvasSize = UDim2.new(0, 0, 0, 0)
  v329.Visible = false
  v329.Parent = ContentContainer

  local UIListLayout = Instance.new("UIListLayout", v329)
  UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
  UIListLayout.Padding = UDim.new(0, 8)

  UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v329.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 25)
  end)

  local TextButton = Instance.new("TextButton", NavContainer)
  TextButton.Name = p63 .. "Btn"
  TextButton.Size = UDim2.new(1, 0, 0, 30)
  TextButton.BackgroundColor3 = C_ACCENT
  TextButton.BackgroundTransparency = 1
  TextButton.Font = FONT_BOLD
  TextButton.RichText = true
  TextButton.Text = "<b>" .. (tabIcons[p63] or "") .. p63 .. "</b>"
  TextButton.TextColor3 = C_SUBTEXT
  TextButton.TextSize = 11
  TextButton.LayoutOrder = layoutOrder

  Instance.new("UICorner", TextButton).CornerRadius = UDim.new(0, 6)
  TabButtons[p63] = TextButton

  TextButton.MouseButton1Click:Connect(function()
    for key12, value41 in pairs(Tabs) do
      value41.Visible = key12 == p63
    end

    currentTab = p63
    updateActiveTabStyles(p63)
  end)
end

function updateActiveTabStyles(p64)
  for key13, value42 in pairs(TabButtons) do
    if key13 == p64 then
      value42.BackgroundColor3 = C_ACCENT
      value42.BackgroundTransparency = 0
      value42.TextColor3 = C_TEXT
    else
      value42.BackgroundColor3 = C_CARD
      value42.BackgroundTransparency = 1
      value42.TextColor3 = C_SUBTEXT
    end
  end
end

createTab("Dashboard", 1)
createTab("Automation", 2)
createTab("Squad", 3)
createTab("Minigames", 4)
createTab("Upgrades", 5)
createTab("Graphics", 6)
createTab("Settings", 7)

Tabs.Dashboard.Visible = true
updateActiveTabStyles("Dashboard")
cardsList = {}
toggleButtonsList = {}
multiSelectDropdownsList = {}

function createDescriptionLabel(p65, p66)
  local TextLabel_3 = Instance.new("TextLabel", p65)
  TextLabel_3.Size = UDim2.new(0.58, -10, 0, 34)
  TextLabel_3.Position = UDim2.new(0, 12, 0, 30)
  TextLabel_3.BackgroundTransparency = 1
  TextLabel_3.Font = FONT_MEDIUM
  TextLabel_3.RichText = true
  TextLabel_3.Text = "<b>" .. p66 .. "</b>"
  TextLabel_3.TextColor3 = C_SUBTEXT
  TextLabel_3.TextSize = 10
  TextLabel_3.TextWrapped = true
  TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_3.TextYAlignment = Enum.TextYAlignment.Center

  return TextLabel_3
end

function createCard(p67, p68, p69)
  local Frame_2 = Instance.new("Frame", p67)
  Frame_2.Size = UDim2.new(1, 0, 0, p69 or 74)
  Frame_2.BackgroundColor3 = C_CARD
  Frame_2.BorderSizePixel = 0

  Instance.new("UICorner", Frame_2).CornerRadius = UDim.new(0, 8)
  table.insert(cardsList, Frame_2)

  local TextLabel_4 = Instance.new("TextLabel", Frame_2)
  TextLabel_4.Size = UDim2.new(1, -20, 0, 20)
  TextLabel_4.Position = UDim2.new(0, 12, 0, 8)
  TextLabel_4.BackgroundTransparency = 1
  TextLabel_4.Font = FONT_BOLD
  TextLabel_4.RichText = true
  TextLabel_4.Text = "<b>" .. p68 .. "</b>"
  TextLabel_4.TextColor3 = C_TEXT
  TextLabel_4.TextSize = 11
  TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

  return Frame_2
end

function createToggleCard(p70, p71, p72, p73, p74)
  local createCard_2 = createCard(p70, p71, 72)
  createDescriptionLabel(createCard_2, p72 or "")

  local TextButton_2 = Instance.new("TextButton", createCard_2)
  TextButton_2.Size = UDim2.new(0.35, 0, 0, 28)
  TextButton_2.Position = UDim2.new(0.62, 0, 0, 30)
  TextButton_2.Font = FONT_BOLD
  TextButton_2.RichText = true
  TextButton_2.TextColor3 = C_TEXT
  TextButton_2.TextSize = 11

  Instance.new("UICorner", TextButton_2).CornerRadius = UDim.new(0, 6)

  local function f6()
    local v331 = false

    if type(p73) == "function" then
      local v332, v333 = pcall(p73)
      v331 = v332 and v333 and true or false
    end

    TextButton_2.Text = v331 and "<b>ENABLED</b>" or "<b>DISABLED</b>"
    TextButton_2.BackgroundColor3 = v331 and C_SUCCESS or C_DANGER
  end

  f6()

  TextButton_2.MouseButton1Click:Connect(function()
    if type(p73) == "function" then
      pcall(p73)
    end

    f6()
  end)

  table.insert(toggleButtonsList, { btn = TextButton_2, getState = p73, sync = f6 })
  return createCard_2, TextButton_2, f6
end

function createMultiSelectDropdown(p75, p76, p77, p78, p79, p80)
  local P78 = p78
  local P79 = p79
  P78 = P78 or {}
  P79 = P79 or {}
  local createCard_3 = createCard(p75, p76, 72)
  createDescriptionLabel(createCard_3, p77 or "")

  local TextButton_3 = Instance.new("TextButton", createCard_3)
  TextButton_3.Size = UDim2.new(0.35, 0, 0, 28)
  TextButton_3.Position = UDim2.new(0.62, 0, 0, 30)
  TextButton_3.BackgroundColor3 = C_DROPDOWN_BUTTON
  TextButton_3.Font = FONT_MEDIUM
  TextButton_3.RichText = true
  TextButton_3.Text = "<b>Select ▼</b>"
  TextButton_3.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  TextButton_3.TextSize = 10

  Instance.new("UICorner", TextButton_3).CornerRadius = UDim.new(0, 6)

  local Frame_3 = Instance.new("Frame", createCard_3)
  Frame_3.Size = UDim2.new(1, -24, 0, 0)
  Frame_3.Position = UDim2.new(0, 12, 0, 68)
  Frame_3.BackgroundColor3 = C_CONTAINERS
  Frame_3.BorderSizePixel = 0
  Frame_3.Visible = false
  Frame_3.ZIndex = 20
  Frame_3.ClipsDescendants = true

  Instance.new("UICorner", Frame_3).CornerRadius = UDim.new(0, 8)
  table.insert(containerFramesList, Frame_3)

  local UIStroke_2 = Instance.new("UIStroke", Frame_3)
  UIStroke_2.Color = tintColorForSlider(C_CONTAINERS, 0.08)
  UIStroke_2.Thickness = 1

  local UIListLayout_2 = Instance.new("UIListLayout", Frame_3)
  UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
  UIListLayout_2.Padding = UDim.new(0, 3)

  local UIPadding = Instance.new("UIPadding", Frame_3)
  UIPadding.PaddingTop = UDim.new(0, 6)
  UIPadding.PaddingBottom = UDim.new(0, 6)
  UIPadding.PaddingLeft = UDim.new(0, 6)
  UIPadding.PaddingRight = UDim.new(0, 6)

  local v337 = false
  local Max = #P78 * 26 + math.max(0, #P78 - 1) * 3 + 12
  local v339 = 72 + Max

  local function f7()
    local v340 = 0
    local label

    for index30, value43 in ipairs(P78) do
      if P79[value43.key] then
        v340 = v340 + 1
        label = value43.label
      end
    end

    return v340, label
  end

  local function f8(p81)
    local v341 = p81 and "▲" or "▼"
    local v342, v343 = f7()

    if v342 == 0 then
      TextButton_3.Text = "<b>Select " .. v341 .. "</b>"
    elseif v342 == 1 then
      TextButton_3.Text = "<b>" .. tostring(v343) .. " " .. v341 .. "</b>"
    else
      TextButton_3.Text = "<b>" .. v342 .. " selected " .. v341 .. "</b>"
    end

    TextButton_3.BackgroundColor3 = C_DROPDOWN_BUTTON
    TextButton_3.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  end

  local function f9()
    for index31, value44 in ipairs(Frame_3:GetChildren()) do
      if value44:IsA("TextButton") then
        local Value = value44:GetAttribute("MSKey")
        local Value_2 = value44:GetAttribute("MSLabel") or Value

        if Value then
          if P79[Value] then
            value44.BackgroundColor3 = C_ACCENT
            value44.Text = "<b>✓ " .. Value_2 .. "</b>"
          else
            value44.BackgroundColor3 = C_CARD
            value44.Text = "<b>" .. Value_2 .. "</b>"
          end

          value44.TextColor3 = C_TEXT
        end
      end
    end
  end

  local function f10(p82)
    v337 = p82

    if v337 then
      createCard_3.Size = UDim2.new(1, 0, 0, v339)

      Frame_3.Size = UDim2.new(1, -24, 0, Max)
      Frame_3.Visible = true

      f9()
      f8(true)
    else
      createCard_3.Size = UDim2.new(1, 0, 0, 72)

      Frame_3.Size = UDim2.new(1, -24, 0, 0)
      Frame_3.Visible = false

      f8(false)
    end
  end

  for index32, value45 in ipairs(P78) do
    local label2 = value45.label
    local key14 = value45.key

    local TextButton_4 = Instance.new("TextButton", Frame_3)
    TextButton_4.Size = UDim2.new(1, 0, 0, 26)
    TextButton_4.BackgroundColor3 = P79[key14] and C_ACCENT or C_CARD
    TextButton_4.Font = FONT_MEDIUM
    TextButton_4.RichText = true
    TextButton_4.Text = P79[key14] and "<b>✓ " .. label2 .. "</b>" or "<b>" .. label2 .. "</b>"
    TextButton_4.TextColor3 = C_TEXT
    TextButton_4.TextSize = 12
    TextButton_4.TextXAlignment = Enum.TextXAlignment.Left
    TextButton_4.ZIndex = 21
    TextButton_4:SetAttribute("MSKey", key14)
    TextButton_4:SetAttribute("MSLabel", label2)

    Instance.new("UICorner", TextButton_4).CornerRadius = UDim.new(0, 6)
    table.insert(dropdownOptionButtonsList, TextButton_4)
    Instance.new("UIPadding", TextButton_4).PaddingLeft = UDim.new(0, 12)

    TextButton_4.MouseEnter:Connect(function()
      if not TextButton_4.Parent then
        return
      end

      if P79[key14] then
        TextButton_4.BackgroundColor3 = tintColorForSlider(C_ACCENT, 0.12)
      else
        TextButton_4.BackgroundColor3 = tintColorForSlider(C_DROPDOWN_BUTTON, 0.06)
      end
    end)

    TextButton_4.MouseLeave:Connect(function()
      if not TextButton_4.Parent then
        return
      end

      if P79[key14] then
        TextButton_4.BackgroundColor3 = C_ACCENT
        TextButton_4.Text = "<b>✓ " .. label2 .. "</b>"
      else
        TextButton_4.BackgroundColor3 = C_CARD
        TextButton_4.Text = "<b>" .. label2 .. "</b>"
      end
    end)

    TextButton_4.MouseButton1Click:Connect(function()
      P79[key14] = not P79[key14]
      f9()
      f8(true)
    end)
  end

  f8(false)
  TextButton_3.MouseButton1Click:Connect(function() f10(not v337) end)

  local v344 = {
    card = createCard_3,
    button = TextButton_3,
    list = Frame_3,
    stroke = UIStroke_2,
    selectedMap = P79,
    items = P78,
    refresh = f9,
    updateText = f8,
    applyTheme = function()
      TextButton_3.BackgroundColor3 = C_DROPDOWN_BUTTON
      TextButton_3.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)

      Frame_3.BackgroundColor3 = C_CONTAINERS
      UIStroke_2.Color = tintColorForSlider(C_CONTAINERS, 0.08)
      f9()
      f8(v337)
    end,
  }

  table.insert(multiSelectDropdownsList, v344)
  return createCard_3, TextButton_3, v344
end

statsCard = createCard(Tabs.Dashboard, "LIVE SESSION STATS", 82)

gridContainer = Instance.new("Frame", statsCard)
gridContainer.Size = UDim2.new(1, -24, 0, 40)
gridContainer.Position = UDim2.new(0, 12, 0, 32)
gridContainer.BackgroundTransparency = 1

gridLayout = Instance.new("UIGridLayout", gridContainer)
gridLayout.CellSize = UDim2.new(0.235, 0, 1, 0)
gridLayout.CellPadding = UDim2.new(0.02, 0, 0, 0)
gridLayout.SortOrder = Enum.SortOrder.LayoutOrder

function createStatBox(p83, p84, layoutOrder2)
  local Frame_4 = Instance.new("Frame", p83)
  Frame_4.BackgroundColor3 = C_DASHBOARD_LIVE
  Frame_4.BorderSizePixel = 0
  Frame_4.LayoutOrder = layoutOrder2

  Instance.new("UICorner", Frame_4).CornerRadius = UDim.new(0, 6)
  table.insert(dashboardLiveBoxesList, Frame_4)

  local TextLabel_5 = Instance.new("TextLabel", Frame_4)
  TextLabel_5.Size = UDim2.new(1, 0, 0, 14)
  TextLabel_5.Position = UDim2.new(0, 0, 0, 4)
  TextLabel_5.BackgroundTransparency = 1
  TextLabel_5.Font = FONT_BOLD
  TextLabel_5.RichText = true
  TextLabel_5.Text = "<b>" .. string.upper(p84) .. "</b>"
  TextLabel_5.TextColor3 = C_SUBTEXT
  TextLabel_5.TextSize = 9

  local TextLabel_6 = Instance.new("TextLabel", Frame_4)
  TextLabel_6.Size = UDim2.new(1, 0, 0, 16)
  TextLabel_6.Position = UDim2.new(0, 0, 0, 18)
  TextLabel_6.BackgroundTransparency = 1
  TextLabel_6.Font = FONT_BOLD
  TextLabel_6.RichText = true
  TextLabel_6.Text = "<b>--</b>"
  TextLabel_6.TextColor3 = C_TEXT
  TextLabel_6.TextSize = 11

  return TextLabel_6
end

fpsVal = createStatBox(gridContainer, "FPS", 1)
pingVal = createStatBox(gridContainer, "PING", 2)
uptimeVal = createStatBox(gridContainer, "UPTIME", 3)
memVal = createStatBox(gridContainer, "MEMORY", 4)
startTime = os.time()

task.spawn(function()
  while scriptRunning do
    pcall(function()
      local Elapsed = RunService.RenderStepped:Wait()
      local MathFloor_3 = math.floor(1 / Elapsed)
      local MathFloor_4 = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
      local MathFloor_5 = math.floor(Stats:GetTotalMemoryUsageMb())
      local OsTime = os.time() - startTime
      local MathFloor_6 = math.floor(OsTime / 3600)
      local MathFloor_7 = math.floor(OsTime % 3600 / 60)
      local StringFormat = string.format("%02d:%02d:%02d", MathFloor_6, MathFloor_7, OsTime % 60)
      fpsVal.Text = "<b>" .. tostring(MathFloor_3) .. "</b>"
      pingVal.Text = "<b>" .. MathFloor_4 .. " ms</b>"
      uptimeVal.Text = "<b>" .. StringFormat .. "</b>"
      memVal.Text = "<b>" .. MathFloor_5 .. " MB</b>"
    end)

    task.wait(1)
  end
end)

afkCard = createCard(Tabs.Dashboard, "🛡️ ANTI-AFK SYSTEM", 72)

afkStatusLabel = Instance.new("TextLabel", afkCard)
afkStatusLabel.Size = UDim2.new(0.58, -10, 0, 30)
afkStatusLabel.Position = UDim2.new(0, 12, 0, 30)
afkStatusLabel.BackgroundTransparency = 1
afkStatusLabel.Font = FONT_BOLD
afkStatusLabel.RichText = true
afkStatusLabel.Text = "<b>Status: Active</b>"
afkStatusLabel.TextColor3 = C_SUCCESS
afkStatusLabel.TextSize = 11
afkStatusLabel.TextXAlignment = Enum.TextXAlignment.Left

afkBtn = Instance.new("TextButton", afkCard)
afkBtn.Size = UDim2.new(0.35, 0, 0, 28)
afkBtn.Position = UDim2.new(0.62, 0, 0, 30)
afkBtn.BackgroundColor3 = C_DANGER
afkBtn.Font = FONT_BOLD
afkBtn.RichText = true
afkBtn.Text = "<b>DISABLED</b>"
afkBtn.TextColor3 = C_TEXT
afkBtn.TextSize = 11

Instance.new("UICorner", afkBtn).CornerRadius = UDim.new(0, 6)

afkBtn.MouseButton1Click:Connect(function()
  antiAfkEnabled = not antiAfkEnabled

  if antiAfkEnabled then
    afkBtn.Text = "<b>ENABLED</b>"
    afkBtn.BackgroundColor3 = C_SUCCESS

    afkStatusLabel.Text = "<b>Status: Active</b>"
    afkStatusLabel.TextColor3 = C_SUCCESS
  else
    afkBtn.Text = "<b>DISABLED</b>"
    afkBtn.BackgroundColor3 = C_DANGER

    afkStatusLabel.Text = "<b>Status: Disabled</b>"
    afkStatusLabel.TextColor3 = C_DANGER
  end
end)

fpsCard = createCard(Tabs.Dashboard, "⏱️ FPS LIMITER", 72)

fpsBtn = Instance.new("TextButton", fpsCard)
fpsBtn.Size = UDim2.new(0.48, -5, 0, 28)
fpsBtn.Position = UDim2.new(0, 12, 0, 32)
fpsBtn.BackgroundColor3 = C_BUTTON
fpsBtn.Font = FONT_BOLD
fpsBtn.RichText = true
fpsBtn.Text = "<b>FPS: Normal</b>"
fpsBtn.TextColor3 = C_TEXT
fpsBtn.TextSize = 11

Instance.new("UICorner", fpsBtn).CornerRadius = UDim.new(0, 6)

fpsInput = Instance.new("TextBox", fpsCard)
fpsInput.Size = UDim2.new(0.48, -5, 0, 28)
fpsInput.Position = UDim2.new(0.5, 0, 0, 32)
fpsInput.BackgroundColor3 = C_STATBOX
fpsInput.Font = FONT_BOLD
fpsInput.Text = "1"
fpsInput.PlaceholderText = "Custom FPS"
fpsInput.TextColor3 = C_TEXT
fpsInput.TextSize = 11
fpsInput.ClipsDescendants = true

Instance.new("UICorner", fpsInput).CornerRadius = UDim.new(0, 6)

function createSectionHeader(p85, p86)
  local TextLabel_7 = Instance.new("TextLabel", p85)
  TextLabel_7.Size = UDim2.new(1, 0, 0, 22)
  TextLabel_7.BackgroundTransparency = 1
  TextLabel_7.Font = FONT_BOLD
  TextLabel_7.RichText = true
  TextLabel_7.Text = "<b>" .. p86 .. "</b>"
  TextLabel_7.TextColor3 = C_SECTION_HEADER
  TextLabel_7.TextSize = 11
  TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left

  table.insert(sectionHeadersList, TextLabel_7)
  return TextLabel_7
end

createSectionHeader(Tabs.Automation, "Coin Arcade Automation")

local v352

eventCard, v352 = createToggleCard(
  Tabs.Automation, "🎉 AUTO JOIN COIN ARCADE EVENT",
  "Joins the Coin Arcade event when available.", function() return autoJoinEventEnabled end,
  function(p87) autoJoinEventEnabled = p87 end
)

eventBtn = v352

autoGiftMachineCard, autoGiftMachineBtn = createToggleCard(Tabs.Automation, "🎁 AUTO GIFT MACHINE", "Crafts Arcade Gifts from Invaders.", function()
  return autoGiftMachineEnabled
end, function(p88)
  autoGiftMachineEnabled = p88

  if p88 then
    startAutoGiftMachineLoop()
  elseif autoGiftMachineLoopThread then
    autoGiftMachineLoopThread = nil
  end
end)

local v353

freeGiftsCard, v353 = createToggleCard(Tabs.Automation, "🎁 AUTO FREE GIFTS", "Claims free gifts when ready.", function() return autoFreeGiftsActive end, function(p89)
  autoFreeGiftsActive = p89

  if p89 then
    task.spawn(autoCollectFreeGifts)
  end
end)

freeGiftsBtn = v353
local v354

giftsCard, v354 = createToggleCard(Tabs.Automation, "🎁 AUTO OPEN GIFTS", "Automatically opens selected gifts.", function() return autoGiftsActive end, function(p90)
  autoGiftsActive = p90

  if p90 then
    task.spawn(autoCollectGifts)
  end
end)

giftsBtn = v354
dropdownCard = createCard(Tabs.Automation, "📦 SELECT GIFT TYPE", 72)
createDescriptionLabel(dropdownCard, "Select gift type for Auto Open Gifts.")

giftDropdownBtn = Instance.new("TextButton", dropdownCard)
giftDropdownBtn.Size = UDim2.new(0.35, 0, 0, 28)
giftDropdownBtn.Position = UDim2.new(0.62, 0, 0, 30)
giftDropdownBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
giftDropdownBtn.Font = FONT_MEDIUM
giftDropdownBtn.RichText = true
giftDropdownBtn.Text = "<b>Select ▼</b>"
giftDropdownBtn.TextColor3 = C_TEXT
giftDropdownBtn.TextSize = 10

Instance.new("UICorner", giftDropdownBtn).CornerRadius = UDim.new(0, 6)

giftDropdownList = Instance.new("Frame", dropdownCard)
giftDropdownList.Size = UDim2.new(1, -24, 0, 0)
giftDropdownList.Position = UDim2.new(0, 12, 0, 68)
giftDropdownList.BackgroundColor3 = C_CONTAINERS
giftDropdownList.BorderSizePixel = 0
giftDropdownList.Visible = false
giftDropdownList.ZIndex = 20
giftDropdownList.ClipsDescendants = true

Instance.new("UICorner", giftDropdownList).CornerRadius = UDim.new(0, 8)

listStroke = Instance.new("UIStroke", giftDropdownList)
listStroke.Color = tintColorForSlider(C_CONTAINERS, 0.08)
listStroke.Thickness = 1

giftListLayout = Instance.new("UIListLayout", giftDropdownList)
giftListLayout.SortOrder = Enum.SortOrder.LayoutOrder
giftListLayout.Padding = UDim.new(0, 3)

listPadding = Instance.new("UIPadding", giftDropdownList)
listPadding.PaddingTop = UDim.new(0, 6)
listPadding.PaddingBottom = UDim.new(0, 6)
listPadding.PaddingLeft = UDim.new(0, 6)
listPadding.PaddingRight = UDim.new(0, 6)

isDropdownOpen = false
closedHeight = 72
itemHeight = 26
itemSpacing = 3
listPaddingTop = 6
listPaddingBottom = 6

dropdownListHeight = #availableGifts * itemHeight
  + math.max(0, #availableGifts - 1) * itemSpacing + listPaddingTop + listPaddingBottom

openHeight = closedHeight + dropdownListHeight

function toggleDropdown()
  isDropdownOpen = not isDropdownOpen

  if isDropdownOpen then
    dropdownCard.Size = UDim2.new(1, 0, 0, openHeight)

    giftDropdownList.Size = UDim2.new(1, -24, 0, dropdownListHeight)
    giftDropdownList.Visible = true

    giftDropdownBtn.Text = "<b>Select ▲</b>"
  else
    dropdownCard.Size = UDim2.new(1, 0, 0, closedHeight)

    giftDropdownList.Size = UDim2.new(1, -24, 0, 0)
    giftDropdownList.Visible = false

    if selectedGiftType then
      giftDropdownBtn.Text = "<b>" .. selectedGiftType .. " ▼</b>"
    else
      giftDropdownBtn.Text = "<b>Select ▼</b>"
    end
  end

  applyDropdownThemeColors()
end

for index33, value46 in ipairs(availableGifts) do
  local Value46 = value46

  local TextButton_5 = Instance.new("TextButton", giftDropdownList)
  TextButton_5.Size = UDim2.new(1, 0, 0, 26)
  TextButton_5.BackgroundColor3 = C_CARD
  TextButton_5.Font = FONT_MEDIUM
  TextButton_5.RichText = true
  TextButton_5.Text = "<b>" .. Value46 .. "</b>"
  TextButton_5.TextColor3 = C_TEXT
  TextButton_5.TextSize = 12
  TextButton_5.TextXAlignment = Enum.TextXAlignment.Left
  TextButton_5.ZIndex = 21
  TextButton_5:SetAttribute("GiftName", Value46)

  Instance.new("UICorner", TextButton_5).CornerRadius = UDim.new(0, 6)
  table.insert(dropdownOptionButtonsList, TextButton_5)
  Instance.new("UIPadding", TextButton_5).PaddingLeft = UDim.new(0, 12)

  TextButton_5.MouseEnter:Connect(function()
    if TextButton_5 and TextButton_5.Parent then
      TextButton_5.BackgroundColor3 = tintColorForSlider(C_DROPDOWN_BUTTON, 0.06)
    end
  end)

  TextButton_5.MouseLeave:Connect(function()
    if TextButton_5 and TextButton_5.Parent then
      TextButton_5.BackgroundColor3 = C_CARD
    end
  end)

  TextButton_5.MouseButton1Click:Connect(function()
    selectedGiftType = Value46

    if giftDropdownBtn and giftDropdownBtn.Parent then
      giftDropdownBtn.Text = "<b>" .. Value46 .. " ▼</b>"
    end

    isDropdownOpen = false
    dropdownCard.Size = UDim2.new(1, 0, 0, closedHeight)

    if giftDropdownList and giftDropdownList.Parent then
      giftDropdownList.Visible = false
      giftDropdownList.Size = UDim2.new(1, -24, 0, 0)
    end

    applyDropdownThemeColors()
  end)
end

applyDropdownThemeColors()
giftDropdownBtn.MouseButton1Click:Connect(function() toggleDropdown() end)
createSectionHeader(Tabs.Automation, "Coin Arcade Boosts")
local v356

arcadeBoostCard, v356 = createToggleCard(Tabs.Automation, "⚡ AUTO ARCADE BOOSTS", "Uses Coin Arcade boosts automatically.", function() return autoArcadeBoostEnabled end, function(p91)
  autoArcadeBoostEnabled = p91

  if p91 then
    startAutoArcadeBoostLoop()
  elseif autoArcadeBoostLoopThread then
    autoArcadeBoostLoopThread = nil
  end
end)

arcadeBoostBtn = v356
arcadeBoostPriorityCard = createCard(Tabs.Automation, "📊 BOOST PRIORITY", 72)

createDescriptionLabel(
  arcadeBoostPriorityCard, "Lowest = small tier first. Highest = big tier first."
)

arcadeBoostPriorityBtn = Instance.new("TextButton", arcadeBoostPriorityCard)
arcadeBoostPriorityBtn.Size = UDim2.new(0.35, 0, 0, 28)
arcadeBoostPriorityBtn.Position = UDim2.new(0.62, 0, 0, 30)
arcadeBoostPriorityBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
arcadeBoostPriorityBtn.Font = FONT_BOLD
arcadeBoostPriorityBtn.RichText = true

local ArcadeBoostPriorityBtn_2 = arcadeBoostPriorityBtn
ArcadeBoostPriorityBtn_2.Text = "<b>" .. tostring(autoArcadeBoostPriority or "Lowest") .. " ▼</b>"

arcadeBoostPriorityBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
arcadeBoostPriorityBtn.TextSize = 10

Instance.new("UICorner", arcadeBoostPriorityBtn).CornerRadius = UDim.new(0, 6)

arcadeBoostPriorityBtn.MouseButton1Click:Connect(function()
  if autoArcadeBoostPriority == "Lowest" then
    autoArcadeBoostPriority = "Highest"
  else
    autoArcadeBoostPriority = "Lowest"
  end

  arcadeBoostPriorityBtn.Text = "<b>" .. autoArcadeBoostPriority .. " ▼</b>"
  arcadeBoostPriorityBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
  arcadeBoostPriorityBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
end)

createMultiSelectDropdown(Tabs.Automation, "🎯 SELECT ARCADE BOOSTS", "Choose which arcade boosts to use.", {
  { key = "Luck", label = "Arcade Luck Boost" }, { key = "Coins", label = "Arcade Coin Boost" },
  { key = "Xp", label = "Arcade XP Boost" },
}, autoArcadeBoostSelected, function() end)

createSectionHeader(Tabs.Automation, "Coin Arcade Boost Machine")
local v358

autoBoostMachineCard, v358 = createToggleCard(Tabs.Automation, "🎰 AUTO USE BOOST MACHINE", "Auto-renew selected machine boosts.", function() return autoBoostMachineEnabled end, function(p92)
  autoBoostMachineEnabled = p92

  if p92 then
    startAutoBoostMachineLoop()
  elseif autoBoostMachineLoopThread then
    autoBoostMachineLoopThread = nil
  end
end)

autoBoostMachineBtn = v358
tokenSpendCard = createCard(Tabs.Automation, "📊 TOKEN ALLOCATION", 72)
createDescriptionLabel(tokenSpendCard, "Set token allocation limit.")

tokenSpendBtn = Instance.new("TextButton", tokenSpendCard)
tokenSpendBtn.Size = UDim2.new(0.35, 0, 0, 28)
tokenSpendBtn.Position = UDim2.new(0.62, 0, 0, 30)
tokenSpendBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
tokenSpendBtn.Font = FONT_BOLD
tokenSpendBtn.RichText = true
tokenSpendBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
tokenSpendBtn.TextSize = 10

Instance.new("UICorner", tokenSpendBtn).CornerRadius = UDim.new(0, 6)
local v359 = { Third = "1/3 Tokens", TwoThirds = "2/3 Tokens", Max = "MAX Tokens" }

local function f11()
  tokenSpendBtn.Text = "<b>" .. v359[autoBoostMachineFraction] .. " ▼</b>"
end

local v360 = { "Third", "TwoThirds", "Max" }

tokenSpendBtn.MouseButton1Click:Connect(function()
  local v361 = 1

  for index34, value47 in ipairs(v360) do
    if value47 == autoBoostMachineFraction then
      v361 = index34
      break
    end
  end

  autoBoostMachineFraction = v360[v361 % #v360 + 1]
  f11()
end)

f11()

createMultiSelectDropdown(Tabs.Automation, "🎯 SELECT MACHINE BOOST TARGETS", "Select targets for auto-renewal.", {
  { key = "Coins", label = "2x Arcade Coins" }, { key = "Xp", label = "2x Arcade XP" },
  { key = "Luck", label = "+25% Arcade Merchant Luck" },
}, autoBoostMachineSelected, function() end)

createSectionHeader(Tabs.Automation, "Collect Zones")
local v362

zoneLootCard, v362 = createToggleCard(Tabs.Automation, "🗺️ AUTO COLLECT ZONE LOOT", "Collects loot from unlocked zones automatically.", function() return autoZoneLootEnabled end, function(p93)
  autoZoneLootEnabled = p93

  if p93 then
    startAutoZoneLootLoop()
  elseif autoZoneLootLoopThread then
    autoZoneLootLoopThread = nil
  end
end)

zoneLootBtn = v362
zoneLootIntervalMin = 15
zoneLootIntervalMax = 300

if not autoZoneLootInterval then
  autoZoneLootInterval = 60
end

autoZoneLootInterval = math.clamp(
  tonumber(autoZoneLootInterval) or 60, zoneLootIntervalMin, zoneLootIntervalMax
)

zoneLootIntervalCard = createCard(Tabs.Automation, "⏱️ COLLECT INTERVAL", 130)

zoneLootIntervalLabel = Instance.new("TextLabel", zoneLootIntervalCard)
zoneLootIntervalLabel.Size = UDim2.new(1, -24, 0, 18)
zoneLootIntervalLabel.Position = UDim2.new(0, 12, 0, 26)
zoneLootIntervalLabel.BackgroundTransparency = 1
zoneLootIntervalLabel.Font = FONT_BOLD
zoneLootIntervalLabel.RichText = true
zoneLootIntervalLabel.Text = string.format("<b>Every: %ds</b>", autoZoneLootInterval)
zoneLootIntervalLabel.TextColor3 = C_TEXT
zoneLootIntervalLabel.TextSize = 10
zoneLootIntervalLabel.TextXAlignment = Enum.TextXAlignment.Left

zoneLootSliderFrame = Instance.new("Frame", zoneLootIntervalCard)
zoneLootSliderFrame.Size = UDim2.new(1, -24, 0, 12)
zoneLootSliderFrame.Position = UDim2.new(0, 12, 0, 50)
zoneLootSliderFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
zoneLootSliderFrame.BorderSizePixel = 0

Instance.new("UICorner", zoneLootSliderFrame).CornerRadius = UDim.new(0, 4)

zoneLootSliderFill = Instance.new("Frame", zoneLootSliderFrame)

zoneLootSliderFill.Size = UDim2.new((autoZoneLootInterval - zoneLootIntervalMin)
  / (zoneLootIntervalMax - zoneLootIntervalMin), 0, 1, 0)

local ZoneLootSliderFill_2 = zoneLootSliderFill
ZoneLootSliderFill_2.BackgroundColor3 = C_SLIDER or C_ACCENT

zoneLootSliderFill.BorderSizePixel = 0
Instance.new("UICorner", zoneLootSliderFill).CornerRadius = UDim.new(0, 4)
zoneLootSliderDragging = false

function updateZoneLootSlider(p94)
  local MathClamp_3 = math.clamp((p94.Position.X - zoneLootSliderFrame.AbsolutePosition.X)
    / zoneLootSliderFrame.AbsoluteSize.X, 0, 1)

  zoneLootSliderFill.Size = UDim2.new(MathClamp_3, 0, 1, 0)

  autoZoneLootInterval = math.floor(zoneLootIntervalMin
    + MathClamp_3 * (zoneLootIntervalMax - zoneLootIntervalMin) + 0.5)

  zoneLootIntervalLabel.Text = string.format("<b>Every: %ds</b>", autoZoneLootInterval)

  local ZoneLootSliderFill_3 = zoneLootSliderFill
  ZoneLootSliderFill_3.BackgroundColor3 = C_SLIDER or C_ACCENT
end

zoneLootSliderFrame.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then
    zoneLootSliderDragging = true
    updateZoneLootSlider(input)
  end
end)

UserInputService.InputEnded:Connect(function(input2)
  if input2.UserInputType == Enum.UserInputType.MouseButton1
    or input2.UserInputType == Enum.UserInputType.Touch then
    zoneLootSliderDragging = false
  end
end)

UserInputService.InputChanged:Connect(function(input3)
  if zoneLootSliderDragging
    and (input3.UserInputType == Enum.UserInputType.MouseMovement
      or input3.UserInputType == Enum.UserInputType.Touch) then
    updateZoneLootSlider(input3)
  end
end)

zoneLootNowBtn = Instance.new("TextButton", zoneLootIntervalCard)
zoneLootNowBtn.Size = UDim2.new(1, -24, 0, 28)
zoneLootNowBtn.Position = UDim2.new(0, 12, 0, 72)
zoneLootNowBtn.BackgroundColor3 = C_BUTTON
zoneLootNowBtn.Font = FONT_BOLD
zoneLootNowBtn.RichText = true
zoneLootNowBtn.Text = "<b>COLLECT ALL ZONES NOW</b>"
zoneLootNowBtn.TextColor3 = C_TEXT
zoneLootNowBtn.TextSize = 10

Instance.new("UICorner", zoneLootNowBtn).CornerRadius = UDim.new(0, 6)

zoneLootNowBtn.MouseButton1Click:Connect(function()
  task.spawn(function()
    zoneLootNowBtn.Text = "<b>COLLECTING...</b>"
    zoneLootNowBtn.BackgroundColor3 = C_SUCCESS

    if sendNotification then
      sendNotification("Zone Loot", "Manual collect: " .. tostring(0) .. " zone(s)", 3)
    end

    zoneLootNowBtn.Text = "<b>COLLECT ALL ZONES NOW</b>"
    zoneLootNowBtn.BackgroundColor3 = C_BUTTON
  end)
end)

createSectionHeader(Tabs.Squad, "Squad Optimization")
local v366 = "Optimize for Boss"
local v367

autoOptimizePetsCard, v367 = createToggleCard(Tabs.Squad, "🔄 AUTO SQUAD OPTIMIZE", "Re-sorts squad by DPS every 60s when inventory changes.", function() return autoOptimizePetsEnabled end, function(p95)
  autoOptimizePetsEnabled = p95

  if p95 then
    startAutoOptimizePetsLoop()
  elseif autoOptimizePetsLoopThread then
    autoOptimizePetsLoopThread = nil
  end
end)

autoOptimizePetsBtn = v367
squadModeCard = createCard(Tabs.Squad, "🎯 SQUAD PRIORITY", 72)
createDescriptionLabel(squadModeCard, "Boss-first or zones-first placement.")

squadModeBtn = Instance.new("TextButton", squadModeCard)
squadModeBtn.Size = UDim2.new(0.35, 0, 0, 28)
squadModeBtn.Position = UDim2.new(0.62, 0, 0, 30)
squadModeBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
squadModeBtn.Font = FONT_BOLD
squadModeBtn.RichText = true
squadModeBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
squadModeBtn.TextSize = 10

Instance.new("UICorner", squadModeBtn).CornerRadius = UDim.new(0, 6)

local function f12()
  squadModeBtn.Text = "<b>" .. v366 .. " ▼</b>"
end

squadModeBtn.MouseButton1Click:Connect(function()
  if v366 == "Optimize for Boss" then
    v366 = "Optimize for Zones"
  else
    v366 = "Optimize for Boss"
  end

  f12()
end)

f12()

optimizePetsSimpleCard = Instance.new("Frame", Tabs.Squad)
optimizePetsSimpleCard.Size = UDim2.new(1, 0, 0, 42)
optimizePetsSimpleCard.BackgroundColor3 = C_CARD
optimizePetsSimpleCard.BorderSizePixel = 0

Instance.new("UICorner", optimizePetsSimpleCard).CornerRadius = UDim.new(0, 8)

optimizePetsBtn = Instance.new("TextButton", optimizePetsSimpleCard)
optimizePetsBtn.Size = UDim2.new(1, -24, 0, 28)
optimizePetsBtn.Position = UDim2.new(0, 12, 0, 7)
optimizePetsBtn.BackgroundColor3 = C_BUTTON
optimizePetsBtn.Font = FONT_BOLD
optimizePetsBtn.RichText = true
optimizePetsBtn.Text = "<b>Optimize Squad</b>"
optimizePetsBtn.TextColor3 = C_TEXT
optimizePetsBtn.TextSize = 11

Instance.new("UICorner", optimizePetsBtn).CornerRadius = UDim.new(0, 6)

optimizePetsBtn.MouseButton1Click:Connect(function()
  task.spawn(function()
    if squadOptimizeBusy then
      if sendNotification then
        sendNotification("Squad", "Busy...", 2)
      end

      return
    else
      optimizePetsBtn.Text = "<b>Working...</b>"
      optimizePetsBtn.BackgroundColor3 = C_SUCCESS

      local total2 = 0

      while squadOptimizeBusy and total2 < 120 and scriptRunning do
        task.wait(0.25)
        total2 = total2 + 0.25
      end

      optimizePetsBtn.Text = "<b>Optimize Squad</b>"
      optimizePetsBtn.BackgroundColor3 = C_BUTTON

      return
    end
  end)
end)

createSectionHeader(Tabs.Squad, "Auto Unlocks")

autoUnlockMerchantCard, autoUnlockMerchantBtn = createToggleCard(Tabs.Squad, "🧮 AUTO UNLOCK MERCHANTS", "Unlocks the next merchant when affordable.", function()
  return autoUnlockMerchantsActive
end, function(p96)
  autoUnlockMerchantsActive = p96

  if p96 then
    startAutoUnlockLoop()
  elseif not autoUnlockMerchantsActive and not autoUnlockZonesActive and autoUnlockLoopThread then
    autoUnlockLoopThread = nil
  end
end)

local v368

autoUnlockZoneCard, v368 = createToggleCard(Tabs.Squad, "🔓 AUTO UNLOCK ZONES", "Unlocks the next zone when affordable.", function() return autoUnlockZonesActive end, function(p97)
  autoUnlockZonesActive = p97

  if p97 then
    startAutoUnlockLoop()
  elseif not autoUnlockMerchantsActive and not autoUnlockZonesActive and autoUnlockLoopThread then
    autoUnlockLoopThread = nil
  end
end)

autoUnlockZoneBtn = v368
autoUnlockMerchantsActive = false
autoUnlockZonesActive = false
autoUnlockLoopThread = nil

function startAutoUnlockLoop()
  if autoUnlockLoopThread then
    return
  end

  autoUnlockLoopThread = task.spawn(function()
    local Module_33 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
    local Module_34 = require(game.ReplicatedStorage.Library.Client.InstancingCmds)
    local Module_35 = require(game.ReplicatedStorage.Library.Client.InstanceZoneCmds)
    local Module_36 = require(game.ReplicatedStorage.Library.Client.Network)
    local Module_37 = require(game.ReplicatedStorage.Library.Client.Save)
    local v374
    pcall(function() v374 = require(game.ReplicatedStorage.Library.Client.FFlags) end)
    local v375

    local function f13()
      local countAny2 = 0

      pcall(function()
        if v375 and v375.Currency and Module_33.COINS_ID then
          local Currency = v375.Currency(Module_33.COINS_ID)

          if Currency and Currency.CountAny then
            countAny2 = Currency:CountAny() or 0
          end
        end
      end)

      if countAny2 <= 0 then
        pcall(function()
          local Module_38 = require(game.ReplicatedStorage.Library.Client.CurrencyCmds)

          countAny2 = Module_38.Get(Module_33.COINS_ID) or Module_38.Get("ArcadeCoins")
            or Module_38.Get("Arcade Coins") or 0
        end)
      end

      return tonumber(countAny2) or 0
    end

    local function f14(p98)
      local v378 = 0

      pcall(function()
        if v374 and v374.Get and v374.Keys and Module_33.MerchantUnlockFlag then
          local MerchantUnlockFlag = Module_33.MerchantUnlockFlag(p98)
          local Get_2 = v374.Get(v374.Keys[MerchantUnlockFlag])

          if type(Get_2) == "number" and Get_2 >= 0 then
            v378 = Get_2
            return
          end

          return
        end
      end)

      if v378 <= 0 then
        pcall(function()
          local MERCHANT_UNLOCK_COSTS = Module_33.MERCHANT_UNLOCK_COSTS

          if type(MERCHANT_UNLOCK_COSTS) == "table" then
            v378 = tonumber(MERCHANT_UNLOCK_COSTS[p98]) or 0
          end
        end)
      end

      return v378
    end

    local function f15(p99)
      local currencyCost

      pcall(function()
        local Get_3 = Module_34.Get()
        local instanceZones = Get_3 and Get_3.instanceZones and Get_3.instanceZones[p99]

        if instanceZones and type(instanceZones.CurrencyCost) == "number" then
          currencyCost = instanceZones.CurrencyCost
        end
      end)

      return currencyCost
    end

    while (autoUnlockMerchantsActive or autoUnlockZonesActive) and scriptRunning do
      pcall(function()
        local Get_4 = Module_37.Get()
        local instanceID, v383, v384

        if not Get_4 then
          return
        else
          local f13_2 = f13()

          if autoUnlockMerchantsActive then
            local MathClamp_4 = math.clamp(
              tonumber(Get_4[Module_33.MERCHANT_UNLOCK_SAVE_KEY]) or 1, 1, Module_33.MERCHANT_COUNT or 8
            ) + 1

            if MathClamp_4 <= (Module_33.MERCHANT_COUNT or 8) then
              local f14_2 = f14(MathClamp_4)

              if f14_2 <= 0 or f13_2 >= f14_2 then
                if Module_34.InvokeCustom(Module_33.RPC.Unlock, MathClamp_4) then
                  if sendNotification then
                    sendNotification("Unlock", "Merchant " .. tostring(MathClamp_4) .. " unlocked!", 3)
                  end

                  task.wait(0.6)
                end
              end
            end
          end

          if autoUnlockZonesActive then
            local Get_5 = Module_34.Get()
            instanceID = Get_5 and Get_5.instanceID

            for n = 2, Module_33.CABINET_COUNT or 8 do
              local N = n
              local v390 = not autoUnlockZonesActive
              local V390 = v390

              if not v390 then
                v390 = not scriptRunning
                V390 = v390
              end

              if V390 then
                break
              else
                local v392 = false
                local v393 = N == 2

                pcall(function()
                  v392 = Module_35.IsUnlocked(N) == true

                  if N > 2 then
                    v393 = Module_35.IsUnlocked(N - 1) == true
                  else
                    v393 = true
                  end
                end)

                if not v392 and v393 then
                  local f15_2 = f15(N)
                  local f13_3 = f13()

                  if f15_2 == nil or f13_3 >= f15_2 then
                    v383 = false

                    pcall(function()
                      v383, v384 = Module_36.Invoke(
                        "InstanceZones_RequestPurchase", instanceID, N
                      )
                    end)

                    if v383 then
                      if sendNotification then
                        sendNotification("Unlock", "Zone " .. tostring(N) .. " unlocked!", 3)
                      end

                      task.wait(0.8)
                      break
                    end
                  end

                  break
                end
              end
            end
          end

          return
        end
      end)

      task.wait(2.5)
    end

    autoUnlockLoopThread = nil
  end)
end

createSectionHeader(Tabs.Minigames, "Minigames")
local v396

minigamesAutoCard, v396 = createToggleCard(Tabs.Minigames, "🎮 AUTO MINIGAMES", "Plays all minigames with remaining attempts.", function() return autoMinigamesEnabled end, function(p100)
  autoMinigamesEnabled = p100

  if p100 then
    startAutoMinigamesLoop()
  else
    if autoMinigamesLoopThread then
      autoMinigamesLoopThread = nil
    end

    autoMinigamesBusy = false

    minigameRunState.Current = nil
    minigameRunState.Countdown = 0
  end
end)

minigamesAutoBtn = v396

function createMinigameControlCard(p101, p102, p103, p104)
  local createCard_4 = createCard(p101, p102, 92)

  local TextLabel_8 = Instance.new("TextLabel", createCard_4)
  TextLabel_8.Size = UDim2.new(1, -24, 0, 16)
  TextLabel_8.Position = UDim2.new(0, 12, 0, 30)
  TextLabel_8.BackgroundTransparency = 1
  TextLabel_8.Font = FONT_MEDIUM
  TextLabel_8.RichText = true

  local minigamePlaysLeft_2 = minigamePlaysLeft(getMinigameId(p103))

  TextLabel_8.Text = minigamePlaysLeft_2 > 0 and "<b>Ready | Plays: " .. tostring(minigamePlaysLeft_2) .. "</b>"
    or "<b>No plays left</b>"

  TextLabel_8.TextColor3 = C_SUBTEXT
  TextLabel_8.TextSize = 9
  TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

  minigamesStatusLabels[p103] = TextLabel_8

  local TextButton_6 = Instance.new("TextButton", createCard_4)
  TextButton_6.Size = UDim2.new(1, -24, 0, 26)
  TextButton_6.Position = UDim2.new(0, 12, 0, 56)
  TextButton_6.BackgroundColor3 = C_BUTTON

  table.insert(staticAccentButtonsList, TextButton_6)

  TextButton_6.Font = FONT_BOLD
  TextButton_6.RichText = true
  TextButton_6.Text = "<b>" .. p104 .. "</b>"
  TextButton_6.TextColor3 = C_TEXT
  TextButton_6.TextSize = 10

  Instance.new("UICorner", TextButton_6).CornerRadius = UDim.new(0, 6)

  TextButton_6.MouseButton1Click:Connect(function()
    if autoMinigamesBusy then
      return
    end

    task.spawn(function()
      autoMinigamesBusy = true

      TextButton_6.Text = "<b>Playing...</b>"
      TextButton_6.BackgroundColor3 = C_SUCCESS

      local getMinigameId_5 = getMinigameId(p103)

      if minigamePlaysLeft(getMinigameId_5) <= 0 then
        setMinigameStatus(p103, "No plays left")
      else
        local AutoMinigamesEnabled = autoMinigamesEnabled
        autoMinigamesEnabled = true

        if scriptRunning and minigamePlaysLeft(getMinigameId_5) > 0 then
          runOneMinigame(getMinigameId_5)
        end

        autoMinigamesEnabled = AutoMinigamesEnabled
      end

      TextButton_6.Text = "<b>" .. p104 .. "</b>"
      TextButton_6.BackgroundColor3 = C_BUTTON

      autoMinigamesBusy = false
    end)
  end)

  return createCard_4, TextButton_6, TextLabel_8
end

local MinigamesStatusLabels = minigamesStatusLabels
local v402, flappy

minigamesFlappyCard, v402, flappy = createMinigameControlCard(
  Tabs.Minigames, "🐦 FLAPPY", "Flappy", "Play Now"
)

minigamesFlappyBtn = v402
MinigamesStatusLabels.Flappy = flappy
local MinigamesStatusLabels_2 = minigamesStatusLabels
local snake, v404

minigamesSnakeCard, v404, snake = createMinigameControlCard(
  Tabs.Minigames, "🐍 SNAKE", "Snake", "Play Now"
)

minigamesSnakeBtn = v404
MinigamesStatusLabels_2.Snake = snake
local MinigamesStatusLabels_3 = minigamesStatusLabels
local v406, blockDrop

minigamesBlockDropCard, v406, blockDrop = createMinigameControlCard(
  Tabs.Minigames, "🧱 BLOCK DROP", "BlockDrop", "Play Now"
)

minigamesBlockDropBtn = v406
MinigamesStatusLabels_3.BlockDrop = blockDrop
local MinigamesStatusLabels_4 = minigamesStatusLabels
local v408, colorBlocks

minigamesColorBlocksCard, v408, colorBlocks = createMinigameControlCard(
  Tabs.Minigames, "🎨 COLOR BLOCKS", "ColorBlocks", "Play Now"
)

minigamesColorBlocksBtn = v408
MinigamesStatusLabels_4.ColorBlocks = colorBlocks
local MinigamesStatusLabels_5 = minigamesStatusLabels
local invaders

minigamesInvadersCard, minigamesInvadersBtn, invaders = createMinigameControlCard(
  Tabs.Minigames, "👾 PET INVADERS", "Invaders", "Play Now"
)

MinigamesStatusLabels_5.Invaders = invaders

task.spawn(function()
  while scriptRunning do
    if minigamesStatusLabels then
      for index35, value48 in ipairs({
        "Flappy", "Snake", "BlockDrop", "ColorBlocks", "Invaders",
      }) do
        local v410 = minigamesStatusLabels[value48]

        if v410 and v410.Parent and minigameRunState.Current ~= value48 then
          local getMinigameId_6 = getMinigameId(value48)
          local v412 = 3

          pcall(function()
            local Module_39 = require(game.ReplicatedStorage.Library.Client.FFlags)
            local Module_40 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
            local Get_6 = Module_39.Get(Module_39.Keys[Module_40.MINIGAME_PLAYS_FLAG])

            if type(Get_6) == "number" then
              v412 = math.max(0, math.floor(Get_6))
            end

            pcall(function()
              if typeof(syncAllTogglesUI) == "function" then
                syncAllTogglesUI()
              end
            end)
          end)

          local V412 = v412
          local v417

          pcall(function()
            local Module_41 = require(game.ReplicatedStorage.Library.Client.Save)
            local Module_42 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
            local Get_7 = Module_41.Get()
            local v421 = Get_7 and Get_7[Module_42.MINIGAMES_SAVE_KEY]
            local TypeName_5 = type(v421) == "table" and v421[getMinigameId_6] or nil

            if type(TypeName_5) == "table" and type(TypeName_5.Window) == "number"
              and type(TypeName_5.Plays) == "number" then
              local Workspace_3 = workspace
              local MINIGAME_WINDOW_SECONDS = TypeName_5.Window + Module_42.MINIGAME_WINDOW_SECONDS

              if MINIGAME_WINDOW_SECONDS > Workspace_3:GetServerTimeNow() then
                V412 = math.max(0, v412 - TypeName_5.Plays)
                v417 = MINIGAME_WINDOW_SECONDS
              end
            end
          end)

          if V412 > 0 then
            v410.Text = "<b>Ready | Plays: " .. tostring(V412) .. " / " .. tostring(v412)
              .. "</b>"

            v410.TextColor3 = C_SUCCESS
          else
            if v417 then
              local Workspace_4 = workspace
              local MathMax_6 = math.max(0, v417 - Workspace_4:GetServerTimeNow())
              local Module_43 = require(game.ReplicatedStorage.Library.Functions)
              local v428 = "0s"

              if Module_43 and Module_43.TimerString then
                pcall(function() v428 = Module_43.TimerString(MathMax_6) end)
              else
                local MathFloor_8 = math.floor(MathMax_6 / 3600)
                local MathFloor_9 = math.floor(MathMax_6 % 3600 / 60)
                local MathFloor_10 = math.floor(MathMax_6 % 60)
                v428 = string.format("%02d:%02d:%02d", MathFloor_8, MathFloor_9, MathFloor_10)
              end

              v410.Text = "<b>No plays left | Resets in: <font color=\"#E74C3C\">" .. v428
                .. "</font></b>"
            else
              v410.Text = "<b>No plays left</b>"
            end

            v410.TextColor3 = C_SUBTEXT
          end
        end
      end
    end

    task.wait(1)
  end
end)

upgradePriorityOptions = { "Pet Slots", "Token Luck", "Zone Yield" }
upgradeFocus = "Pet Slots"
upgradeScope = "Both"
upgradeDashboardRows = {}

UPGRADE_GROUPS = {
  General = {
    "CoinArcadeBossLevel", "CoinArcadeMerchantLuck", "CoinArcadeMerchantSpeed",
    "CoinArcadeTokenLuck",
  },
  ["Zone 1"] = {
    "CoinArcadeCabinet1Yield", "CoinArcadeCabinet1Slots", "CoinArcadeCabinet1Tray",
  },
  ["Zone 2"] = {
    "CoinArcadeCabinet2Yield", "CoinArcadeCabinet2Slots", "CoinArcadeCabinet2Tray",
  },
  ["Zone 3"] = {
    "CoinArcadeCabinet3Yield", "CoinArcadeCabinet3Slots", "CoinArcadeCabinet3Tray",
  },
  ["Zone 4"] = {
    "CoinArcadeCabinet4Yield", "CoinArcadeCabinet4Slots", "CoinArcadeCabinet4Tray",
  },
  ["Zone 5"] = {
    "CoinArcadeCabinet5Yield", "CoinArcadeCabinet5Slots", "CoinArcadeCabinet5Tray",
  },
  ["Zone 6"] = {
    "CoinArcadeCabinet6Yield", "CoinArcadeCabinet6Slots", "CoinArcadeCabinet6Tray",
  },
  ["Zone 7"] = {
    "CoinArcadeCabinet7Yield", "CoinArcadeCabinet7Slots", "CoinArcadeCabinet7Tray",
  },
  ["Zone 8"] = {
    "CoinArcadeCabinet8Yield", "CoinArcadeCabinet8Slots", "CoinArcadeCabinet8Tray",
  },
}

function getUpgradeId(p105, p106)
  if type(p106) == "table" then
    return p106._id or p106.Id or p106.id or p106.UpgradeId or p106.UpgradeID or p106.Name
      or p106.name or p105
  end

  return p105
end

function getUpgradeTierSafe(p107, p108, p109)
  local v432, v433 = pcall(function() return p107.GetTier(p108) end)

  if v432 and tonumber(v433) then
    return tonumber(v433)
  elseif p109 then
    local v434, v435 = pcall(function() return p107.GetTier(p109) end)

    if v434 and tonumber(v435) then
      return tonumber(v435)
    end

    return 0
  else
    return 0
  end
end

function refreshUpgradeDashboard()
  local v436, v437 = pcall(function()
    return require(game.ReplicatedStorage.Library.Directory)
  end)

  local v438, v439 = pcall(function()
    return require(game.ReplicatedStorage.Library.Client.EventUpgradeCmds)
  end)

  if not v436 or not v438 or not v437 or not v439 or not v439.GetTier then
    for key15, value49 in pairs(upgradeDashboardRows) do
      if value49 and value49.status and value49.status.Parent then
        value49.status.Text = "<b>Upgrade data unavailable</b>"
        value49.status.TextColor3 = C_SUBTEXT
      end
    end

    return
  else
    local eventUpgrades = v437.EventUpgrades or {}

    for key16, value50 in pairs(UPGRADE_GROUPS) do
      local total3 = 0
      local total4 = 0

      for index36, value51 in ipairs(value50) do
        local v440 = eventUpgrades[value51]

        if v440 then
          local getUpgradeTierSafe_2 = getUpgradeTierSafe(v439, value51, v440)
          total4 = total4 + (type(v440.TierPowers) == "table" and #v440.TierPowers or 0)
          total3 = total3 + math.max(0, getUpgradeTierSafe_2)
        end
      end

      local v442 = upgradeDashboardRows[key16]

      if v442 and v442.status and v442.status.Parent then
        if not (key16 == "General" or isCoinArcadeZoneUnlocked(tonumber(key16:match("%d+")))) then
          v442.status.Text = "<b>Locked</b>"
          v442.status.TextColor3 = C_SUBTEXT
        elseif total4 == 0 then
          v442.status.Text = "<b>0/0</b>"
          v442.status.TextColor3 = C_SUBTEXT
        elseif total3 >= total4 then
          v442.status.Text = "<b>MAX</b>"
          v442.status.TextColor3 = C_SUCCESS
        else
          v442.status.Text = string.format("<b>%d/%d</b>", total3, total4)
          v442.status.TextColor3 = C_TEXT
        end
      end
    end

    return
  end
end

function createUpgradePriorityCard(p110, p111, p112)
  local createCard_5 = createCard(p110, p111, 42)
  local TextLabel_9 = createCard_5:FindFirstChildWhichIsA("TextLabel")

  if TextLabel_9 then
    TextLabel_9.Size = UDim2.new(1, -100, 0, 20)
  end

  local TextLabel_10 = Instance.new("TextLabel", createCard_5)
  TextLabel_10.Size = UDim2.new(0, 70, 1, 0)
  TextLabel_10.Position = UDim2.new(1, -82, 0, 0)
  TextLabel_10.BackgroundTransparency = 1
  TextLabel_10.Font = FONT_MEDIUM
  TextLabel_10.RichText = true
  TextLabel_10.Text = "<b>Loading upgrade data...</b>"
  TextLabel_10.TextColor3 = C_SUBTEXT
  TextLabel_10.TextSize = 10
  TextLabel_10.TextXAlignment = Enum.TextXAlignment.Right
  TextLabel_10.TextYAlignment = Enum.TextYAlignment.Center

  upgradeDashboardRows[p112] = { status = TextLabel_10 }
  return createCard_5
end

createSectionHeader(Tabs.Upgrades, "Upgrade Tiers")
createUpgradePriorityCard(Tabs.Upgrades, "🌐 Global (Hub)", "General")

for i6 = 1, 8 do
  createUpgradePriorityCard(
    Tabs.Upgrades, "🗺️ Zone " .. tostring(i6), "Zone " .. tostring(i6)
  )
end

createSectionHeader(Tabs.Upgrades, "Upgrade Automation")
local v444

autoBuyUpgradesCard, v444 = createToggleCard(Tabs.Upgrades, "🛒 AUTO BUY UPGRADES", "Purchases focused upgrades when affordable.", function() return autoBuyUpgradesEnabled end, function(p113)
  autoBuyUpgradesEnabled = p113

  if p113 then
    startAutoBuyUpgradesLoop()
  elseif autoBuyUpgradesLoopThread then
    autoBuyUpgradesLoopThread = nil
  end
end)

autoBuyUpgradesBtn = v444

function createUpgradeFocusCard(p114, p115)
  local createCard_6 = createCard(Tabs.Upgrades, p114, 76)
  createDescriptionLabel(createCard_6, "Priority for auto upgrade purchases.")

  local TextButton_7 = Instance.new("TextButton", createCard_6)
  TextButton_7.Size = UDim2.new(0.35, 0, 0, 28)
  TextButton_7.Position = UDim2.new(0.62, 0, 0, 30)
  TextButton_7.BackgroundColor3 = C_DROPDOWN_BUTTON
  TextButton_7.Font = FONT_BOLD
  TextButton_7.RichText = true
  TextButton_7.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  TextButton_7.TextSize = 10

  Instance.new("UICorner", TextButton_7).CornerRadius = UDim.new(0, 6)

  local function f16()
    TextButton_7.Text = "<b>" .. tostring(upgradeFocus[p115]) .. " ▼</b>"
    TextButton_7.BackgroundColor3 = C_DROPDOWN_BUTTON
    TextButton_7.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
  end

  TextButton_7.MouseButton1Click:Connect(function()
    local v446 = p115 == "Global"
        and { "Boss Chest", "Merchant Luck", "Merchant Speed", "Token Luck", "Cheapest" }
      or { "Zone Yield", "Pet Slots", "Token Luck", "Cheapest" }

    local v447 = 1

    for index37, value52 in ipairs(v446) do
      if value52 == upgradeFocus[p115] then
        v447 = index37
        break
      end
    end

    upgradeFocus[p115] = v446[v447 % #v446 + 1]
    f16()
  end)

  f16()
  return createCard_6
end

upgradeFocus = { Global = "Boss Chest", Zones = "Zone Yield" }

createUpgradeFocusCard("🌐 GLOBAL FOCUS", "Global")
createUpgradeFocusCard("🗺️ ZONES FOCUS", "Zones")

upgradeScopeCard = createCard(Tabs.Upgrades, "🎯 UPGRADE SCOPE", 76)
createDescriptionLabel(upgradeScopeCard, "Global, zones, or both.")

upgradeScopeBtn = Instance.new("TextButton", upgradeScopeCard)
upgradeScopeBtn.Size = UDim2.new(0.35, 0, 0, 28)
upgradeScopeBtn.Position = UDim2.new(0.62, 0, 0, 30)
upgradeScopeBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
upgradeScopeBtn.Font = FONT_BOLD
upgradeScopeBtn.RichText = true
upgradeScopeBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
upgradeScopeBtn.TextSize = 10

Instance.new("UICorner", upgradeScopeBtn).CornerRadius = UDim.new(0, 6)

function syncUpgradeScopeButton()
  upgradeScopeBtn.Text = "<b>" .. tostring(upgradeScope) .. " ▼</b>"
  upgradeScopeBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
  upgradeScopeBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
end

upgradeScopeBtn.MouseButton1Click:Connect(function()
  if upgradeScope == "Both" then
    upgradeScope = "Zones"
  elseif upgradeScope == "Zones" then
    upgradeScope = "Global"
  else
    upgradeScope = "Both"
  end

  syncUpgradeScopeButton()
end)

syncUpgradeScopeButton()
refreshUpgradeDashboard()

task.spawn(function()
  while scriptRunning do
    task.wait(5)
  end
end)

createSectionHeader(Tabs.Graphics, "Theme")

ThemePickersScroll = Instance.new("ScrollingFrame", Tabs.Graphics)
ThemePickersScroll.Name = "ThemePickersScroll"
ThemePickersScroll.Size = UDim2.new(1, 0, 0, 240)
ThemePickersScroll.BackgroundTransparency = 1
ThemePickersScroll.BorderSizePixel = 0
ThemePickersScroll.ScrollBarThickness = 4
ThemePickersScroll.CanvasSize = UDim2.new(0, 0, 0, 0)

themePickersLayout = Instance.new("UIListLayout", ThemePickersScroll)
themePickersLayout.SortOrder = Enum.SortOrder.LayoutOrder
themePickersLayout.Padding = UDim.new(0, 8)

themePickersLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
  ThemePickersScroll.CanvasSize = UDim2.new(
    0, 0, 0, themePickersLayout.AbsoluteContentSize.Y + 10
  )
end)

function createModernColorPickerCard(p116, p117, p118, fn)
  local createCard_7 = createCard(p116, p117, 72)
  createDescriptionLabel(createCard_7, "Edit color: " .. p117 .. ".")

  local TextButton_8 = Instance.new("TextButton", createCard_7)
  TextButton_8.Size = UDim2.new(0.35, 0, 0, 28)
  TextButton_8.Position = UDim2.new(0.62, 0, 0, 30)
  TextButton_8.BackgroundColor3 = C_BUTTON
  TextButton_8.Font = FONT_BOLD
  TextButton_8.RichText = true
  TextButton_8.Text = "<b>PICK COLOR</b>"
  TextButton_8.TextColor3 = C_TEXT
  TextButton_8.TextSize = 11

  Instance.new("UICorner", TextButton_8).CornerRadius = UDim.new(0, 6)
  table.insert(colorPickerButtonsList, TextButton_8)

  TextButton_8.MouseButton1Click:Connect(function()
    if activeColorPicker and activeColorPicker.Parent then
      activeColorPicker:Destroy()
      activeColorPicker = nil
      isColorPickerOpen = false
    end

    isColorPickerOpen = true

    local Frame_5 = Instance.new("Frame", ScreenGui)
    Frame_5.Name = "ColorPickerFrame"
    Frame_5.Size = UDim2.new(0, 0, 0, 0)
    Frame_5.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame_5.BackgroundColor3 = C_BG
    Frame_5.BackgroundTransparency = 1
    Frame_5.BorderSizePixel = 0
    Frame_5.ZIndex = 300
    Frame_5.ClipsDescendants = true

    Instance.new("UICorner", Frame_5).CornerRadius = UDim.new(0, 12)

    local UIStroke_3 = Instance.new("UIStroke", Frame_5)
    UIStroke_3.Color = Color3.fromRGB(45, 45, 65)
    UIStroke_3.Thickness = 1

    activeColorPicker = Frame_5

    local Frame_6 = Instance.new("Frame", Frame_5)
    Frame_6.Name = "DragHandle"
    Frame_6.Size = UDim2.new(1, 0, 0, 40)
    Frame_6.BackgroundTransparency = 1
    Frame_6.ZIndex = 304

    local TextButton_9 = Instance.new("TextButton", Frame_5)
    TextButton_9.Size = UDim2.new(0, 20, 0, 20)
    TextButton_9.Position = UDim2.new(1, -22, 0, 12)
    TextButton_9.BackgroundTransparency = 1
    TextButton_9.Font = FONT_BOLD
    TextButton_9.RichText = true
    TextButton_9.Text = "<b>X</b>"
    TextButton_9.TextColor3 = Color3.fromRGB(160, 165, 180)
    TextButton_9.TextSize = 13
    TextButton_9.ZIndex = 305
    TextButton_9.MouseEnter:Connect(function() TextButton_9.TextColor3 = C_DANGER end)

    TextButton_9.MouseLeave:Connect(function()
      TextButton_9.TextColor3 = Color3.fromRGB(160, 165, 180)
    end)

    local TextLabel_11 = Instance.new("TextLabel", Frame_5)
    TextLabel_11.Size = UDim2.new(1, -40, 0, 22)
    TextLabel_11.Position = UDim2.new(0, 16, 0, 12)
    TextLabel_11.BackgroundTransparency = 1
    TextLabel_11.Font = FONT_BOLD
    TextLabel_11.RichText = true
    TextLabel_11.Text = "<b><font color=\"#7289DA\">COLOR PICKER</font></b>"
    TextLabel_11.TextColor3 = C_TEXT
    TextLabel_11.TextSize = 12
    TextLabel_11.ZIndex = 301

    local TextLabel_12 = Instance.new("TextLabel", Frame_5)
    TextLabel_12.Size = UDim2.new(1, -40, 0, 14)
    TextLabel_12.Position = UDim2.new(0, 16, 0, 28)
    TextLabel_12.BackgroundTransparency = 1
    TextLabel_12.Font = FONT_MEDIUM
    TextLabel_12.RichText = true
    TextLabel_12.Text = "<b>SELECTION: " .. string.upper(p117) .. "</b>"
    TextLabel_12.TextColor3 = Color3.fromRGB(120, 125, 145)
    TextLabel_12.TextSize = 8
    TextLabel_12.ZIndex = 301

    local Frame_7 = Instance.new("Frame", Frame_5)
    Frame_7.Size = UDim2.new(0, 65, 0, 65)
    Frame_7.Position = UDim2.new(0, 16, 0, 52)
    Frame_7.BackgroundColor3 = p118
    Frame_7.BorderSizePixel = 0
    Frame_7.ZIndex = 301

    Instance.new("UICorner", Frame_7).CornerRadius = UDim.new(0, 8)
    local v449, v450, v451 = p118:ToHSV()
    local V450 = v450
    local V451 = v451

    local Frame_8 = Instance.new("Frame", Frame_5)
    Frame_8.Size = UDim2.new(0, 225, 0, 65)
    Frame_8.Position = UDim2.new(0, 96, 0, 52)
    Frame_8.BackgroundTransparency = 1
    Frame_8.ZIndex = 301

    local f17

    local function f18(p119, p120, fn2)
      local Frame_9 = Instance.new("Frame", Frame_8)
      Frame_9.Size = UDim2.new(1, 0, 0, 14)
      Frame_9.Position = UDim2.new(0, 0, 0, p119)
      Frame_9.BackgroundColor3 = Color3.new(1, 1, 1)
      Frame_9.BorderSizePixel = 0
      Frame_9.ZIndex = 302

      Instance.new("UICorner", Frame_9).CornerRadius = UDim.new(0, 4)
      Instance.new("UIGradient", Frame_9).Color = ColorSequence.new(p120)

      local v454 = false

      Frame_9.InputBegan:Connect(function(input4)
        if input4.UserInputType == Enum.UserInputType.MouseButton1
          or input4.UserInputType == Enum.UserInputType.Touch then
          v454 = true
        end
      end)

      UserInputService.InputEnded:Connect(function(input5)
        if input5.UserInputType == Enum.UserInputType.MouseButton1
          or input5.UserInputType == Enum.UserInputType.Touch then
          v454 = false
        end
      end)

      UserInputService.InputChanged:Connect(function(input6)
        if v454
          and (input6.UserInputType == Enum.UserInputType.MouseMovement
            or input6.UserInputType == Enum.UserInputType.Touch) then
          fn2((math.clamp((input6.Position.X - Frame_9.AbsolutePosition.X)
            / Frame_9.AbsoluteSize.X, 0, 1)))

          f17()
        end
      end)
    end

    local instance33

    function f17()
      local Color3_7 = Color3.fromHSV(v449, V450, V451)
      Frame_7.BackgroundColor3 = Color3_7

      if instance33 then
        instance33.Text = "#" .. string.format(
          "%02X%02X%02X", math.floor(Color3_7.R * 255), math.floor(Color3_7.G * 255),
          math.floor(Color3_7.B * 255)
        )
      end

      fn(Color3_7)
      updateAllDynamicElementsColor()
    end

    f18(0, {
      ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
      ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)),
      ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
      ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
      ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)),
      ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
    }, function(p121) v449 = p121 end)

    f18(24, {
      ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 100, 100)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    }, function(p122) V450 = p122 end)

    f18(48, {
      ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200)),
    }, function(p123) V451 = p123 end)

    instance33 = Instance.new("TextBox", Frame_5)
    instance33.Size = UDim2.new(0, 100, 0, 32)
    instance33.Position = UDim2.new(0, 16, 0, 136)
    instance33.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
    instance33.Font = FONT_BOLD

    instance33.Text = "#" .. string.format(
      "%02X%02X%02X", math.floor(p118.R * 255), math.floor(p118.G * 255),
      math.floor(p118.B * 255)
    )

    instance33.TextColor3 = C_TEXT
    instance33.TextSize = 10
    instance33.ZIndex = 301

    Instance.new("UICorner", instance33).CornerRadius = UDim.new(0, 6)

    instance33.FocusLost:Connect(function(p124)
      if p124 then
        local Gsub = instance33.Text:gsub("#", "")

        if #Gsub == 6 then
          local ToNumber_13 = tonumber(Gsub:sub(1, 2), 16)
          local ToNumber_14 = tonumber(Gsub:sub(3, 4), 16)
          local ToNumber_15 = tonumber(Gsub:sub(5, 6), 16)

          if ToNumber_13 and ToNumber_14 and ToNumber_15 then
            local v458, v459
            v449, v458, v459 = Color3.fromRGB(ToNumber_13, ToNumber_14, ToNumber_15):ToHSV()
            V450 = v458
            V451 = v459
            f17()
          end
        end
      end
    end)

    local TextButton_10 = Instance.new("TextButton", Frame_5)
    TextButton_10.Size = UDim2.new(0, 192, 0, 32)
    TextButton_10.Position = UDim2.new(0, 128, 0, 136)
    TextButton_10.BackgroundColor3 = C_SUCCESS
    TextButton_10.Font = FONT_BOLD
    TextButton_10.RichText = true
    TextButton_10.Text = "<b>APPLY COLOR</b>"
    TextButton_10.TextColor3 = C_TEXT
    TextButton_10.TextSize = 10
    TextButton_10.ZIndex = 301

    Instance.new("UICorner", TextButton_10).CornerRadius = UDim.new(0, 6)

    local function f19()
      isColorPickerOpen = false

      if activeColorPicker == Frame_5 then
        activeColorPicker = nil
      end

      if Frame_5 and Frame_5.Parent then
        local New_3 = TweenService:Create(Frame_5, TweenInfo.new(
          0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In
        ), {
          Size = UDim2.new(0, 0, 0, 0),
          Position = UDim2.new(0.5, 0, 0.5, 0),
          BackgroundTransparency = 1,
        })

        New_3:Play()

        New_3.Completed:Connect(function()
          if Frame_5 and Frame_5.Parent then
            Frame_5:Destroy()
          end
        end)
      end
    end

    TextButton_10.MouseButton1Click:Connect(function() f19() end)
    TextButton_9.MouseButton1Click:Connect(function() f19() end)
    local v460, position3, position4

    Frame_6.InputBegan:Connect(function(input7)
      if input7.UserInputType == Enum.UserInputType.MouseButton1
        or input7.UserInputType == Enum.UserInputType.Touch then
        v460 = true
        position3 = input7.Position
        position4 = Frame_5.Position

        input7.Changed:Connect(function()
          if input7.UserInputState == Enum.UserInputState.End then
            v460 = false
          end
        end)
      end
    end)

    local v461

    Frame_6.InputChanged:Connect(function(input8)
      if input8.UserInputType == Enum.UserInputType.MouseMovement
        or input8.UserInputType == Enum.UserInputType.Touch then
        v461 = input8
      end
    end)

    UserInputService.InputChanged:Connect(function(input9)
      if input9 == v461 and v460 then
        local v462 = input9.Position - position3

        Frame_5.Position = UDim2.new(
          position4.X.Scale, position4.X.Offset + v462.X, position4.Y.Scale,
          position4.Y.Offset + v462.Y
        )
      end
    end)

    TweenService:Create(Frame_5, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
      Size = UDim2.new(0, 340, 0, 220),
      Position = UDim2.new(0.5, -170, 0.5, -110),
      BackgroundTransparency = 0,
    }):Play()
  end)

  return createCard_7
end

createModernColorPickerCard(ThemePickersScroll, "Background", C_BG, function(p125)
  C_BG = p125
  MainFrame.BackgroundColor3 = p125
end)

createModernColorPickerCard(ThemePickersScroll, "Sidebar", C_SIDEBAR, function(p126)
  C_SIDEBAR = p126
  Sidebar.BackgroundColor3 = p126
end)

createModernColorPickerCard(ThemePickersScroll, "Cards", C_CARD, function(p127)
  C_CARD = p127

  for index38, value53 in ipairs(cardsList) do
    if value53 and value53.Parent then
      value53.BackgroundColor3 = p127
    end
  end
end)

createModernColorPickerCard(ThemePickersScroll, "Profile", C_PROFILE, function(p128)
  C_PROFILE = p128

  if ProfileCard and ProfileCard.Parent then
    ProfileCard.BackgroundColor3 = p128
  end
end)

createModernColorPickerCard(ThemePickersScroll, "Containers", C_CONTAINERS, function(p129)
  C_CONTAINERS = p129

  for index39, value54 in ipairs(containerFramesList) do
    if value54 and value54.Parent then
      value54.BackgroundColor3 = p129
    end
  end
end)

createModernColorPickerCard(ThemePickersScroll, "Dashboard Live", C_DASHBOARD_LIVE, function(p130)
  C_DASHBOARD_LIVE = p130
  updateAllDynamicElementsColor()
end)

createModernColorPickerCard(ThemePickersScroll, "Accent", C_ACCENT, function(p131)
  C_ACCENT = p131
  updateAllDynamicElementsColor()
end)

createModernColorPickerCard(ThemePickersScroll, "Buttons", C_BUTTON, function(p132)
  C_BUTTON = p132
  updateAllDynamicElementsColor()
end)

createModernColorPickerCard(ThemePickersScroll, "Section Headers", C_SECTION_HEADER, function(p133)
  C_SECTION_HEADER = p133
  updateAllDynamicElementsColor()
end)

createModernColorPickerCard(ThemePickersScroll, "Preset Selection", C_PRESET_SELECTION, function(p134)
  C_PRESET_SELECTION = p134
  updateAllDynamicElementsColor()
end)

createModernColorPickerCard(ThemePickersScroll, "Sliders", C_SLIDER, function(p135)
  C_SLIDER = p135
  updateAllDynamicElementsColor()
end)

createModernColorPickerCard(ThemePickersScroll, "Dropdowns", C_DROPDOWN_BUTTON, function(p136)
  C_DROPDOWN_BUTTON = p136

  if giftDropdownBtn and giftDropdownBtn.Parent then
    giftDropdownBtn.BackgroundColor3 = p136
    giftDropdownBtn.TextColor3 = contrastTextColor(p136)
  end

  updateAllDynamicElementsColor()
end)

createSectionHeader(Tabs.Graphics, "Presets")
presetsCard = createCard(Tabs.Graphics, "💾 THEME PRESETS", 200)

presetSelectScroll = Instance.new("ScrollingFrame", presetsCard)
presetSelectScroll.Size = UDim2.new(0.58, -10, 0, 134)
presetSelectScroll.Position = UDim2.new(0, 12, 0, 52)
presetSelectScroll.BackgroundColor3 = C_CONTAINERS
presetSelectScroll.BorderSizePixel = 0
presetSelectScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
presetSelectScroll.ScrollBarThickness = 3

Instance.new("UICorner", presetSelectScroll).CornerRadius = UDim.new(0, 6)

presetSelectPadding = Instance.new("UIPadding", presetSelectScroll)
presetSelectPadding.PaddingTop = UDim.new(0, 8)

presetListLayout = Instance.new("UIListLayout", presetSelectScroll)
presetListLayout.SortOrder = Enum.SortOrder.LayoutOrder
presetListLayout.Padding = UDim.new(0, 3)

loadPresetBtn = Instance.new("TextButton", presetsCard)
loadPresetBtn.Size = UDim2.new(0.38, 0, 0, 33)
loadPresetBtn.Position = UDim2.new(0.6, 0, 0, 48)
loadPresetBtn.BackgroundColor3 = C_BUTTON
loadPresetBtn.Font = FONT_BOLD
loadPresetBtn.RichText = true
loadPresetBtn.Text = "<b>LOAD PRESET</b>"
loadPresetBtn.TextColor3 = C_TEXT
loadPresetBtn.TextSize = 10

Instance.new("UICorner", loadPresetBtn).CornerRadius = UDim.new(0, 6)

savePresetBtn = Instance.new("TextButton", presetsCard)
savePresetBtn.Size = UDim2.new(0.38, 0, 0, 33)
savePresetBtn.Position = UDim2.new(0.6, 0, 0, 86)
savePresetBtn.BackgroundColor3 = C_SUCCESS
savePresetBtn.Font = FONT_BOLD
savePresetBtn.RichText = true
savePresetBtn.Text = "<b>SAVE PRESET</b>"
savePresetBtn.TextColor3 = C_TEXT
savePresetBtn.TextSize = 10

Instance.new("UICorner", savePresetBtn).CornerRadius = UDim.new(0, 6)

deletePresetBtn = Instance.new("TextButton", presetsCard)
deletePresetBtn.Size = UDim2.new(0.38, 0, 0, 33)
deletePresetBtn.Position = UDim2.new(0.6, 0, 0, 124)
deletePresetBtn.BackgroundColor3 = C_DANGER
deletePresetBtn.Font = FONT_BOLD
deletePresetBtn.RichText = true
deletePresetBtn.Text = "<b>DELETE PRESET</b>"
deletePresetBtn.TextColor3 = C_TEXT
deletePresetBtn.TextSize = 10

Instance.new("UICorner", deletePresetBtn).CornerRadius = UDim.new(0, 6)

function rebuildPresetSelectionList()
  for index40, value55 in ipairs(presetSelectScroll:GetChildren()) do
    if value55:IsA("TextButton") then
      value55:Destroy()
    end
  end

  count = 0

  for key17, value56 in pairs(savedThemePresets) do
    local Key17 = key17
    count = count + 1

    itemBtn = Instance.new("TextButton", presetSelectScroll)
    itemBtn.Size = UDim2.new(1, -4, 0, 24)

    local ItemBtn = itemBtn
    ItemBtn.BackgroundColor3 = selectedPresetName == Key17 and C_ACCENT or C_PRESET_SELECTION

    itemBtn.Font = FONT_MEDIUM
    itemBtn.RichText = true
    itemBtn.Text = "<b>" .. Key17 .. "</b>"
    itemBtn.TextColor3 = C_TEXT
    itemBtn.TextSize = 10

    Instance.new("UICorner", itemBtn).CornerRadius = UDim.new(0, 4)
    presetButtonsMap[Key17] = itemBtn

    itemBtn.MouseButton1Click:Connect(function()
      selectedPresetName = Key17

      for key18, value57 in pairs(presetButtonsMap) do
        if value57 and value57.Parent then
          value57.BackgroundColor3 = key18 == selectedPresetName and C_ACCENT
            or C_PRESET_SELECTION
        end
      end
    end)
  end

  presetSelectScroll.CanvasSize = UDim2.new(0, 0, 0, count * 28 + 4)
end

rebuildPresetSelectionList()

loadPresetBtn.MouseButton1Click:Connect(function()
  local v465 = savedThemePresets[selectedPresetName]

  if v465 then
    C_BG = v465.BG
    C_SIDEBAR = v465.SIDEBAR
    C_CARD = v465.CARD
    C_PROFILE = v465.PROFILE or Color3.fromRGB(18, 18, 25)
    C_ACCENT = v465.ACCENT or C_ACCENT
    C_BUTTON = v465.BUTTON or C_ACCENT
    C_SECTION_HEADER = v465.SECTION_HEADER or C_ACCENT
    C_STATBOX = v465.STATBOX or Color3.fromRGB(18, 18, 25)
    C_DASHBOARD_LIVE = v465.DASHBOARD_LIVE or Color3.fromRGB(18, 18, 25)
    C_CONTAINERS = v465.CONTAINERS or Color3.fromRGB(18, 18, 26)
    C_PRESET_SELECTION = v465.PRESET_SELECTION or Color3.fromRGB(24, 24, 34)
    C_CONFIG_SELECTION = v465.CONFIG_SELECTION or Color3.fromRGB(24, 24, 34)
    C_SLIDER = v465.SLIDER or v465.CONFIG_SELECTION or C_ACCENT
    C_DROPDOWN_BUTTON = v465.DROPDOWN_BUTTON or Color3.fromRGB(32, 38, 56)

    if giftDropdownBtn and giftDropdownBtn.Parent then
      giftDropdownBtn.BackgroundColor3 = C_DROPDOWN_BUTTON
      giftDropdownBtn.TextColor3 = contrastTextColor(C_DROPDOWN_BUTTON)
    end

    MainFrame.BackgroundColor3 = C_BG
    Sidebar.BackgroundColor3 = C_SIDEBAR
    ProfileCard.BackgroundColor3 = C_PROFILE

    for index41, value58 in ipairs(cardsList) do
      if value58 and value58.Parent then
        value58.BackgroundColor3 = C_CARD
      end
    end

    updateAllDynamicElementsColor()
    rebuildPresetSelectionList()

    if rebuildConfigSelectionList then
      rebuildConfigSelectionList()
    end

    applyDropdownThemeColors()
    sendNotification("Preset Loaded", "Loaded theme: " .. selectedPresetName, 3)
  end
end)

function showInputDialog(p137, p138, p139, p140, p141)
  local Frame_10 = Instance.new("Frame", ScreenGui)
  Frame_10.Size = UDim2.new(1, 0, 1, 36)
  Frame_10.Position = UDim2.new(0, 0, 0, -36)
  Frame_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  Frame_10.BackgroundTransparency = 1
  Frame_10.ZIndex = 100

  local Frame_11 = Instance.new("Frame", Frame_10)
  Frame_11.Size = UDim2.new(0, 0, 0, 0)
  Frame_11.Position = UDim2.new(0.5, 0, 0.5, 0)
  Frame_11.BackgroundColor3 = C_BG
  Frame_11.BorderSizePixel = 0
  Frame_11.ClipsDescendants = true
  Frame_11.ZIndex = 101

  Instance.new("UICorner", Frame_11).CornerRadius = UDim.new(0, 12)

  local UIStroke_4 = Instance.new("UIStroke", Frame_11)
  UIStroke_4.Color = Color3.fromRGB(60, 60, 80)
  UIStroke_4.Thickness = 1

  local TextLabel_13 = Instance.new("TextLabel", Frame_11)
  TextLabel_13.Size = UDim2.new(1, -30, 0, 30)
  TextLabel_13.Position = UDim2.new(0, 15, 0, 15)
  TextLabel_13.BackgroundTransparency = 1
  TextLabel_13.Font = FONT_BOLD
  TextLabel_13.RichText = true
  TextLabel_13.Text = "<b>" .. p137 .. "</b>"
  TextLabel_13.TextColor3 = C_TEXT
  TextLabel_13.TextSize = 14
  TextLabel_13.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_13.ZIndex = 102

  local TextLabel_14 = Instance.new("TextLabel", Frame_11)
  TextLabel_14.Size = UDim2.new(1, -30, 0, 30)
  TextLabel_14.Position = UDim2.new(0, 15, 0, 45)
  TextLabel_14.BackgroundTransparency = 1
  TextLabel_14.Font = FONT_MEDIUM
  TextLabel_14.RichText = true
  TextLabel_14.Text = "<b>" .. p138 .. "</b>"
  TextLabel_14.TextColor3 = C_SUBTEXT
  TextLabel_14.TextSize = 11
  TextLabel_14.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_14.ZIndex = 102

  local TextBox = Instance.new("TextBox", Frame_11)
  TextBox.Size = UDim2.new(1, -30, 0, 34)
  TextBox.Position = UDim2.new(0, 15, 0, 78)
  TextBox.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
  TextBox.Font = FONT_BOLD
  TextBox.PlaceholderText = p139 or "Enter name..."
  TextBox.Text = ""
  TextBox.TextColor3 = C_TEXT
  TextBox.TextSize = 11
  TextBox.ZIndex = 102

  Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 8)

  local function f20()
    TweenService:Create(
      Frame_10, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
      { BackgroundTransparency = 1 }
    ):Play()

    TweenService:Create(
      Frame_11, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.In),
      { Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0) }
    ):Play()

    task.wait(0.2)
    Frame_10:Destroy()
  end

  local TextButton_11 = Instance.new("TextButton", Frame_11)
  TextButton_11.Size = UDim2.new(0.48, -5, 0, 34)
  TextButton_11.Position = UDim2.new(0, 15, 1, -45)
  TextButton_11.BackgroundColor3 = C_SUCCESS
  TextButton_11.Font = FONT_BOLD
  TextButton_11.RichText = true
  TextButton_11.Text = "<b>CONTINUE</b>"
  TextButton_11.TextColor3 = C_TEXT
  TextButton_11.TextSize = 11
  TextButton_11.ZIndex = 102

  Instance.new("UICorner", TextButton_11).CornerRadius = UDim.new(0, 8)

  local TextButton_12 = Instance.new("TextButton", Frame_11)
  TextButton_12.Size = UDim2.new(0.48, -5, 0, 34)
  TextButton_12.Position = UDim2.new(0.52, 0, 1, -45)
  TextButton_12.BackgroundColor3 = C_DANGER
  TextButton_12.Font = FONT_BOLD
  TextButton_12.RichText = true
  TextButton_12.Text = "<b>CANCEL</b>"
  TextButton_12.TextColor3 = C_TEXT
  TextButton_12.TextSize = 11
  TextButton_12.ZIndex = 102

  Instance.new("UICorner", TextButton_12).CornerRadius = UDim.new(0, 8)

  TextButton_11.MouseButton1Click:Connect(function()
    local Text = TextBox.Text
    f20()

    if p140 then
      p140(Text)
    end
  end)

  TextButton_12.MouseButton1Click:Connect(function()
    f20()

    if p141 then
      p141()
    end
  end)

  TweenService:Create(
    Frame_10, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { BackgroundTransparency = 0.4 }
  ):Play()

  TweenService:Create(Frame_11, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 350, 0, 185),
    Position = UDim2.new(0.5, -175, 0.5, -92.5),
  }):Play()
end

savePresetBtn.MouseButton1Click:Connect(function()
  showInputDialog("💾 Save Custom Preset", "Enter a name for your custom color preset:", "My Custom Theme", function(p142)
    if p142 and p142 ~= "" then
      savedThemePresets[p142] = {
        BG = C_BG,
        SIDEBAR = C_SIDEBAR,
        CARD = C_CARD,
        PROFILE = C_PROFILE,
        ACCENT = C_ACCENT,
        BUTTON = C_BUTTON,
        SECTION_HEADER = C_SECTION_HEADER,
        STATBOX = C_STATBOX,
        DASHBOARD_LIVE = C_DASHBOARD_LIVE,
        CONTAINERS = C_CONTAINERS,
        PRESET_SELECTION = C_PRESET_SELECTION,
        CONFIG_SELECTION = C_CONFIG_SELECTION,
        SLIDER = C_SLIDER,
        DROPDOWN_BUTTON = C_DROPDOWN_BUTTON,
      }

      savePresetsToFile()
      selectedPresetName = p142
      rebuildPresetSelectionList()
      sendNotification("Preset Saved", "Successfully saved preset: " .. p142, 3)
    else
      sendNotification("Error", "Preset name cannot be empty!", 3)
    end
  end, function() end)
end)

function showConfirmDialogCustom(p143, p144, p145)
  local Frame_12 = Instance.new("Frame", ScreenGui)
  Frame_12.Size = UDim2.new(1, 0, 1, 36)
  Frame_12.Position = UDim2.new(0, 0, 0, -36)
  Frame_12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  Frame_12.BackgroundTransparency = 1
  Frame_12.ZIndex = 100

  local Frame_13 = Instance.new("Frame", Frame_12)
  Frame_13.Size = UDim2.new(0, 0, 0, 0)
  Frame_13.Position = UDim2.new(0.5, 0, 0.5, 0)
  Frame_13.BackgroundColor3 = C_BG
  Frame_13.BorderSizePixel = 0
  Frame_13.ClipsDescendants = true
  Frame_13.ZIndex = 101

  Instance.new("UICorner", Frame_13).CornerRadius = UDim.new(0, 12)

  local UIStroke_5 = Instance.new("UIStroke", Frame_13)
  UIStroke_5.Color = Color3.fromRGB(60, 60, 80)
  UIStroke_5.Thickness = 1

  local TextLabel_15 = Instance.new("TextLabel", Frame_13)
  TextLabel_15.Size = UDim2.new(1, -30, 0, 30)
  TextLabel_15.Position = UDim2.new(0, 15, 0, 15)
  TextLabel_15.BackgroundTransparency = 1
  TextLabel_15.Font = FONT_BOLD
  TextLabel_15.RichText = true
  TextLabel_15.Text = "<b>" .. p143 .. "</b>"
  TextLabel_15.TextColor3 = C_TEXT
  TextLabel_15.TextSize = 14
  TextLabel_15.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_15.ZIndex = 102

  local TextLabel_16 = Instance.new("TextLabel", Frame_13)
  TextLabel_16.Size = UDim2.new(1, -30, 0, 45)
  TextLabel_16.Position = UDim2.new(0, 15, 0, 45)
  TextLabel_16.BackgroundTransparency = 1
  TextLabel_16.Font = FONT_MEDIUM
  TextLabel_16.RichText = true
  TextLabel_16.Text = "<b>" .. p144 .. "</b>"
  TextLabel_16.TextColor3 = C_SUBTEXT
  TextLabel_16.TextSize = 11
  TextLabel_16.TextWrapped = true
  TextLabel_16.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_16.ZIndex = 102

  local function f21()
    TweenService:Create(
      Frame_12, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
      { BackgroundTransparency = 1 }
    ):Play()

    TweenService:Create(
      Frame_13, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.In),
      { Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0) }
    ):Play()

    task.wait(0.2)
    Frame_12:Destroy()
  end

  local TextButton_13 = Instance.new("TextButton", Frame_13)
  TextButton_13.Size = UDim2.new(0.48, -5, 0, 34)
  TextButton_13.Position = UDim2.new(0, 15, 1, -45)
  TextButton_13.BackgroundColor3 = C_DANGER
  TextButton_13.Font = FONT_BOLD
  TextButton_13.RichText = true
  TextButton_13.Text = "<b>CONTINUE</b>"
  TextButton_13.TextColor3 = C_TEXT
  TextButton_13.TextSize = 11
  TextButton_13.ZIndex = 102

  Instance.new("UICorner", TextButton_13).CornerRadius = UDim.new(0, 8)

  local TextButton_14 = Instance.new("TextButton", Frame_13)
  TextButton_14.Size = UDim2.new(0.48, -5, 0, 34)
  TextButton_14.Position = UDim2.new(0.52, 0, 1, -45)
  TextButton_14.BackgroundColor3 = Color3.fromRGB(60, 60, 75)
  TextButton_14.Font = FONT_BOLD
  TextButton_14.RichText = true
  TextButton_14.Text = "<b>CANCEL</b>"
  TextButton_14.TextColor3 = C_TEXT
  TextButton_14.TextSize = 11
  TextButton_14.ZIndex = 102

  Instance.new("UICorner", TextButton_14).CornerRadius = UDim.new(0, 8)

  TextButton_13.MouseButton1Click:Connect(function()
    f21()

    if p145 then
      p145()
    end
  end)

  TextButton_14.MouseButton1Click:Connect(function() f21() end)

  TweenService:Create(
    Frame_12, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { BackgroundTransparency = 0.4 }
  ):Play()

  TweenService:Create(Frame_13, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 350, 0, 160),
    Position = UDim2.new(0.5, -175, 0.5, -80),
  }):Play()
end

deletePresetBtn.MouseButton1Click:Connect(function()
  if not selectedPresetName then
    sendNotification("Error", "No preset selected!", 3)
    return
  end

  showConfirmDialogCustom("🗑️ Delete Preset", "Are you sure you want to delete the preset '" .. selectedPresetName
    .. "'? This action cannot be undone.", function()
    if savedThemePresets[selectedPresetName] then
      savedThemePresets[selectedPresetName] = nil
      savePresetsToFile()
      local NextItem = next(savedThemePresets)

      if NextItem then
        selectedPresetName = NextItem
      else
        selectedPresetName = ""
      end

      rebuildPresetSelectionList()
      sendNotification("Preset Deleted", "Successfully deleted configuration.", 3)
    end
  end)
end)

createSectionHeader(Tabs.Graphics, "Performance")
local v467

render3dCard, v467 = createToggleCard(Tabs.Graphics, "🖥️ DISABLE 3D RENDER", "Disables 3D rendering to reduce GPU load.", function() return disable3DRendering end, function(p146)
  function v13588()
    RunService:Set3dRenderingEnabled(not disable3DRendering)
  end

  disable3DRendering = p146

  if BlackOverlay then
    BlackOverlay.Visible = disable3DRendering
  end
end)

render3dBtn = v467
potatoCard = createCard(Tabs.Graphics, "🥔 POTATO MODE", 72)
createDescriptionLabel(potatoCard, "Minimum quality; removes textures and effects.")

potatoBtn = Instance.new("TextButton", potatoCard)
potatoBtn.Size = UDim2.new(0.35, 0, 0, 28)
potatoBtn.Position = UDim2.new(0.62, 0, 0, 30)
potatoBtn.BackgroundColor3 = C_DANGER
potatoBtn.Font = FONT_BOLD
potatoBtn.RichText = true
potatoBtn.Text = "<b>DISABLED</b>"
potatoBtn.TextColor3 = C_TEXT
potatoBtn.TextSize = 11

Instance.new("UICorner", potatoBtn).CornerRadius = UDim.new(0, 6)
createSectionHeader(Tabs.Settings, "Server")
rejoinCard = createCard(Tabs.Settings, "🔄 REJOIN", 72)
createDescriptionLabel(rejoinCard, "Rejoins the current server.")

rejoinBtn = Instance.new("TextButton", rejoinCard)
rejoinBtn.Size = UDim2.new(0.35, 0, 0, 28)
rejoinBtn.Position = UDim2.new(0.62, 0, 0, 30)
rejoinBtn.BackgroundColor3 = C_BUTTON
rejoinBtn.Font = FONT_BOLD
rejoinBtn.RichText = true
rejoinBtn.Text = "<b>REJOIN</b>"
rejoinBtn.TextColor3 = C_TEXT
rejoinBtn.TextSize = 11

Instance.new("UICorner", rejoinBtn).CornerRadius = UDim.new(0, 6)
hopCard = createCard(Tabs.Settings, "🔀 SERVER HOP", 72)
createDescriptionLabel(hopCard, "Joins a different public server.")

hopBtn = Instance.new("TextButton", hopCard)
hopBtn.Size = UDim2.new(0.35, 0, 0, 28)
hopBtn.Position = UDim2.new(0.62, 0, 0, 30)
hopBtn.BackgroundColor3 = C_BUTTON
hopBtn.Font = FONT_BOLD
hopBtn.RichText = true
hopBtn.Text = "<b>SERVER HOP</b>"
hopBtn.TextColor3 = C_TEXT
hopBtn.TextSize = 11

Instance.new("UICorner", hopBtn).CornerRadius = UDim.new(0, 6)
createSectionHeader(Tabs.Settings, "Controls")
keybindCard = createCard(Tabs.Settings, "⌨️ TOGGLE KEYBIND", 72)
createDescriptionLabel(keybindCard, "Click, then press a key to rebind.")

keybindBtn = Instance.new("TextButton", keybindCard)
keybindBtn.Size = UDim2.new(0.35, 0, 0, 28)
keybindBtn.Position = UDim2.new(0.62, 0, 0, 30)
keybindBtn.BackgroundColor3 = C_BUTTON
keybindBtn.Font = FONT_BOLD
keybindBtn.RichText = true
keybindBtn.Text = "<b>Key: Insert</b>"
keybindBtn.TextColor3 = C_TEXT
keybindBtn.TextSize = 11

Instance.new("UICorner", keybindBtn).CornerRadius = UDim.new(0, 6)
unloadCard = createCard(Tabs.Settings, "🚪 UNLOAD", 72)
createDescriptionLabel(unloadCard, "Stops all tasks and removes the UI.")

unloadBtn = Instance.new("TextButton", unloadCard)
unloadBtn.Size = UDim2.new(0.35, 0, 0, 28)
unloadBtn.Position = UDim2.new(0.62, 0, 0, 30)
unloadBtn.BackgroundColor3 = C_DANGER
unloadBtn.Font = FONT_BOLD
unloadBtn.RichText = true
unloadBtn.Text = "<b>UNLOAD</b>"
unloadBtn.TextColor3 = C_TEXT
unloadBtn.TextSize = 11

Instance.new("UICorner", unloadBtn).CornerRadius = UDim.new(0, 6)
createSectionHeader(Tabs.Settings, "Configs")
configCard = createCard(Tabs.Settings, "💾 CONFIGS", 220)

configSelectScroll = Instance.new("ScrollingFrame", configCard)
configSelectScroll.Size = UDim2.new(0.58, -10, 0, 134)
configSelectScroll.Position = UDim2.new(0, 12, 0, 52)
configSelectScroll.BackgroundColor3 = C_CONTAINERS
configSelectScroll.BorderSizePixel = 0
configSelectScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
configSelectScroll.ScrollBarThickness = 3

Instance.new("UICorner", configSelectScroll).CornerRadius = UDim.new(0, 6)

configSelectPadding = Instance.new("UIPadding", configSelectScroll)
configSelectPadding.PaddingTop = UDim.new(0, 8)

configListLayout = Instance.new("UIListLayout", configSelectScroll)
configListLayout.SortOrder = Enum.SortOrder.LayoutOrder
configListLayout.Padding = UDim.new(0, 3)

loadConfigBtn = Instance.new("TextButton", configCard)
loadConfigBtn.Size = UDim2.new(0.38, 0, 0, 30)
loadConfigBtn.Position = UDim2.new(0.6, 0, 0, 48)
loadConfigBtn.BackgroundColor3 = C_BUTTON
loadConfigBtn.Font = FONT_BOLD
loadConfigBtn.RichText = true
loadConfigBtn.Text = "<b>LOAD CONFIG</b>"
loadConfigBtn.TextColor3 = C_TEXT
loadConfigBtn.TextSize = 10

Instance.new("UICorner", loadConfigBtn).CornerRadius = UDim.new(0, 6)

saveConfigBtn = Instance.new("TextButton", configCard)
saveConfigBtn.Size = UDim2.new(0.38, 0, 0, 30)
saveConfigBtn.Position = UDim2.new(0.6, 0, 0, 84)
saveConfigBtn.BackgroundColor3 = C_SUCCESS
saveConfigBtn.Font = FONT_BOLD
saveConfigBtn.RichText = true
saveConfigBtn.Text = "<b>SAVE CONFIG</b>"
saveConfigBtn.TextColor3 = C_TEXT
saveConfigBtn.TextSize = 10

Instance.new("UICorner", saveConfigBtn).CornerRadius = UDim.new(0, 6)

deleteConfigBtn = Instance.new("TextButton", configCard)
deleteConfigBtn.Size = UDim2.new(0.38, 0, 0, 30)
deleteConfigBtn.Position = UDim2.new(0.6, 0, 0, 120)
deleteConfigBtn.BackgroundColor3 = C_DANGER
deleteConfigBtn.Font = FONT_BOLD
deleteConfigBtn.RichText = true
deleteConfigBtn.Text = "<b>DELETE CONFIG</b>"
deleteConfigBtn.TextColor3 = C_TEXT
deleteConfigBtn.TextSize = 10

Instance.new("UICorner", deleteConfigBtn).CornerRadius = UDim.new(0, 6)

autoLoadConfigBtn = Instance.new("TextButton", configCard)
autoLoadConfigBtn.Size = UDim2.new(0.38, 0, 0, 30)
autoLoadConfigBtn.Position = UDim2.new(0.6, 0, 0, 156)
autoLoadConfigBtn.BackgroundColor3 = C_BUTTON
autoLoadConfigBtn.Font = FONT_BOLD
autoLoadConfigBtn.RichText = true
autoLoadConfigBtn.Text = "<b>SET AUTO LOAD</b>"
autoLoadConfigBtn.TextColor3 = C_TEXT
autoLoadConfigBtn.TextSize = 10

Instance.new("UICorner", autoLoadConfigBtn).CornerRadius = UDim.new(0, 6)

autoLoadLabel = Instance.new("TextLabel", configCard)
autoLoadLabel.Size = UDim2.new(1, -24, 0, 18)
autoLoadLabel.Position = UDim2.new(0, 12, 0, 196)
autoLoadLabel.BackgroundTransparency = 1
autoLoadLabel.Font = FONT_BOLD
autoLoadLabel.RichText = true

local AutoLoadLabel = autoLoadLabel

AutoLoadLabel.Text = "<b>Auto Loaded Config: </b><font color=\"#" .. string.format(
  "%02X%02X%02X", math.floor(C_SECTION_HEADER.R * 255), math.floor(C_SECTION_HEADER.G * 255),
  math.floor(C_SECTION_HEADER.B * 255)
) .. "\">" .. (autoLoadConfigName or "None") .. "</font>"

autoLoadLabel.TextColor3 = C_TEXT
autoLoadLabel.TextSize = 10
autoLoadLabel.TextXAlignment = Enum.TextXAlignment.Left

configButtonsMap = {}

function updateAutoLoadLabel()
  if not autoLoadLabel or not autoLoadLabel.Parent then
    return
  else
    local C_SECTION_HEADER_2 = C_SECTION_HEADER
    local MathFloor_11 = math.floor((C_SECTION_HEADER_2 and C_SECTION_HEADER.R or 0.447) * 255)
    local MathFloor_12 = math.floor((C_SECTION_HEADER and C_SECTION_HEADER.G or 0.537) * 255)
    local MathFloor_13 = math.floor((C_SECTION_HEADER and C_SECTION_HEADER.B or 0.855) * 255)
    local StringFormat_2 = string.format("%02X%02X%02X", MathFloor_11, MathFloor_12, MathFloor_13)
    autoLoadLabel.Text = ""

    local AutoLoadLabel_2 = autoLoadLabel

    AutoLoadLabel_2.Text = "<b>Auto Loaded Config: </b><font color=\"#" .. StringFormat_2 .. "\">"
      .. tostring(autoLoadConfigName or "None") .. "</font>"

    autoLoadLabel.TextColor3 = C_TEXT
    return
  end
end

function rebuildConfigSelectionList()
  for index42, value59 in ipairs(configSelectScroll:GetChildren()) do
    if value59:IsA("TextButton") then
      value59:Destroy()
    end
  end

  configButtonsMap = {}
  local v474 = 0

  for key19, value60 in pairs(savedConfigs) do
    local Key19 = key19
    v474 = v474 + 1

    local TextButton_15 = Instance.new("TextButton", configSelectScroll)
    TextButton_15.Size = UDim2.new(1, -4, 0, 24)
    TextButton_15.BackgroundColor3 = selectedConfigName == Key19 and C_ACCENT or C_CONFIG_SELECTION
    TextButton_15.Font = FONT_MEDIUM
    TextButton_15.RichText = true
    TextButton_15.Text = "<b>" .. Key19 .. "</b>"
    TextButton_15.TextColor3 = C_TEXT
    TextButton_15.TextSize = 10

    Instance.new("UICorner", TextButton_15).CornerRadius = UDim.new(0, 4)
    configButtonsMap[Key19] = TextButton_15

    TextButton_15.MouseButton1Click:Connect(function()
      selectedConfigName = Key19

      for key20, value61 in pairs(configButtonsMap) do
        if value61 and value61.Parent then
          value61.BackgroundColor3 = key20 == selectedConfigName and C_ACCENT
            or C_CONFIG_SELECTION
        end
      end
    end)
  end

  configSelectScroll.CanvasSize = UDim2.new(0, 0, 0, v474 * 28 + 4)
  updateAutoLoadLabel()
end

rebuildConfigSelectionList()

function makeDraggable(p147, p148)
  local InputBegan = p148.InputBegan
  local v476, position5, position6

  InputBegan:Connect(function(p149)
    if isColorPickerOpen then
      return
    end

    if p149.UserInputType == Enum.UserInputType.MouseButton1
      or p149.UserInputType == Enum.UserInputType.Touch then
      v476 = true
      position5 = p149.Position
      position6 = p147.Position

      p149.Changed:Connect(function()
        if p149.UserInputState == Enum.UserInputState.End then
          v476 = false
        end
      end)
    end
  end)

  local v477

  p148.InputChanged:Connect(function(input10)
    if input10.UserInputType == Enum.UserInputType.MouseMovement
      or input10.UserInputType == Enum.UserInputType.Touch then
      v477 = input10
    end
  end)

  UserInputService.InputChanged:Connect(function(input11)
    if not isColorPickerOpen and input11 == v477 and v476 then
      local v478 = input11.Position - position5

      p147.Position = UDim2.new(
        position6.X.Scale, position6.X.Offset + v478.X, position6.Y.Scale,
        position6.Y.Offset + v478.Y
      )
    end
  end)
end

makeDraggable(MainFrame, WindowHeader)

function showConfirmDialog(p150, p151, p152, p153)
  local Frame_14 = Instance.new("Frame", ScreenGui)
  Frame_14.Size = UDim2.new(1, 0, 1, 36)
  Frame_14.Position = UDim2.new(0, 0, 0, -36)
  Frame_14.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  Frame_14.BackgroundTransparency = 1
  Frame_14.ZIndex = 100

  local Frame_15 = Instance.new("Frame", Frame_14)
  Frame_15.Size = UDim2.new(0, 0, 0, 0)
  Frame_15.Position = UDim2.new(0.5, 0, 0.5, 0)
  Frame_15.BackgroundColor3 = C_BG
  Frame_15.BorderSizePixel = 0
  Frame_15.ClipsDescendants = true
  Frame_15.ZIndex = 101

  Instance.new("UICorner", Frame_15).CornerRadius = UDim.new(0, 12)

  local UIStroke_6 = Instance.new("UIStroke", Frame_15)
  UIStroke_6.Color = Color3.fromRGB(60, 60, 80)
  UIStroke_6.Thickness = 1

  local TextLabel_17 = Instance.new("TextLabel", Frame_15)
  TextLabel_17.Size = UDim2.new(1, -30, 0, 30)
  TextLabel_17.Position = UDim2.new(0, 15, 0, 15)
  TextLabel_17.BackgroundTransparency = 1
  TextLabel_17.Font = FONT_BOLD
  TextLabel_17.RichText = true
  TextLabel_17.Text = "<b>" .. p150 .. "</b>"
  TextLabel_17.TextColor3 = C_TEXT
  TextLabel_17.TextSize = 14
  TextLabel_17.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_17.ZIndex = 102

  local TextLabel_18 = Instance.new("TextLabel", Frame_15)
  TextLabel_18.Size = UDim2.new(1, -30, 0, 50)
  TextLabel_18.Position = UDim2.new(0, 15, 0, 45)
  TextLabel_18.BackgroundTransparency = 1
  TextLabel_18.Font = FONT_MEDIUM
  TextLabel_18.RichText = true
  TextLabel_18.Text = "<b>" .. p151 .. "</b>"
  TextLabel_18.TextColor3 = C_SUBTEXT
  TextLabel_18.TextSize = 11
  TextLabel_18.TextWrapped = true
  TextLabel_18.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel_18.ZIndex = 102

  local function f22()
    TweenService:Create(
      Frame_14, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
      { BackgroundTransparency = 1 }
    ):Play()

    TweenService:Create(
      Frame_15, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.In),
      { Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0) }
    ):Play()

    task.wait(0.2)
    Frame_14:Destroy()
  end

  if p153 then
    local TextButton_16 = Instance.new("TextButton", Frame_15)
    TextButton_16.Size = UDim2.new(0.48, -5, 0, 34)
    TextButton_16.Position = UDim2.new(0, 15, 1, -45)
    TextButton_16.BackgroundColor3 = C_BUTTON

    table.insert(staticAccentButtonsList, TextButton_16)

    TextButton_16.Font = FONT_BOLD
    TextButton_16.RichText = true
    TextButton_16.Text = "<b>CONTINUE</b>"
    TextButton_16.TextColor3 = C_TEXT
    TextButton_16.TextSize = 11
    TextButton_16.ZIndex = 102

    Instance.new("UICorner", TextButton_16).CornerRadius = UDim.new(0, 8)

    local TextButton_17 = Instance.new("TextButton", Frame_15)
    TextButton_17.Size = UDim2.new(0.48, -5, 0, 34)
    TextButton_17.Position = UDim2.new(0.52, 0, 1, -45)
    TextButton_17.BackgroundColor3 = C_DANGER
    TextButton_17.Font = FONT_BOLD
    TextButton_17.RichText = true
    TextButton_17.Text = "<b>CANCEL</b>"
    TextButton_17.TextColor3 = C_TEXT
    TextButton_17.TextSize = 11
    TextButton_17.ZIndex = 102

    Instance.new("UICorner", TextButton_17).CornerRadius = UDim.new(0, 8)

    TextButton_16.MouseButton1Click:Connect(function()
      f22()

      if p152 then
        p152()
      end
    end)

    TextButton_17.MouseButton1Click:Connect(function()
      f22()

      if p153 then
        p153()
      end
    end)
  else
    local TextButton_18 = Instance.new("TextButton", Frame_15)
    TextButton_18.Size = UDim2.new(1, -30, 0, 34)
    TextButton_18.Position = UDim2.new(0, 15, 1, -45)
    TextButton_18.BackgroundColor3 = C_BUTTON

    table.insert(staticAccentButtonsList, TextButton_18)

    TextButton_18.Font = FONT_BOLD
    TextButton_18.RichText = true
    TextButton_18.Text = "<b>CONTINUE</b>"
    TextButton_18.TextColor3 = C_TEXT
    TextButton_18.TextSize = 11
    TextButton_18.ZIndex = 102

    Instance.new("UICorner", TextButton_18).CornerRadius = UDim.new(0, 8)

    TextButton_18.MouseButton1Click:Connect(function()
      f22()

      if p152 then
        p152()
      end
    end)
  end

  TweenService:Create(
    Frame_14, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { BackgroundTransparency = 0.4 }
  ):Play()

  TweenService:Create(Frame_15, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 350, 0, 165),
    Position = UDim2.new(0.5, -175, 0.5, -82.5),
  }):Play()
end

MainFrame.Visible = true

TweenService:Create(
  MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
  { Size = UDim2.new(0, 620, 0, 420), BackgroundTransparency = 0 }
):Play()

sendNotification("PS99 Farm Injected", "Script successfully loaded & executed!", 4)

keybindBtn.MouseButton1Click:Connect(function()
  isListeningForKey = true
  keybindBtn.Text = "<b>Press Any Key...</b>"
  keybindBtn.BackgroundColor3 = Color3.fromRGB(200, 150, 0)
end)

inputConnection = nil

inputConnection = UserInputService.InputBegan:Connect(function(input12, p154)
  if not scriptRunning then
    return
  end

  if isListeningForKey then
    if input12.UserInputType == Enum.UserInputType.Keyboard then
      currentToggleKey = input12.KeyCode

      keybindBtn.Text = "<b>Key: " .. currentToggleKey.Name .. "</b>"
      keybindBtn.BackgroundColor3 = C_BUTTON

      isListeningForKey = false
    end

    return
  end

  if not p154 and input12.KeyCode == currentToggleKey then
    uiVisible = not uiVisible
    MainFrame.Visible = uiVisible
  end
end)

function applyFPSCap(p155)
  if setfpscap then
    setfpscap(p155)
  end
end

function validateFPSInput()
  local ToNumber_16 = tonumber(fpsInput.Text)

  if ToNumber_16 and ToNumber_16 > 0 and ToNumber_16 <= 360 then
    customFPS = math.floor(ToNumber_16)
  end

  fpsInput.Text = tostring(customFPS)
end

fpsBtn.MouseButton1Click:Connect(function()
  validateFPSInput()
  isCustomFPS = not isCustomFPS

  if isCustomFPS then
    applyFPSCap(customFPS)
    fpsBtn.Text = "<b>FPS: " .. customFPS .. "</b>"
    fpsBtn.BackgroundColor3 = C_DANGER
  else
    applyFPSCap(normalFPS)
    fpsBtn.Text = "<b>FPS: Normal</b>"
    fpsBtn.BackgroundColor3 = C_BUTTON
  end
end)

fpsInput.FocusLost:Connect(function(p156)
  if p156 then
    validateFPSInput()
  end
end)

rejoinBtn.MouseButton1Click:Connect(function() rejoinServer() end)
hopBtn.MouseButton1Click:Connect(function() serverHop() end)

function executePotatoMode()
  potatoModeEnabled = true

  potatoBtn.Text = "<b>ENABLED</b>"
  potatoBtn.BackgroundColor3 = C_SUCCESS

  pcall(function()
    local UserSettings_2 = UserSettings()
    UserSettings_2:GetService("UserGameSettings").SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1

    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9000000000
    Lighting.Brightness = 0

    for index43, value62 in ipairs(Lighting:GetChildren()) do
      value62:Destroy()
    end

    local function f23(p157)
      if p157:IsA("BasePart") then
        p157.Material = Enum.Material.SmoothPlastic
        p157.CastShadow = false
        p157.Reflectance = 0
      else
        local IsType = p157:IsA("Decal")
        local Decal = IsType

        if not IsType then
          local IsType_2 = p157:IsA("Texture")
          local Texture = IsType_2

          if not IsType_2 then
            local IsType_3 = p157:IsA("Shirt")

            local IsType_4 = IsType_3 or p157:IsA("Pants") or p157:IsA("ShirtGraphic")
              or p157:IsA("ParticleEmitter") or p157:IsA("Trail") or p157:IsA("Smoke")
              or p157:IsA("Fire") or p157:IsA("Sparkles") or p157:IsA("Light")

            Texture = IsType_4
          end

          Decal = Texture
        end

        if Decal then
          p157:Destroy()
        end
      end
    end

    for index44, value63 in ipairs(workspace:GetDescendants()) do
      f23(value63)
    end

    workspace.DescendantAdded:Connect(function(descendant)
      if potatoModeEnabled then
        f23(descendant)
      end
    end)

    local Terrain = workspace:FindFirstChildOfClass("Terrain")

    if Terrain then
      Terrain.WaterWaveSize = 0
      Terrain.WaterWaveSpeed = 0
      Terrain.WaterReflectance = 0
      Terrain.WaterTransparency = 0
    end
  end)
end

potatoBtn.MouseButton1Click:Connect(function()
  if not potatoModeEnabled then
    showConfirmDialog(
      "🥔 Potato Mode Warning",
      "Enabling Potato Mode will remove textures and shadows to maximize performance. Do you want to proceed?",
      function() executePotatoMode() end, function() end
    )
  end
end)

unloadBtn.MouseButton1Click:Connect(function()
  scriptRunning = false
  antiAfkEnabled = false
  autoGiftsActive = false
  autoFreeGiftsActive = false
  autoJoinEventEnabled = false
  autoZoneLootEnabled = false

  if autoZoneLootLoopThread then
    autoZoneLootLoopThread = nil
  end

  autoMinigamesEnabled = false

  if autoMinigamesLoopThread then
    autoMinigamesLoopThread = nil
  end

  pinataIsRunning = false
  pinataAutoTeleport = false
  autoChestsEnabled = false

  if autoChestsLoopThread then
    autoChestsLoopThread = nil
  end

  autoBoostEnabled = false

  if autoBoostLoopThread then
    autoBoostLoopThread = nil
  end

  autoArcadeBoostEnabled = false

  if autoArcadeBoostLoopThread then
    autoArcadeBoostLoopThread = nil
  end

  autoBuyLuckBoostEnabled = false

  if autoBuyLuckBoostLoopThread then
    autoBuyLuckBoostLoopThread = nil
  end

  autoHatchEnabled = false

  if autoHatchLoopThread then
    autoHatchLoopThread = nil
  end

  autoHatchTeleportDone = false
  autoHatchLastTargetUid = nil
  autoBuyUpgradesEnabled = false

  if autoBuyUpgradesLoopThread then
    autoBuyUpgradesLoopThread = nil
  end

  clearPinataTeleportFreeze()

  if pinataLoopThread then
    pinataLoopThread = nil
  end

  RunService:Set3dRenderingEnabled(true)
  applyFPSCap(normalFPS)

  if inputConnection then
    inputConnection:Disconnect()
  end

  ScreenGui:Destroy()
end)

for index45, value64 in ipairs(ScreenGui:GetDescendants()) do
  if value64:IsA("TextLabel") or value64:IsA("TextButton") or value64:IsA("TextBox") then
    value64.RichText = true
  end
end

require(game.ReplicatedStorage.Library.Client.EventUpgradeCmds)
require(game.ReplicatedStorage.Library.Directory.EventUpgrades)

function startAutoBoostMachineLoop()
  if autoBoostMachineLoopThread then
    autoBoostMachineLoopThread = nil
  end

  autoBoostMachineLoopThread = task.spawn(function()
    while autoBoostMachineEnabled and scriptRunning do
      pcall(function()
        local Module_44 = require(game.ReplicatedStorage.Library.Util.CoinArcadeBoostMachine)
        local Module_45 = require(game.ReplicatedStorage.Library.Client.CoinArcadeBoostMachineCmds)
        local Module_46 = require(game.ReplicatedStorage.Library.Client.Save)
        local Module_47 = require(game.ReplicatedStorage.Library.Client.Network)
        local Module_48 = require(game.ReplicatedStorage.Library.Items.CurrencyItem)
        local Module_49 = require(game.ReplicatedStorage.Library.Functions)

        if Module_44 and Module_45 and Module_46 and Module_47 and Module_48 then
          local Get_8 = Module_46.Get()
          local v487_2 = Module_48(Module_44.CurrencyId)
          local CountAny = v487_2 and v487_2:CountAny() or 0

          for key21, value65 in pairs(autoBoostMachineSelected) do
            local Key21 = key21

            if not autoBoostMachineEnabled or not scriptRunning then
              break
            elseif value65 then
              local GetBoostTime = Module_44.GetBoostTime(Get_8, Key21) or 0

              if GetBoostTime <= 16 then
                local GetPerTokenSecondsForBoost = Module_45.GetPerTokenSecondsForBoost(Key21) or 0
                local GetMaxBoostSeconds = Module_45.GetMaxBoostSeconds() or 0
                local v495 = 0

                if GetPerTokenSecondsForBoost > 0 then
                  local MathMax_7 = math.max(0, GetMaxBoostSeconds - GetBoostTime)
                  local MathFloor_14 = math.floor(MathMax_7 / GetPerTokenSecondsForBoost)
                  v495 = math.max(0, math.min(MathFloor_14, math.floor(CountAny)))
                end

                local v498 = ({ Third = 0.33333333333333, TwoThirds = 0.66666666666667, Max = 1 })[autoBoostMachineFraction]
                  or 1

                local v499 = 0

                if v495 > 0 then
                  v499 = math.clamp(math.max(1, math.floor(v495 * v498)), 1, v495)
                end

                if v499 > 0 then
                  local v500, v501 = pcall(function()
                    return Module_47.Invoke("EC_Renew", Key21, v499)
                  end)

                  if v500 and sendNotification then
                    local ToString_3 = tostring(v499)

                    if Module_49 and Module_49.NumberShorten then
                      pcall(function() ToString_3 = Module_49.NumberShorten(v499) end)
                    end

                    sendNotification("Boost Machine", "Successfully bought " .. Key21 .. " using " .. ToString_3
                      .. " Tokens!", 3)
                  end

                  CountAny = CountAny - v499
                  task.wait(0.5)
                end
              end
            end
          end
        end

        pcall(function()
          if typeof(syncAllTogglesUI) == "function" then
            syncAllTogglesUI()
          end
        end)
      end)

      task.wait(3)
    end

    autoBoostMachineLoopThread = nil
  end)
end

lastSquadSignature = ""
squadOptimizeBusy = false

function runSquadOptimizationEngine(p158)
  if squadOptimizeBusy then
    if p158 and sendNotification then
      sendNotification("Squad", "Busy...", 2)
    end

    return
  else
    squadOptimizeBusy = true

    local v503, v504 = pcall(function()
      local LocalPlayer = Players.LocalPlayer
      local Module_50 = require(game.ReplicatedStorage.Library.Items.ArcadeUnitItem)
      local Module_51 = require(game.ReplicatedStorage.Library.Client.InstanceZoneCmds)
      local Module_52 = require(game.ReplicatedStorage.Library.Client.CoinArcadeCmds)
      local Module_53 = require(game.ReplicatedStorage.Library.Util.CoinArcadeCommon)
      local Module_54 = require(game.ReplicatedStorage.Library.Util.CoinArcadeLevels)
      pcall(function() require(game.ReplicatedStorage.Library.Util.CoinArcadePower) end)
      require(game.ReplicatedStorage.Library.Client.Save)
      local Network = ReplicatedStorage:FindFirstChild("Network")

      local V510 = Network
        and Network:FindFirstChild("Instancing_InvokeCustomFromClient")

      local v511 = not Module_50 or not Module_52 or not Module_53
      local v512, v513, humanoidRootPart6, cframe2, v514

      if v511 then
        return
      else
        pcall(function() local LevelFlags = Module_52.LevelFlags() end)

        local function f24()
          local v516 = {}

          table.sort(v516, function(p159, p160)
            if p159.power ~= p160.power then
              return p159.power > p160.power
            end

            return p159.uid < p160.uid
          end)

          return v516
        end

        v513 = 1
        pcall(function() v513 = tonumber(Module_51.GetMaximumOwnedZoneNumber()) or 1 end)
        v513 = math.max(1, v513)

        local v517 = 4
        v517 = math.max(1, math.min(8, v517))

        local v518 = {}

        if v366 == "Optimize for Boss" then
          for i7 = 1, v517 do
            table.insert(v518, { mode = "Boss", zoneId = 0, slotId = i7 })
          end

          local v519 = v513 - -1

          while true do
            v519 = -1 + v519

            if not (1 <= v519 or false) then
              break
            end

            local V519 = v519
            local v520 = 0

            while true do
              v520 = 1 + v520

              if not (v520 <= 1) then
                break
              end

              table.insert(v518, { mode = "Zone", V519 = V519, slotId = v520 })
            end
          end
        else
          local v521 = 0

          while true do
            v521 = 1 + v521

            if not (v521 <= 1) then
              break
            end

            table.insert(v518, { mode = "Zone", zoneId = v513, slotId = v521 })
          end

          for i8 = 1, v517 do
            table.insert(v518, { mode = "Boss", zoneId = 0, slotId = i8 })
          end

          if v513 > 1 then
            for i9 = v513 - 1, 1, -1 do
              local I9 = i9
              local v523 = 1
              pcall(function() v523 = Module_52.MaxSlots(I9) or 1 end)
              local V523 = v523
              local v525 = 0

              while true do
                v525 = 1 + v525

                if not (v525 <= V523) then
                  break
                end

                table.insert(v518, { mode = "Zone", zoneId = I9, slotId = v525 })
              end
            end
          end
        end

        if sendNotification then
          sendNotification("Squad", "Clearing slots...", 2)
        end

        local Character_6 = LocalPlayer.Character
        humanoidRootPart6 = Character_6 and Character_6:FindFirstChild("HumanoidRootPart")
        cframe2 = humanoidRootPart6 and humanoidRootPart6.CFrame or nil
        local V517 = v517
        local v527 = 0

        while true do
          v527 = 1 + v527

          if not (V517 >= v527) then
            break
          end

          local V527 = v527

          if not scriptRunning then
            break
          end

          pcall(function() Module_52.BossPull(V527) end)

          if V510 then
            pcall(function()
              V510:InvokeServer(
                "CoinArcade", "FD_Release", tonumber(V527)
              )
            end)
          end

          task.wait(0.12)
        end

        for i10 = 1, v513 do
          local I10 = i10

          if not scriptRunning then
            break
          end

          for i11 = 1, 1 do
            local I11 = i11

            if V510 then
              pcall(function()
                V510:InvokeServer(
                  "CoinArcade", "HM_Remove", tonumber(I10), tonumber(I11)
                )
              end)
            end

            task.wait(0.1)
          end
        end

        task.wait(2)
        local f24_2 = f24()

        if #f24_2 == 0 then
          task.wait(1)
          f24_2 = f24()
        end

        if #f24_2 == 0 then
          if p158 and sendNotification then
            sendNotification("Squad", "No Arcade Units in inventory after clear!", 3)
          end

          return
        else
          local v532 = {}

          for index46, value66 in ipairs(f24_2) do
            table.insert(v532, value66.uid .. "_" .. string.format("%.0f", value66.power))
          end

          table.sort(v532)
          local TableConcat = table.concat(v532, "|") .. "#" .. tostring(v366 or "")

          if not p158 and TableConcat == lastSquadSignature then
            return
          else
            lastSquadSignature = TableConcat
            local MathMin_2 = math.min(#v518, #f24_2)

            if sendNotification then
              sendNotification("Squad", string.format(
                "Found %d Arcade Units | placing top %d", #f24_2, MathMin_2
              ), 2)
            end

            v514 = nil
            local v535 = 1
            pcall(function() v514 = Module_52.GetModel() end)

            local function f25(p161)
              if not humanoidRootPart6 or not v512 or not v514 then
                return
              end

              local v536 = nil

              if v536 and v536.CFrame then
                pcall(function()
                  humanoidRootPart6.AssemblyLinearVelocity = Vector3.zero
                  humanoidRootPart6.CFrame = v536.CFrame * CFrame.new(0, 4, 0)
                end)

                task.wait(0.25)
              end
            end

            local v537 = 0

            local function f26(p162, p163)
              local v538 = false
              local v539

              pcall(function()
                if p162.mode == "Boss" then
                  local v540, v541 = Module_52.BossStation(tonumber(p162.slotId), p163)
                  v538 = v540 == true
                  v539 = v541
                else
                  local v542, v543 = Module_52.Station(
                    tonumber(p162.zoneId), tonumber(p162.slotId), p163
                  )

                  v538 = v542 == true
                  v539 = v543
                end
              end)

              if not v538 and V510 then
                pcall(function()
                  local v544, v545

                  if p162.mode == "Boss" then
                    v544, v545 = V510:InvokeServer(
                      "CoinArcade", "NK_Anchor", tonumber(p162.slotId), p163
                    )
                  else
                    v544, v545 = V510:InvokeServer(
                      "CoinArcade", "DL_Insert", tonumber(p162.zoneId), tonumber(p162.slotId),
                      p163
                    )
                  end

                  if v544 == true then
                    v538 = true
                    v539 = nil
                  elseif v545 then
                    v539 = v545
                  end
                end)
              end

              return v538, v539
            end

            local function f27(p164, p165, p166)
              local v546
              return v546
            end

            local v547 = 0
            local v548 = #v518
            local v549 = 0

            while true do
              v549 = 1 + v549

              if not (v548 >= v549) then
                break
              end

              local V549 = v549

              if not scriptRunning then
                break
              elseif v535 > #f24_2 then
                break
              else
                local v551 = v518[V549]
                local v552 = f24_2[v535]

                if not v552 then
                  break
                else
                  f25(v551)

                  if f27(v551.mode, v551.zoneId, v551.slotId) then
                    pcall(function()
                      if v551.mode == "Boss" then
                        Module_52.BossPull(tonumber(v551.slotId))
                      else
                        Module_52.Pull(tonumber(v551.zoneId), tonumber(v551.slotId))
                      end
                    end)

                    task.wait(0.25)
                  end

                  local v553 = false
                  local v554 = nil
                  local v555 = 0

                  while true do
                    v555 = 1 + v555

                    if not (5 >= v555) then
                      break
                    end

                    if not scriptRunning then
                      break
                    else
                      local v556 = false

                      for index47, value67 in ipairs((f24())) do
                        if value67.uid == v552.uid then
                          v556 = true
                          break
                        end
                      end

                      if not v556 then
                        v554 = "unit not in inventory"
                        break
                      else
                        local v557
                        v557, v554 = f26(v551, v552.uid)

                        task.wait(0.45)

                        if f27(v551.mode, v551.zoneId, v551.slotId) == v552.uid then
                          v553 = true
                          break
                        end

                        if v557 then
                          task.wait(0.4)
                          local f27_2 = f27(v551.mode, v551.zoneId, v551.slotId)

                          if f27_2 == v552.uid then
                            v553 = true
                            break
                          end

                          if f27_2 and f27_2 ~= "" then
                            v553 = true
                            break
                          end
                        end

                        task.wait(0.3)
                      end
                    end
                  end

                  if v553 then
                    v537 = v537 + 1
                    v535 = v535 + 1
                  else
                    v547 = v547 + 1
                    v535 = v535 + 1

                    if p158 and v547 <= 6 and sendNotification then
                      sendNotification("Squad", "Skip "
                        .. (v551.mode == "Boss" and "Boss #" .. tostring(v551.slotId)
                          or "Z" .. tostring(v551.zoneId) .. " #" .. tostring(v551.slotId))
                        .. (v554 and " | " .. tostring(v554) or ""), 2)
                    end
                  end

                  task.wait(0.12)
                end
              end
            end

            if humanoidRootPart6 and cframe2 then
              pcall(function()
                humanoidRootPart6.AssemblyLinearVelocity = Vector3.zero
                humanoidRootPart6.CFrame = cframe2
              end)
            end

            pcall(function()
              if Module_52.RefreshUnitTags then
                Module_52.RefreshUnitTags()
              end
            end)

            if sendNotification then
              sendNotification("Squad", string.format(
                "Done! %d placed | %d skipped | %d arcade units", v537, v547, #f24_2
              ), 4)
            end

            return
          end
        end
      end
    end)

    if not v503 and p158 and sendNotification then
      sendNotification("Squad", "Optimize error: " .. tostring(v504), 4)
    end

    squadOptimizeBusy = false
    return
  end
end

function startAutoOptimizePetsLoop()
  if autoOptimizePetsLoopThread then
    autoOptimizePetsLoopThread = nil
  end

  autoOptimizePetsLoopThread = task.spawn(function()
    while autoOptimizePetsEnabled and scriptRunning do
      local v559 = 0

      while v559 < 60 and autoOptimizePetsEnabled and scriptRunning do
        task.wait(1)
        v559 = v559 + 1
      end
    end

    autoOptimizePetsLoopThread = nil
  end)
end

function startAutoBuyUpgradesLoop()
  if autoBuyUpgradesLoopThread then
    autoBuyUpgradesLoopThread = nil
  end

  autoBuyUpgradesLoopThread = task.spawn(function()
    while autoBuyUpgradesEnabled and scriptRunning do
      task.wait(autoBuyUpgradesCooldown)
    end

    autoBuyUpgradesLoopThread = nil
  end)
end

loadConfigBtn.MouseButton1Click:Connect(function()
  if not selectedConfigName or not savedConfigs[selectedConfigName] then
    sendNotification("Error", "No config selected!", 3)
    return
  end

  applyConfigData(savedConfigs[selectedConfigName])

  pcall(function()
    if pinataIsRunning then
      if pinataLoopThread then
        pinataLoopThread = nil
      end

      startPinataLoop()
    else
      if pinataLoopThread then
        pinataLoopThread = nil
      end

      clearPinataTeleportFreeze()
    end
  end)

  pcall(function()
    if autoChestsEnabled then
      startAutoChestsLoop()
    end

    if autoBoostEnabled then
      startAutoBoostLoop()
    end

    if autoArcadeBoostEnabled then
      startAutoArcadeBoostLoop()
    end

    if autoBuyLuckBoostEnabled then
      startAutoBuyLuckBoostLoop()
    end

    if autoHatchEnabled then
      startAutoHatchLoop()
    end

    if autoFreeGiftsActive then
      task.spawn(autoCollectFreeGifts)
    end

    if autoGiftsActive then
      task.spawn(autoCollectGifts)
    end

    if autoZoneLootEnabled then
      startAutoZoneLootLoop()
    end

    if autoMinigamesEnabled then
      startAutoMinigamesLoop()
    end

    if autoBuyUpgradesEnabled then
      startAutoBuyUpgradesLoop()
    end
  end)

  pcall(function()
    if TabButtons and currentTab and TabButtons[currentTab] then
      for key22, value68 in pairs(TabButtons) do
        if value68 and value68.Parent then
          if key22 == currentTab then
            value68.BackgroundColor3 = C_ACCENT
            value68.BackgroundTransparency = 0
            value68.TextColor3 = C_TEXT
          else
            value68.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            value68.BackgroundTransparency = 1
            value68.TextColor3 = C_SUBTEXT
          end
        end
      end
    end
  end)

  sendNotification("Config Loaded", "Loaded: " .. selectedConfigName, 3)
end)

saveConfigBtn.MouseButton1Click:Connect(function()
  showInputDialog("💾 Save Config", "Enter a name for this config:", "My Config", function(p167)
    if p167 and p167 ~= "" then
      savedConfigs[p167] = getCurrentConfigData()
      selectedConfigName = p167
      saveConfigsToFile()
      rebuildConfigSelectionList()
      sendNotification("Config Saved", "Saved: " .. p167, 3)
    end
  end)
end)

deleteConfigBtn.MouseButton1Click:Connect(function()
  if not selectedConfigName then
    sendNotification("Error", "No config selected!", 3)
    return
  end

  if selectedConfigName == "Default" then
    sendNotification("Error", "Cannot delete Default config!", 3)
    return
  end

  showConfirmDialogCustom("🗑️ Delete Config", "Delete config '" .. selectedConfigName .. "'?", function()
    savedConfigs[selectedConfigName] = nil

    if autoLoadConfigName == selectedConfigName then
      autoLoadConfigName = nil
    end

    selectedConfigName = next(savedConfigs)
    saveConfigsToFile()
    rebuildConfigSelectionList()
    sendNotification("Config Deleted", "Deleted successfully.", 3)
  end)
end)

autoLoadConfigBtn.MouseButton1Click:Connect(function()
  if not selectedConfigName then
    sendNotification("Error", "No config selected!", 3)
    return
  end

  autoLoadConfigName = selectedConfigName
  saveConfigsToFile()
  updateAutoLoadLabel()
  sendNotification("Auto Load Set", "Will auto load: " .. selectedConfigName, 3)
end)

task.spawn(function()
  while scriptRunning do
    if autoJoinEventEnabled then
      local PlayerGui_2 = LocalPlayer:FindFirstChild("PlayerGui")

      local MainLeft_2 = PlayerGui_2 and PlayerGui_2:FindFirstChild("MainLeft")
        and PlayerGui_2.MainLeft:FindFirstChild("Left")
        and PlayerGui_2.MainLeft.Left:FindFirstChild("Tools")
        and PlayerGui_2.MainLeft.Left.Tools:FindFirstChild("JoinEvent")

      if MainLeft_2 and MainLeft_2.Visible then
        task.wait(8)
      else
        task.wait(1.5)
      end
    else
      task.wait(0.5)
    end
  end
end)

task.spawn(function()
  while scriptRunning do
    task.wait(30)

    if not scriptRunning then
      break
    elseif antiAfkEnabled then
      pcall(function()
        if network and network:FindFirstChild("Click") then
          network.Click:FireServer(Ray.new(
            Vector3.new(1089.76, 263.22, -2364.07), Vector3.new(-0.012, -0.384, -0.922)
          ), Vector3.new(1088.81, 240.18, -2433.6))
        end

        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Unknown, false, game)
        task.wait(0.1)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Unknown, false, game)

        if afkStatusLabel and afkStatusLabel.Parent then
          afkStatusLabel.Text = "<b>Status: Pulse Sent!</b>"
          afkStatusLabel.TextColor3 = Color3.fromRGB(241, 196, 15)

          task.wait(2)

          if antiAfkEnabled and afkStatusLabel and afkStatusLabel.Parent then
            afkStatusLabel.Text = "<b>Status: Active</b>"
            afkStatusLabel.TextColor3 = C_SUCCESS
          end
        end
      end)
    end
  end
end)

if autoLoadConfigName and savedConfigs[autoLoadConfigName] then
  applyConfigData(savedConfigs[autoLoadConfigName])
  selectedConfigName = autoLoadConfigName
  rebuildConfigSelectionList()

  pcall(function()
    if pinataIsRunning then
      if pinataLoopThread then
        pinataLoopThread = nil
      end

      startPinataLoop()
    end
  end)

  pcall(function()
    if autoChestsEnabled then
      startAutoChestsLoop()
    end

    if autoBoostEnabled then
      startAutoBoostLoop()
    end

    if autoArcadeBoostEnabled then
      startAutoArcadeBoostLoop()
    end

    if autoBuyLuckBoostEnabled then
      startAutoBuyLuckBoostLoop()
    end

    if autoHatchEnabled then
      startAutoHatchLoop()
    end

    if autoFreeGiftsActive then
      task.spawn(autoCollectFreeGifts)
    end

    if autoGiftsActive then
      task.spawn(autoCollectGifts)
    end

    if autoZoneLootEnabled then
      startAutoZoneLootLoop()
    end

    if autoMinigamesEnabled then
      startAutoMinigamesLoop()
    end

    if autoBuyUpgradesEnabled then
      startAutoBuyUpgradesLoop()
    end
  end)
end
