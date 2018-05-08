module Update exposing (update)

import Model exposing (Model, ShowModule(..))
import Msg exposing (Msg(..))
import Navigation


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        ShowButton ->
            { model | showModule = ButtonModule } ! [ Navigation.newUrl "/buttons" ]

        ShowProgress ->
            { model | showModule = ProgressModule } ! [ Navigation.newUrl "/progress" ]

        ShowColors ->
            { model | showModule = Colors } ! [ Navigation.newUrl "/colors" ]

        ShowBorders ->
            { model | showModule = BordersModule } ! []

        ShowCards ->
            { model | showModule = CardsModule } ! []

        ShowTables ->
            { model | showModule = TablesModule } ! []

        ShowMargins ->
            { model | showModule = MarginsModule } ! []

        CloseMenu ->
            { model | showMenu = False } ! []

        ShowMenu ->
            { model | showMenu = True } ! []

        ShowAccordion ->
            { model | showModule = AccordionModule } ! []

        OpenAccordion ->
            { model | showAccordion = not model.showAccordion } ! []

        ShowAnimations ->
            { model | showModule = AnimationsModule } ! []

        StartAnimations animation ->
            { model | animations = animation } ! []

        UrlChange location ->
            let
                _ =
                    Debug.log "location" location
            in
            model ! []
