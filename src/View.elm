module View exposing (view)

import Html exposing (Html, code, p, pre, text)
import Model exposing (Model, ShowModule(..))
import Msg exposing (Msg(..))
import SyntaxHighlight exposing (elm, gitHub, toBlockHtml, useTheme)
import W3css.Bar as Bar exposing (bar, barBlock, barItem, sideBar)
import W3css.Button as Button exposing (block, button, disabled, ripple)
import W3css.Colors as Colors exposing (blue, deepPurple, pink, red)
import W3css.Container as Container exposing (div, panel)
import W3css.Round as Round exposing (round, roundLarge, roundSmall, roundXLarge, roundXXLarge)
import W3css.Size as Size exposing (..)
import W3css.Utils as Utils exposing (style)


buttonCode : String
buttonCode =
    """Button.button [Colors.green] [text "Green"]
, Button.button [ Colors.red ] [ text "Red" ]
, Button.button [ Colors.blue ] [ text "Blue" ]
, Button.button [ Colors.deepPurple ] [ text "Deep Purple" ]
  """


roundButtonCode : String
roundButtonCode =
    """Button.button [ Round.roundSmall, Colors.green ] [ text "Round Small" ]
, Button.button [ Round.round, Colors.green ] [ text "Round" ]
, Button.button [ Round.roundLarge, Colors.green ] [ text "Round Large" ]
, Button.button [ Round.roundXLarge, Colors.green ] [ text "Round XLarge" ]
, Button.button [ Round.roundXXLarge, Colors.green ] [ text "Round XXLarge" ]
"""


showCode : String -> Html msg
showCode inputCode =
    elm inputCode
        |> Result.map (toBlockHtml (Just 1))
        |> Result.withDefault
            (pre [] [ code [] [ text inputCode ] ])


buttonModule : List (Html Msg)
buttonModule =
    [ showCode buttonCode
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
        , Button.button [ Colors.pink, Button.block, Utils.style [ ( "width", "70%" ) ] ] [ text "Block Button" ]
        ]
    ]


colorModule : List (Html Msg)
colorModule =
    [ Container.div [ Colors.blue, Container.panel ] [ Html.p [] [ text "Blue" ] ]
    , Container.div [ Colors.red, Container.panel ] [ Html.p [] [ text "Red" ] ]
    ]


view : Model -> Html Msg
view model =
    Container.div [ Container.container ]
        [ useTheme gitHub
        , Container.div [ Bar.sideBar, Bar.barBlock, Utils.style [ ( "width", "15%" ) ] ]
            [ Button.button [ Bar.barItem, Button.onClick ShowColors ] [ text "Colors" ]
            , Button.button [ Bar.barItem, Button.onClick ShowButton ] [ text "Button" ]
            , Button.button [ Bar.barItem, Button.onClick ShowProgress ] [ text "Progress" ]
            ]
        , Container.div [ Utils.style [ ( "margin-left", "15%" ) ] ]
            [ Container.div [ Container.container ]
                (case model.showModule of
                    ButtonModule ->
                        buttonModule

                    ProgressModule ->
                        [ Html.div [] [] ]

                    Colors ->
                        colorModule
                )
            ]
        ]
