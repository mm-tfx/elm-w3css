module W3css.Button exposing (..)

import Html exposing (Attribute, Html, button)
import Html.Attributes exposing (class, classList)
import List exposing (map)
import String exposing (join)
import W3css.Colors as Colors


type alias Disabled =
    Bool


type ButtonOptions
    = Disabled Disabled
    | Color Colors.Color


disabled : ButtonOptions
disabled =
    Disabled True


red : ButtonOptions
red =
    Color Colors.Red


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


color color_ =
    case color_ of
        Colors.Red ->
            "w3-red"


convert : ButtonOptions -> String
convert option =
    case option of
        Disabled option ->
            isDisabled option

        Color option ->
            color option


button : List ButtonOptions -> List (Html msg) -> Html msg
button options children =
    Html.button [ applyOptions options ] children
