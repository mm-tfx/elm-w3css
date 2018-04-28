module W3css.Button exposing (..)

import Html exposing (Attribute, Html, button)
import Html.Attributes exposing (class, classList)
import List exposing (map)
import String exposing (join)
import W3css.Colors as Colors exposing (giveColor, giveColor_)
import W3css.Round exposing (giveRoundType)
import W3css.Types exposing (..)


type alias ButtonConfiguration =
    { disabled : Bool
    , color : Maybe Color
    , circle : Bool
    , round : Maybe RoundType
    }


button3 options children =
    Html.button (something options) children


parseOptions3 options =
    List.foldl wafel initialList options


wafel option acc =
    case option of
        ClassList val ->
            val :: acc

        Attribute _ ->
            []


something options =
    let
        tuple =
            tupleList options

        listToClassList =
            parseOptions3 <| Tuple.first tuple

        listAttr =
            List.map wafel2 (Tuple.second tuple)
    in
    [ classList listToClassList ] ++ List.filterMap wafel3 listAttr


tupleList options =
    List.partition isClassList options


isClassList option =
    case option of
        ClassList _ ->
            True

        Attribute _ ->
            False


wafel3 option =
    case option of
        Just val ->
            Just val

        Nothing ->
            Nothing


wafel2 option =
    case option of
        Attribute val ->
            Just val

        ClassList _ ->
            Nothing


disabled3 =
    ClassList ( "w3-disabled", True )


initialList =
    [ ( "w3-button", True ) ]


parseOptions options =
    let
        initialList =
            []

        firstStep =
            case options of
                ClassList val ->
                    val

                Attribute msg ->
                    ( "", False )

        buttonAdded =
            buttonClassList :: initialList

        outputList =
            firstStep :: buttonAdded
    in
    [ classList outputList ]


buttonClassList : ( String, Bool )
buttonClassList =
    ( "w3-button", True )


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


ripple : MainOptions
ripple =
    Button (Ripple True)


ripple_ =
    ClassList ( "w3-ripple", True )


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


circle_ : MainOptions
circle_ =
    Button (Circle True)


circle2 =
    ClassList ( "w3-circle", True )


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


isRipple : Bool -> String
isRipple ripple =
    if ripple then
        "w3-ripple"
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

        _ ->
            ""


convert : ButtonOptions -> String
convert option =
    case Debug.log "convert:option" option of
        Disabled option ->
            isDisabled option

        Colored option ->
            color option

        Circle option ->
            isCircle option

        Ripple option ->
            isRipple option


red : ButtonOptions
red =
    Colored Red


disabled_ : MainOptions
disabled_ =
    Button (Disabled True)


button : List ButtonOptions -> List (Html msg) -> Html msg
button options children =
    Html.button [ applyOptions options ] children


button1 : List MainOptions -> List (Html msg) -> Html msg
button1 options children =
    Html.button
        [ applyOptions1 options ]
        children


applyOptions1 : List MainOptions -> Html.Attribute msg
applyOptions1 options =
    map convert1 options
        |> (::) "w3-button"
        |> join " "
        |> class


convert1 : MainOptions -> String
convert1 option =
    case Debug.log "convert_:option" option of
        Button buttonOptions ->
            convert buttonOptions

        Color color_ ->
            giveColor_ color_

        Rounded round ->
            giveRoundType round
