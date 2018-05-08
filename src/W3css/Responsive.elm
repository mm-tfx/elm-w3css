module W3css.Responsive exposing (half, third, twoThird)

{-| Responsive Classes

W3.CSS's grid system is responsive, and the columns will re-arrange automatically depending on the screen size.


# Functions

@docs half, third, twoThird

-}

import W3css.Types exposing (Option(..))


{-| Occupies 1/2 of the window (on medium and large screens)

    Container.div [ Responsive.half ]
      [ text "I use half of the window" ]

-}
half : Option msg
half =
    ClassList ( "w3-half", True )


{-| Occupies 1/3 of the window (on medium and large screens)
-}
third : Option msg
third =
    ClassList ( "w3-third", True )


{-| Occupies 2/3 of the window (on medium and large screens)
-}
twoThird : Option msg
twoThird =
    ClassList ( "w3-twothird", True )
