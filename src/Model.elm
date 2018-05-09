module Model exposing (Animation(..), Model, ShowModule(..))

import Navigation
import UrlParser


type ShowModule
    = Home
    | ButtonModule
    | ProgressModule
    | Colors
    | BordersModule
    | CardsModule
    | TablesModule
    | MarginsModule
    | AccordionModule
    | AnimationsModule


type Animation
    = Top
    | Bottom
    | Left
    | Right
    | Opacity
    | Zoom
    | Fading
    | Spin
    | None


type alias Model =
    { showModule : ShowModule
    , showMenu : Bool
    , showAccordion : Bool
    , animations : Animation
    }
