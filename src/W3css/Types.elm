module W3css.Types exposing (..)

import Html


type ChooseOption msg
    = ClassList ( String, Bool )
    | Attribute (Html.Attribute msg)
