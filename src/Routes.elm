module Routes exposing (..)

import Model exposing (ShowModule(..))
import Navigation
import UrlParser exposing (map, oneOf, s)


pathParser location =
    UrlParser.parsePath pageParser location


pageParser =
    oneOf
        [ map ButtonModule (s "buttons")
        , map Colors (s "colors")
        , map ProgressModule (s "progress")
        ]
