module W3css.Borders
    exposing
        ( border
        , borderRed
        , borderRed_
        )

import W3css.Types exposing (Option(..))


border =
    ClassList ( "w3-border", True )


borderRed =
    ClassList ( "w3-border-red", True )


borderRed_ =
    Class "w3-border w3-border-red"


borderColor color =
    ClassList ( String.join "-" [ "w3-border", color ], True )
