module Model exposing (Animation(..), Model, ShowModule(..))

import Navigation


type ShowModule
    = ButtonModule
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
    | None


type alias Model =
    { showModule : ShowModule
    , showMenu : Bool
    , showAccordion : Bool
    , page : Navigation.Location
    , animations : Animation
    }
