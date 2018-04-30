module W3css.Container exposing (container, div, panel)

import Html exposing (Attribute, Html, div)
import Html.Attributes exposing (class)
import W3css.Types exposing (Option(..))
import W3css.Utils exposing (applyOptions, initialClass)


displayContainer : List (Attribute msg) -> List (Html msg) -> Html msg
displayContainer attributes children =
    Html.div ([ class "w3-display-container" ] ++ attributes) children


div : List (Option msg) -> List (Html msg) -> Html msg
div options children =
    let
        _ =
            Debug.log "options" options

        _ =
            Debug.log "children" children
    in
    Html.div (applyOptions options) children


container : Option msg
container =
    ClassList ( "w3-container", True )


panel : Option msg
panel =
    ClassList ( "w3-panel", True )
