module Routes exposing (..)

import Model exposing (ShowModule(..))
import Navigation
import UrlParser exposing (map, oneOf, s)


pathParser location =
    let
        _ =
            Debug.log "location" location
    in
    UrlParser.parsePath pageParser location


pageParser =
    oneOf
        [ map Home (s "")
        , map ButtonModule (s "buttons")
        , map Colors (s "colors")
        , map ProgressModule (s "progress")
        , map BordersModule (s "borders")
        , map CardsModule (s "cards")
        , map TablesModule (s "tables")
        , map MarginsModule (s "margins")
        , map AccordionModule (s "accordion")
        , map AnimationsModule (s "animations")
        ]


pathToPage page =
    case page of
        Home ->
            "/"

        ButtonModule ->
            "/buttons"

        Colors ->
            "/colors"

        ProgressModule ->
            "/progress"

        BordersModule ->
            "/borders"

        CardsModule ->
            "/cards"

        TablesModule ->
            "/tables"

        MarginsModule ->
            "/margins"

        AccordionModule ->
            "/accordion"

        AnimationsModule ->
            "/animations"
