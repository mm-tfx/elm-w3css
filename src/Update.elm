module Update exposing (update)

import Model exposing (Model, ShowModule(..))
import Msg exposing (Msg(..))
import Navigation
import Routes exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        ShowButton ->
            { model | showModule = ButtonModule } ! [ Navigation.newUrl (pathToPage ButtonModule) ]

        ShowProgress ->
            { model | showModule = ProgressModule } ! [ Navigation.newUrl (pathToPage ProgressModule) ]

        ShowColors ->
            { model | showModule = Colors } ! [ Navigation.newUrl (pathToPage Colors) ]

        ShowBorders ->
            { model | showModule = BordersModule } ! [ Navigation.newUrl (pathToPage BordersModule) ]

        ShowCards ->
            { model | showModule = CardsModule } ! [ Navigation.newUrl (pathToPage CardsModule) ]

        ShowTables ->
            { model | showModule = TablesModule } ! [ Navigation.newUrl (pathToPage TablesModule) ]

        ShowMargins ->
            { model | showModule = MarginsModule } ! [ Navigation.newUrl (pathToPage MarginsModule) ]

        CloseMenu ->
            { model | showMenu = False } ! []

        ShowMenu ->
            { model | showMenu = True } ! []

        ShowAccordion ->
            { model | showModule = AccordionModule } ! [ Navigation.newUrl (pathToPage AccordionModule) ]

        OpenAccordion ->
            { model | showAccordion = not model.showAccordion } ! []

        ShowAnimations ->
            { model | showModule = AnimationsModule } ! [ Navigation.newUrl (pathToPage AnimationsModule) ]

        StartAnimations animation ->
            { model | animations = animation } ! []

        UrlChange location ->
            let
                page =
                    location
                        |> Routes.pathParser
                        |> Maybe.withDefault Home

                _ =
                    Debug.log "UrlChange" page
            in
            { model | showModule = page } ! []
