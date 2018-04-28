module W3css.Types exposing (..)

import Html


type ChooseOption msg
    = ClassList ( String, Bool )
    | Attribute (Html.Attribute msg)


type Color
    = Red
    | Blue
    | Pink
    | Purple
    | DeepPurple
    | Indigo
    | LightBlue
    | Cyan
    | Aqua
    | Teal


type alias Disabled =
    Bool


type ButtonOptions
    = Disabled Disabled
    | Colored Color
    | Circle Bool
    | Ripple Bool


type MainOptions
    = Color Color
    | Button ButtonOptions
    | Rounded RoundType


type RoundType
    = Round
    | RoundSmall
