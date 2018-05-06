module Msg exposing (Msg(..))

import Navigation


type Msg
    = NoOp
    | ShowButton
    | ShowProgress
    | ShowColors
    | ShowBorders
    | ShowCards
    | ShowTables
    | ShowMargins
    | CloseMenu
    | ShowMenu
    | ShowAccordion
    | OpenAccordion
    | UrlChange Navigation.Location
    | ShowAnimations
