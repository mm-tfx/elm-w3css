module W3css.Colors
    exposing
        ( blue
        , deepPurple
        , green
        , pink
        , red
        )

import W3css.Types as Types exposing (Option(..))


green : Option msg
green =
    ClassList ( "w3-green", True )


red : Option msg
red =
    ClassList ( "w3-red", True )


blue : Option msg
blue =
    ClassList ( "w3-blue", True )


pink : Option msg
pink =
    ClassList ( "w3-pink", True )


deepPurple : Option msg
deepPurple =
    ClassList ( "w3-deep-purple", True )
