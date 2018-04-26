module W3css.Types exposing (..)


type Color
    = Red
    | Blue


type alias Disabled =
    Bool


type ButtonOptions
    = Disabled Disabled
    | Colored Color
    | Circle Bool


type MainOptions
    = Color Color
    | Button ButtonOptions
    | Rounded RoundType


type RoundType
    = Round
    | RoundSmall
