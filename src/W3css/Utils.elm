module W3css.Utils exposing (..)

import Html exposing (Attribute, Html)
import Html.Attributes exposing (classList)
import W3css.Types exposing (Option(..))


node : String -> String -> List (Option msg) -> List (Html msg) -> Html msg
node string class options children =
    Html.node string (applyOptions (initialClass class :: options)) children


style : List ( String, String ) -> Option msg
style styles =
    Attribute (Html.Attributes.style styles)


class : String -> Option msg
class className =
    Attribute (Html.Attributes.class className)


href : String -> Option msg
href location =
    Attribute (Html.Attributes.href location)


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

        Class _ ->
            ( "", False )


fetchClassName : Option msg -> String
fetchClassName option =
    case option of
        Class val ->
            val

        Attribute _ ->
            ""

        ClassList _ ->
            ""


applyOptions : List (Option msg) -> List (Html.Attribute msg)
applyOptions options =
    let
        tuple =
            List.partition isClassList options

        listToClassList =
            List.map takeClassListValue (Tuple.first tuple)

        tuple2 =
            List.partition isClass (Tuple.second tuple)

        stringList =
            List.map fetchClassName (Tuple.first tuple2)

        listAttr =
            List.map fetchAttributteValue (Tuple.second tuple)
    in
    [ classList listToClassList ]
        ++ List.filterMap filterMaybe listAttr
        ++ [ Html.Attributes.class (String.join " " stringList) ]


fetchAttributteValue : Option msg -> Maybe (Attribute msg)
fetchAttributteValue option =
    case option of
        Attribute val ->
            Just val

        ClassList _ ->
            Nothing

        Class _ ->
            Nothing


isClassList : Option msg -> Bool
isClassList option =
    case option of
        ClassList _ ->
            True

        Attribute _ ->
            False

        Class _ ->
            False


isClass : Option msg -> Bool
isClass option =
    case option of
        ClassList _ ->
            False

        Attribute _ ->
            False

        Class _ ->
            True


filterMaybe : Maybe (Attribute msg) -> Maybe (Attribute msg)
filterMaybe option =
    case option of
        Just val ->
            Just val

        Nothing ->
            Nothing
