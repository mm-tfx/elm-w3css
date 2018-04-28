module W3css.Colors exposing (..)

import Html.Attributes exposing (classList)
import W3css.Types as Types exposing (..)


green =
    ClassList ( "w3-green", True )


red : MainOptions
red =
    Color Red


blue : MainOptions
blue =
    Color Blue


pink : MainOptions
pink =
    Color Pink


deepPurple : MainOptions
deepPurple =
    Color DeepPurple


giveColor_ : Color -> String
giveColor_ color =
    case color of
        Red ->
            "w3-red"

        Blue ->
            "w3-blue"

        Pink ->
            "w3-pink"

        Purple ->
            "w3-purple"

        DeepPurple ->
            "w3-deep-purple"

        Indigo ->
            "w3-indigo"

        LightBlue ->
            "w3-light-blue"

        Cyan ->
            "w3-cyan"

        Aqua ->
            "w3-aqua"

        Teal ->
            "w3-teal"


giveColor : Maybe Color -> String
giveColor color =
    case color of
        Just color_ ->
            case color_ of
                Red ->
                    "w3-red"

                Blue ->
                    "w3-blue"

                Pink ->
                    "w3-pink"

                Purple ->
                    "w3-purple"

                DeepPurple ->
                    "w3-deep-purple"

                Indigo ->
                    "w3-indigo"

                LightBlue ->
                    "w3-light-blue"

                Cyan ->
                    "w3-cyan"

                Aqua ->
                    "w3-aqua"

                Teal ->
                    "w3-teal"

        Nothing ->
            ""


red_ options =
    { options | color = Just Red }
