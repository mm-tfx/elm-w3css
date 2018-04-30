module W3css.Types exposing (..)

import Html


type alias ListClass =
    ( String, Bool )


type Option msg
    = ClassList ListClass
    | Attribute (Html.Attribute msg)
    | Class String
