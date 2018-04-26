module W3css.Button exposing (..)

import Html exposing (Attribute, Html, button)
import Html.Attributes exposing (class, classList)
import List exposing (map)
import String exposing (join)
import W3css.Colors as Colors exposing (Color(..), giveColor)
import W3css.Round as Round exposing (RoundType(..))


type alias Disabled =
    Bool


type ButtonOptions
    = Disabled Disabled
    | Color Colors.Color
    | Circle Bool


type alias ButtonConfiguration =
    { disabled : Bool
    , color : Maybe Colors.Color
    , circle : Bool
    , round : Maybe RoundType
    }


initialConfiguration : ButtonConfiguration
initialConfiguration =
    { disabled = False
    , color = Nothing
    , circle = False
    , round = Nothing
    }


init : ButtonConfiguration
init =
    initialConfiguration


show : List (Html msg) -> ButtonConfiguration -> Html msg
show children config =
    Html.button [ applyConfig config ] children


applyConfig : ButtonConfiguration -> Attribute msg
applyConfig config =
    let
        _ =
            Debug.log "config" config

        disabled =
            if config.disabled then
                "w3-disabled"
            else
                ""

        color_ =
            giveColor config.color

        round_ =
            case config.round of
                Just round__ ->
                    "w3-round"

                Nothing ->
                    ""

        output =
            join " " [ "w3-button", disabled, color_, round_ ]
    in
    class output


disabled : ButtonOptions
disabled =
    Disabled True


red : ButtonOptions
red =
    Color Colors.Red


blue : ButtonOptions
blue =
    Color Colors.Blue


circle : ButtonOptions
circle =
    Circle True


applyOptions : List ButtonOptions -> Attribute msg
applyOptions options =
    map convert options
        |> (::) "w3-button"
        |> join " "
        |> class


isDisabled : Disabled -> String
isDisabled disabled =
    if disabled == True then
        "w3-disabled"
    else
        ""


isCircle : Bool -> String
isCircle circle =
    if circle then
        "w3-circle"
    else
        ""


color : Colors.Color -> String
color color_ =
    case color_ of
        Colors.Red ->
            "w3-red"

        Colors.Blue ->
            "w3-blue"


convert : ButtonOptions -> String
convert option =
    case option of
        Disabled option ->
            isDisabled option

        Color option ->
            color option

        Circle option ->
            isCircle option


button : List ButtonOptions -> List (Html msg) -> Html msg
button options children =
    Html.button [ applyOptions options ] children
