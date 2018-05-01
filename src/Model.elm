module Model exposing (Model, ShowModule(..))


type ShowModule
    = ButtonModule
    | ProgressModule
    | Colors
    | BordersModule
    | CardsModule
    | TablesModule
    | MarginsModule


type alias Model =
    { showModule : ShowModule }
