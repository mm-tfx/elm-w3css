module W3css.Round
    exposing
        ( round
        , roundLarge
        , roundSmall
        , roundXLarge
        , roundXXLarge
        )

import W3css.Types exposing (..)


round =
    ClassList ( "w3-round", True )


roundSmall =
    ClassList ( "w3-round-small", True )


roundLarge =
    ClassList ( "w3-round-large", True )


roundXLarge =
    ClassList ( "w3-round-xlarge", True )


roundXXLarge =
    ClassList ( "w3-round-xxlarge", True )
