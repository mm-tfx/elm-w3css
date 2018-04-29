module Main exposing (..)

import Html exposing (Html, div, p, text)
import Model exposing (Model, ShowModule(..))
import Msg exposing (Msg(..))
import Update exposing (update)
import View exposing (view)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- UPDATE


init : ( Model, Cmd Msg )
init =
    { showModule = ButtonModule } ! [ Cmd.none ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
