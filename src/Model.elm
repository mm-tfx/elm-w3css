module Model exposing (Model, ShowModule(..))


type ShowModule
    = ButtonModule
    | ProgressModule
    | Colors
    | BordersModule


type alias Model =
    { showModule : ShowModule }
