module View exposing (view)

import Html exposing (Html, p, text)
import Html.Attributes exposing (class)
import Model exposing (Model)
import W3css.Button as Button exposing (button, button1, disabled, init, red, ripple)
import W3css.Colors as Colors exposing (blue, deepPurple, pink, red, red_)
import W3css.Container as Container exposing (container)
import W3css.Css as Css exposing (w3css)
import W3css.Round as Round exposing (round, round_)


view : Model -> Html msg
view model =
    Container.container []
        [ p [] [ text "Hello World" ]
        , p [] [ Button.button [ Button.disabled, Button.red ] [ text "Button" ] ]
        , p [] [ Button.button [ Button.circle ] [ text "+" ] ]
        , p []
            [ Button.init
                |> Colors.red_
                |> Round.round
                |> Button.show [ text "Button" ]
            ]
        , p []
            [ Button.button1 [ Colors.red ] [ text "Red" ]
            , text " "
            , Button.button1 [ Colors.blue ] [ text "Blue" ]
            , text " "
            , Button.button1 [ Colors.pink, Button.ripple ] [ text "Pink" ]
            , text " "
            , Button.button1 [ Colors.deepPurple, Round.round_, Button.disabled_ ] [ text "Deep Purple" ]
            ]
        , p []
            [ Button.button3 [ Colors.green ] [ text "Button3" ]
            ]
        , Html.button [] [ text "Black" ]
        , Html.button [] [ text "Teal" ]
        ]
