module Msg exposing (Msg(..))

import Model exposing (..)
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
    | StartAnimations Animation
