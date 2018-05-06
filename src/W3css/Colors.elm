module W3css.Colors
    exposing
        ( aqua
        , black
        , blue
        , cyan
        , deepPurple
        , green
        , lightBlue
        , lightGreen
        , lime
        , pink
        , red
        , teal
        )

{-| This library provides W3css colors.


# Colors

@docs aqua, blue, cyan, deepPurple, green, lightBlue, lightGreen, lime, pink, red, teal, black

-}

import W3css.Types as Types exposing (Option(..))


{-| Color Green
-}
green : Option msg
green =
    ClassList ( "w3-green", True )


{-| Color Red
-}
red : Option msg
red =
    ClassList ( "w3-red", True )


{-| Color Blue
-}
blue : Option msg
blue =
    ClassList ( "w3-blue", True )


{-| Color Pink
-}
pink : Option msg
pink =
    ClassList ( "w3-pink", True )


{-| Color Deep Purple
-}
deepPurple : Option msg
deepPurple =
    ClassList ( "w3-deep-purple", True )


{-| Color Light Blue
-}
lightBlue : Option msg
lightBlue =
    ClassList ( "w3-light-blue", True )


{-| Color Cyan
-}
cyan : Option msg
cyan =
    ClassList ( "w3-cyan", True )


{-| Color Aqua
-}
aqua : Option msg
aqua =
    ClassList ( "w3-aqua", True )


{-| Color Teal
-}
teal : Option msg
teal =
    ClassList ( "w3-teal", True )


{-| Color Light Green
-}
lightGreen : Option msg
lightGreen =
    ClassList ( "w3-light-green", True )


{-| Color Lime
-}
lime : Option msg
lime =
    ClassList ( "w3-lime", True )


{-| Color Black
-}
black : Option msg
black =
    ClassList ( "w3-black", True )
