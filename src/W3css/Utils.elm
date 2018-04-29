module W3css.Utils exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (classList)
import W3css.Types exposing (Option(..))


style : List ( String, String ) -> Option msg
style styles =
    Attribute (Html.Attributes.style styles)


initialClass : String -> Option msg
initialClass className =
    ClassList ( className, True )


takeClassListValue : Option msg -> ( String, Bool )
takeClassListValue option =
    case option of
        ClassList val ->
            val

        Attribute _ ->
            ( "", False )


applyOptions : List (Option msg) -> List (Html.Attribute msg)
applyOptions options =
    let
        tuple =
            List.partition isClassList options

        listToClassList =
            List.map takeClassListValue (Tuple.first tuple)

        listAttr =
            List.map fetchAttributteValue (Tuple.second tuple)
    in
    [ classList listToClassList ] ++ List.filterMap filterMaybe listAttr


fetchAttributteValue : Option msg -> Maybe (Attribute msg)
fetchAttributteValue option =
    case option of
        Attribute val ->
            Just val

        ClassList _ ->
            Nothing


isClassList : Option msg -> Bool
isClassList option =
    case option of
        ClassList _ ->
            True

        Attribute _ ->
            False


filterMaybe : Maybe (Attribute msg) -> Maybe (Attribute msg)
filterMaybe option =
    case option of
        Just val ->
            Just val

        Nothing ->
            Nothing
