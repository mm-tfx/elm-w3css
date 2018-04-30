module Update exposing (update)

import Model exposing (Model, ShowModule(..))
import Msg exposing (Msg(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        ShowButton ->
            { model | showModule = ButtonModule } ! []

        ShowProgress ->
            { model | showModule = ProgressModule } ! []

        ShowColors ->
            { model | showModule = Colors } ! []

        ShowBorders ->
            { model | showModule = BordersModule } ! []
