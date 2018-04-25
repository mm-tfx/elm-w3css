module Main exposing (..)

import Html exposing (Html, div, p, text)
import Html.Events exposing (onClick)
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



-- MODEL


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 0
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []



-- VIEW


view : Model -> Html Msg
view model =
    Container.container []
        [ Css.w3css
        , p [] [ text "Hello World" ]
        , Button.button [ Button.disabled, Button.red ] [ text "Button" ]
        ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
