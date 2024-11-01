from enum import Enum, auto

class Storefront(Enum):
    STEAM = auto(),
    GOG = auto(),

    def get_friendly_name(self):
        match self:
            case Storefront.STEAM:
                return "Steam"
            case Storefront.GOG:
                return "GOG"

class SupportedGame(Enum):
    FALLOUT_3 = auto(),
    FALLOUT_NEW_VEGAS = auto(),
    FALLOUT_4 = auto(),
    SKYRIM = auto(),

    def get_friendly_name(self):
        match self:
            case SupportedGame.FALLOUT_3:
                return "Fallout 3"
            case SupportedGame.FALLOUT_NEW_VEGAS:
                return "Fallout New Vegas"
            case SupportedGame.FALLOUT_4:
                return "Fallout 4"
            case SupportedGame.SKYRIM:
                return "Skyrim"
