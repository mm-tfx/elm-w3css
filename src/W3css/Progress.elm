module W3css.Progress exposing (..)

import Html exposing (Html, div)
import Html.Attributes exposing (style)


type Option msg
    = Value Int


type Options msg
    = Options { value : Int }


{-| Create a progress bar

Progress.progress []

-}
progress : Int -> Int -> Html msg
progress value height =
    div []
        [ div
            [ style
                [ ( "width", toString value ++ "%" )
                , ( "height", toString height ++ "px" )
                ]
            ]
            []
        ]
