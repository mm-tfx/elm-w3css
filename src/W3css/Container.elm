module W3css.Container
    exposing
        ( container
        , div
        , footer
        , header
        , panel
        )

import Html exposing (Attribute, Html, div, footer, header)
import Html.Attributes exposing (class)
import W3css.Types exposing (Option(..))
import W3css.Utils exposing (applyOptions, initialClass)


displayContainer : List (Attribute msg) -> List (Html msg) -> Html msg
displayContainer attributes children =
    Html.div ([ class "w3-display-container" ] ++ attributes) children


div : List (Option msg) -> List (Html msg) -> Html msg
div options children =
    Html.div (applyOptions options) children


header : List (Option msg) -> List (Html msg) -> Html msg
header options children =
    Html.header (applyOptions options) children


footer : List (Option msg) -> List (Html msg) -> Html msg
footer options children =
    Html.footer (applyOptions options) children


container : Option msg
container =
    ClassList ( "w3-container", True )


panel : Option msg
panel =
    ClassList ( "w3-panel", True )
