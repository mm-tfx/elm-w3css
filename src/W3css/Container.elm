module W3css.Container exposing (container)


container : List (Attribute msg) -> List (Html msg) -> Html msg
container attributes children =
    div ([ class "w3-container" ] ++ attributes) children


displayContainer : List (Attribute msg) -> List (Html msg) -> Html msg
displayContainer attributes children =
    div ([ class "w3-display-container" ] ++ attributes) children
