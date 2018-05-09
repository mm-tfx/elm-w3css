module W3css.Navigation exposing (..)

import Html exposing (Html, a)
import W3css.Types exposing (Option(..))
import W3css.Utils exposing (applyOptions)


a : List (Option msg) -> List (Html msg) -> Html msg
a options children =
    Html.a (applyOptions options) children
