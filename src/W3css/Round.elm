module W3css.Round exposing (giveRoundType, round, round_)

import W3css.Types exposing (..)


round options =
    { options | round = Just Round }


round_ =
    Rounded Round


round2 =
    ClassList ( "w3-round", True )


roundSmall =
    ClassList ( "w3-round-small", True )


giveRoundType round =
    case round of
        Round ->
            "w3-round"

        RoundSmall ->
            "w3-round-small"
