module W3css.Animations exposing (..)

{-| This library provides W3css Animations


# Animations

@docs animateTop, animateBottom, animateLeft, animateRight, animateOpacity, animateZoom, animateFading, animateSpin

-}

import W3css.Types exposing (Option(..))


{-| Slides in an element from the top (-300px to 0)

    Container.div [Animations.animateTop]
      [ text "Slides from the top"]

-}
animateTop : Option msg
animateTop =
    ClassList ( "w3-animate-top", True )


{-| Slides in an element from the bottom (-300px to 0)
-}
animateBottom : Option msg
animateBottom =
    ClassList ( "w3-animate-bottom", True )


{-| Slides in an element from the left (-300px to 0)
-}
animateLeft : Option msg
animateLeft =
    ClassList ( "w3-animate-left", True )


{-| Slides in an element from the right (-300px to 0)
-}
animateRight : Option msg
animateRight =
    ClassList ( "w3-animate-right", True )


{-| Animates an element's opacity from 0 to 1 in 1.5 seconds
-}
animateOpacity : Option msg
animateOpacity =
    ClassList ( "w3-animate-opacity", True )


{-| Animates an element from 0 to 100% in size
-}
animateZoom : Option msg
animateZoom =
    ClassList ( "w3-animate-zoom", True )


{-| Animates an element's opacity from 0 to 1 and 1 to 0 (fades in + fade out)
-}
animateFading : Option msg
animateFading =
    ClassList ( "w3-animate-fading", True )


{-| Spins an element 360 degrees
-}
animateSpin : Option msg
animateSpin =
    ClassList ( "w3-spin", True )
