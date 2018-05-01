module W3css.Tables exposing (..)

import Html exposing (Html, table, td, th, tr)
import W3css.Types exposing (Option(..))
import W3css.Utils exposing (applyOptions)


{-| Creates w3Css Table
-}
table : List (Option msg) -> List (Html msg) -> Html msg
table options children =
    Html.table (applyOptions (initialClass :: options)) children


initialClass : Option msg
initialClass =
    ClassList ( "w3-table", True )


striped : Option msg
striped =
    ClassList ( "w3-striped", True )


bordered : Option msg
bordered =
    ClassList ( "w3-bordered", True )
