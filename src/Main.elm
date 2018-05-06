module Main exposing (..)

import Model exposing (Model, ShowModule(..))
import Msg exposing (Msg(..))
import Navigation
import Update exposing (update)
import View exposing (view)


main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- UPDATE


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
    { showModule = ButtonModule
    , showMenu = False
    , showAccordion = False
    , page = location
    }
        ! [ Cmd.none ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
