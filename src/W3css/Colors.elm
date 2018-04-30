module W3css.Colors
    exposing
        ( blue
        , deepPurple
        , green
        , pink
        , red
        )

{-| This library provides W3css colors.


# Colors

@docs green, blue, red, pink , deepPurple

-}

import W3css.Types as Types exposing (Option(..))


{-| Something
-}
green : Option msg
green =
    ClassList ( "w3-green", True )


{-| Something
-}
red : Option msg
red =
    ClassList ( "w3-red", True )


{-| Something
-}
blue : Option msg
blue =
    ClassList ( "w3-blue", True )


{-| Something
-}
pink : Option msg
pink =
    ClassList ( "w3-pink", True )


{-| Something
-}
deepPurple : Option msg
deepPurple =
    ClassList ( "w3-deep-purple", True )
