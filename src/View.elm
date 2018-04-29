module View exposing (view)

import Html exposing (Html, code, p, pre, text)
import Html.Attributes exposing (class)
import Model exposing (Model)
import SyntaxHighlight exposing (elm, gitHub, toBlockHtml, useTheme)
import W3css.Button as Button exposing (block, button, disabled, ripple, style)
import W3css.Colors as Colors exposing (blue, deepPurple, pink, red)
import W3css.Container as Container exposing (container)
import W3css.Css as Css exposing (w3css)
import W3css.Round as Round exposing (round, roundLarge, roundSmall, roundXLarge, roundXXLarge)
import W3css.Size as Size exposing (..)


buttonCode =
    """Button.button [Colors.green] [text "Green"]
, Button.button [ Colors.red ] [ text "Red" ]
, Button.button [ Colors.blue ] [ text "Blue" ]
, Button.button [ Colors.deepPurple ] [ text "Deep Purple" ]
  """


roundButtonCode =
    """Button.button [ Round.roundSmall, Colors.green ] [ text "Round Small" ]
, Button.button [ Round.round, Colors.green ] [ text "Round" ]
, Button.button [ Round.roundLarge, Colors.green ] [ text "Round Large" ]
, Button.button [ Round.roundXLarge, Colors.green ] [ text "Round XLarge" ]
, Button.button [ Round.roundXXLarge, Colors.green ] [ text "Round XXLarge" ]
"""


showCode inputCode =
    elm inputCode
        |> Result.map (toBlockHtml (Just 1))
        |> Result.withDefault
            (pre [] [ code [] [ text inputCode ] ])


view : Model -> Html msg
view model =
    Container.container []
        [ useTheme gitHub
        , showCode buttonCode
        , p []
            [ Button.button [ Colors.green ] [ text "Green" ]
            , text " "
            , Button.button [ Colors.red ] [ text "Red" ]
            , text " "
            , Button.button [ Colors.blue ] [ text "Blue" ]
            , text " "
            , Button.button [ Colors.deepPurple ] [ text "Deep Purple" ]
            ]
        , p []
            [ Button.button [ Button.circle, Colors.blue ] [ text "+" ]
            ]
        , showCode roundButtonCode
        , p []
            [ Button.button [ Round.roundSmall, Colors.green ] [ text "Round Small" ]
            , text " "
            , Button.button [ Round.round, Colors.green ] [ text "Round" ]
            , text " "
            , Button.button [ Round.roundLarge, Colors.green ] [ text "Round Large" ]
            , text " "
            , Button.button [ Round.roundXLarge, Colors.green ] [ text "Round XLarge" ]
            , text " "
            , Button.button [ Round.roundXXLarge, Colors.green ] [ text "Round XXLarge" ]
            ]
        , p []
            [ Button.button [ Colors.red, Size.tiny ] [ text "Tiny" ]
            , Button.button [ Colors.pink, Button.block, Button.style [ ( "width", "70%" ) ] ] [ text "Block Button" ]
            ]
        ]
