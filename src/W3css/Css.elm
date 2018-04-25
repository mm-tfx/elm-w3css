module W3css.Css exposing (w3css)

import Html exposing (Html, node)
import Html.Attributes exposing (href, rel)


w3css : Html msg
w3css =
    node "link"
        [ rel "stylesheet"
        , href "https://www.w3schools.com/w3css/4/w3.css"
        ]
        []
