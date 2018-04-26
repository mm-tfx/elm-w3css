module View exposing (view)

import Html exposing (Html, p, text)
import Model exposing (Model)
import W3css.Button as Button exposing (button, disabled, red)
import W3css.Container as Container exposing (container)
import W3css.Css as Css exposing (w3css)


view : Model -> Html msg
view model =
    Container.container []
        [ Css.w3css
        , p [] [ text "Hello World" ]
        , Button.button [ Button.disabled, Button.red ] [ text "Button" ]
        ]
