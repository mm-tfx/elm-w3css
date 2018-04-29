module W3css.Progress exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import W3css.Container as Container exposing (div)
import W3css.Utils as Utils exposing (style)


{-| Create a progress bar

Progress.progress []

-}
progress : Int -> String -> Html msg
progress value label =
    Container.div []
        [ Container.div
            [ Utils.style
                [ ( "width", toString value ++ "%" )
                ]
            ]
            [ text label ]
        ]
