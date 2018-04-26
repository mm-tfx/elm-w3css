module W3css.Colors exposing (..)

import Html.Attributes exposing (classList)


type Color
    = Red
    | Blue


red : Color
red =
    Red


giveColor : Maybe Color -> String
giveColor color =
    case color of
        Just color_ ->
            case color_ of
                Red ->
                    "w3-red"

                Blue ->
                    "w3-blue"

        Nothing ->
            ""


red_ options =
    { options | color = Just Red }


blue =
    ( "w3-blue", True )
