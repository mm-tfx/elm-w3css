module Model exposing (Model, ShowModule(..))

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


type alias Model =
    { showModule : ShowModule
    , showMenu : Bool
    , showAccordion : Bool
    , page : Navigation.Location
    }
