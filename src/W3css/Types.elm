module W3css.Types exposing (..)

{-| This library provides W3css colors.


# Colors

@docs

-}

import Html


type alias ListClass =
    ( String, Bool )


type Option msg
    = ClassList ListClass
    | Attribute (Html.Attribute msg)
    | Class String
