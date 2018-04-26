module W3css.Round exposing (RoundType(..), round)


type RoundType
    = Round
    | RoundSmall


round options =
    { options | round = Just Round }
