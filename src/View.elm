module View exposing (view)

import Html exposing (Html, p, text)
import Model exposing (Model)
import W3css.Button as Button exposing (button, disabled, init, red)
import W3css.Colors as Colors exposing (red, red_)
import W3css.Container as Container exposing (container)
import W3css.Css as Css exposing (w3css)
import W3css.Round as Round exposing (round)


view : Model -> Html msg
view model =
    Container.container []
        [ Css.w3css
        , p [] [ text "Hello World" ]
        , p [] [ Button.button [ Button.disabled, Button.red ] [ text "Button" ] ]
        , p [] [ Button.button [ Button.circle ] [ text "+" ] ]
        , p []
            [ Button.init
                |> Colors.red_
                |> Round.round
                |> Button.show [ text "Button" ]
            ]
        , p [] [ Button.button_ [ Colors.red, Button.disabled_, Round.round_ ] [ text "Button" ] ]
        ]
