module Model exposing (Model, ShowModule(..))


type ShowModule
    = ButtonModule
    | ProgressModule
    | Colors


type alias Model =
    { showModule : ShowModule }
