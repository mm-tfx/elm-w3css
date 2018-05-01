module W3css.Margins exposing (margin, marginBottom, marginLeft, marginRight, marginTop, section)

{-| Margins


# Margins

@docs margin, marginTop, marginRight, marginLeft, marginBottom, section

-}

import W3css.Types exposing (Option(..))


{-| Adds a 16px margin to all sides of an element
-}
margin : Option msg
margin =
    ClassList ( "w3-margin", True )


{-| Adds a 16px top margin to an element
-}
marginTop : Option msg
marginTop =
    ClassList ( "w3-margin-top", True )


{-| Adds a 16px right margin to an element
-}
marginRight : Option msg
marginRight =
    ClassList ( "w3-margin-right", True )


{-| Adds a 16px left margin to an element
-}
marginLeft : Option msg
marginLeft =
    ClassList ( "w3-margin-left", True )


{-| Adds a 16px bottom margin to an element
-}
marginBottom : Option msg
marginBottom =
    ClassList ( "w3-margin-bottom", True )


{-| Adds a 16px top and bottom margin to an element
-}
section : Option msg
section =
    ClassList ( "w3-margin-top", True )
