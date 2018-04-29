module W3css.Button exposing (..)

import Html exposing (Attribute, Html, button)
import Html.Attributes exposing (class, classList, style)
import Html.Events exposing (onClick)
import List exposing (map)
import W3css.Types exposing (..)


style styles =
    Attribute (Html.Attributes.style styles)


onClick msg =
    Attribute (Html.Events.onClick msg)


block =
    ClassList ( "w3-block", True )


button options children =
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


disabled =
    ClassList ( "w3-disabled", True )


initialList =
    [ ( "w3-button", True ) ]


ripple =
    ClassList ( "w3-ripple", True )


circle =
    ClassList ( "w3-circle", True )
