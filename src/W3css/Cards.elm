module W3css.Cards exposing (card, card2, card4)

import W3css.Types exposing (Option(..))


card : Option msg
card =
    ClassList ( "w3-card", True )


card2 : Option msg
card2 =
    ClassList ( "w3-card-2", True )


card4 : Option msg
card4 =
    ClassList ( "w3-card-4", True )
