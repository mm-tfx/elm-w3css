module Main exposing (..)

import Html exposing (Html, div, p, text)
import Html.Events exposing (onClick)
import Model exposing (Model)
import Msg exposing (Msg(..))
import Update exposing (update)
import View exposing (view)
import W3css.Button as Button
import W3css.Colors as Colors
import W3css.Container as Container
import W3css.Css as Css
import W3css.Round as Round


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
    ( 0
    , Cmd.none
    )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
