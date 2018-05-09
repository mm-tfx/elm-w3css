module Main exposing (..)

import Model exposing (Animation(..), Model, ShowModule(..))
import Msg exposing (Msg(..))
import Navigation
import Routes exposing (pathParser, pathToPage)
import Update exposing (update)
import View exposing (view)


modelWithLocation location model =
    let
        page =
            location
                |> pathParser
                |> Maybe.withDefault Home

        _ =
            Debug.log "modelWithLocation" page
    in
    { model | showModule = page }


initialState location =
    let
        route =
            location
                |> pathParser
                |> Maybe.withDefault Home

        _ =
            Debug.log "route" route
    in
    modelWithLocation location initialModel ! []


initialModel =
    { showModule = Home
    , showMenu = False
    , showAccordion = False
    , animations = None
    }


main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = initialState
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
    { showModule = Home
    , showMenu = False
    , showAccordion = False
    , animations = None
    }
        ! [ Cmd.none ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
