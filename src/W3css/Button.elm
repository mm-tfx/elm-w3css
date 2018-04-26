module W3css.Button exposing (..)

import Html exposing (Attribute, Html, button)
import Html.Attributes exposing (class, classList)
import List exposing (map)
import String exposing (join)
import W3css.Colors as Colors exposing (giveColor)
import W3css.Round exposing (giveRoundType)
import W3css.Types exposing (..)


type alias ButtonConfiguration =
    { disabled : Bool
    , color : Maybe Color
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


color : Color -> String
color color_ =
    case color_ of
        Red ->
            "w3-red"

        Blue ->
            "w3-blue"


convert : ButtonOptions -> String
convert option =
    case Debug.log "convert:option" option of
        Disabled option ->
            isDisabled option

        Colored option ->
            color option

        Circle option ->
            isCircle option


red =
    Colored Red


disabled_ =
    Button (Disabled True)


button : List ButtonOptions -> List (Html msg) -> Html msg
button options children =
    Html.button [ applyOptions options ] children


button_ : List MainOptions -> List (Html msg) -> Html msg
button_ options children =
    Html.button
        [ applyOptions_ options ]
        children


applyOptions_ options =
    map convert_ options
        |> (::) "w3-button"
        |> join " "
        |> class


convert_ : MainOptions -> String
convert_ option =
    case Debug.log "convert_:option" option of
        Button buttonOptions ->
            convert buttonOptions

        Color color_ ->
            color color_

        Rounded round ->
            giveRoundType round
