module W3css.Headers exposing (..)

import Html exposing (Html, h1, h2, h3, h4, h5)
import W3css.Types exposing (Option(..))
import W3css.Utils exposing (..)


h1 : List (Option msg) -> List (Html msg) -> Html msg
h1 options children =
    Html.h1 (applyOptions options) children


h2 : List (Option msg) -> List (Html msg) -> Html msg
h2 options children =
    Html.h2 (applyOptions options) children


h3 : List (Option msg) -> List (Html msg) -> Html msg
h3 options children =
    Html.h3 (applyOptions options) children
