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
                |> Maybe.withDefault ButtonModule
    in
    { model | showModule = page }


initialState location =
    let
        route =
            location
                |> pathParser
                |> Maybe.withDefault ButtonModule
    in
    modelWithLocation location initialModel ! [ Navigation.newUrl (pathToPage <| route) ]


initialModel =
    { showModule = ButtonModule
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
    { showModule = ButtonModule
    , showMenu = False
    , showAccordion = False
    , animations = None
    }
        ! [ Cmd.none ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
