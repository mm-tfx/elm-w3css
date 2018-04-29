module W3css.Types exposing (..)

import Html


type Option msg
    = ClassList ( String, Bool )
    | Attribute (Html.Attribute msg)
