module View exposing (view)

import Html exposing (Html, code, h3, i, p, pre, tbody, td, text, th, thead, tr)
import Html.Attributes exposing (class, href)
import Model exposing (Animation(..), Model, ShowModule(..))
import Msg exposing (Msg(..))
import SyntaxHighlight exposing (elm, gitHub, oneDark, toBlockHtml, useTheme)
import W3css.Animations as Animations exposing (..)
import W3css.Bar as Bar exposing (bar, barBlock, barItem, sideBar)
import W3css.Borders as Borders exposing (border, borderBottom, borderLeft, borderRed, borderRight, borderTop, borderWithRed)
import W3css.Button as Button exposing (block, btn, button, disabled, ripple)
import W3css.Cards as Cards exposing (card, card2, card4)
import W3css.Colors as Colors
    exposing
        ( aqua
        , blue
        , cyan
        , deepPurple
        , green
        , lightBlue
        , lightGreen
        , lime
        , pink
        , red
        , teal
        )
import W3css.Container as Container exposing (div, panel)
import W3css.Css as Css exposing (w3css)
import W3css.Headers as Headers exposing (..)
import W3css.Margins as Margins exposing (marginBottom)
import W3css.Navigation as Navigation exposing (a)
import W3css.Responsive as Responsive exposing (half, third, twoThird)
import W3css.Round as Round exposing (round, roundLarge, roundSmall, roundXLarge, roundXXLarge)
import W3css.Size as Size exposing (..)
import W3css.Tables as Tables exposing (..)
import W3css.Types as Types exposing (Option(..))
import W3css.Utils as Utils exposing (style)


buttonCode : String
buttonCode =
    """Button.button [Colors.green] [text "Green"]
Button.button [ Colors.red ] [ text "Red" ]
Button.button [ Colors.blue ] [ text "Blue" ]
Button.button [ Colors.deepPurple ] [ text "Deep Purple" ]
"""


roundButtonCode : String
roundButtonCode =
    """Button.button [ Round.roundSmall, Colors.green ] [ text "Round Small" ]
Button.button [ Round.round, Colors.green ] [ text "Round" ]
Button.button [ Round.roundLarge, Colors.green ] [ text "Round Large" ]
Button.button [ Round.roundXLarge, Colors.green ] [ text "Round XLarge" ]
Button.button [ Round.roundXXLarge, Colors.green ] [ text "Round XXLarge" ]
"""


showCode : String -> Html msg
showCode inputCode =
    elm inputCode
        |> Result.map (toBlockHtml (Just 1))
        |> Result.withDefault
            (pre [] [ code [] [ text inputCode ] ])


buttonModule : List (Html Msg)
buttonModule =
    [ headerModule "Button"
    , p []
        [ Button.button [ Colors.green ] [ text "Green" ]
        , text " "
        , Button.button [ Colors.red ] [ text "Red" ]
        , text " "
        , Button.button [ Colors.blue ] [ text "Blue" ]
        , text " "
        , Button.button [ Colors.deepPurple ] [ text "Deep Purple" ]
        ]
    , codeExample buttonCode
    , p []
        [ Button.button [ Button.circle, Colors.blue ] [ text "+" ]
        , Button.button [ Button.circle, Colors.red ] [ text "+" ]
        , Button.button [ Button.circle, Colors.lime ] [ text "+" ]
        ]
    , codeExample """Button.button [ Button.circle, Colors.blue ] [ text "+" ]
Button.button [ Button.circle, Colors.red ] [ text "+" ]
Button.button [ Button.circle, Colors.lime ] [ text "+" ]
"""
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
    , codeExample roundButtonCode
    , p []
        [ Button.button [ Colors.red, Size.tiny ] [ text "Tiny" ]
        ]
    , codeExample """Button.button [ Colors.red, Size.tiny ] [ text "Tiny" ]"""
    , p [] [ Button.button [ Colors.pink, Button.block, Utils.style [ ( "width", "70%" ) ] ] [ text "Block Button" ] ]
    ]


colorModule : List (Html Msg)
colorModule =
    [ headerModule "Colors"
    , Container.div [ Colors.aqua, Container.panel, Utils.class "w3-half" ] [ Html.p [] [ text "Aqua" ] ]
    , Container.div [ Colors.blue, Container.panel, Utils.class "w3-half" ] [ Html.p [] [ text "Blue" ] ]
    , Container.div [ Colors.cyan, Container.panel ] [ Html.p [] [ text "Cyan" ] ]
    , Container.div [ Colors.deepPurple, Container.panel ] [ Html.p [] [ text "Deep Purple" ] ]
    , Container.div [ Colors.green, Container.panel ] [ Html.p [] [ text "Green" ] ]
    , Container.div [ Colors.lightBlue, Container.panel ] [ Html.p [] [ text "Light Blue" ] ]
    , Container.div [ Colors.lightGreen, Container.panel ] [ Html.p [] [ text "Light Green" ] ]
    , Container.div [ Colors.lime, Container.panel ] [ Html.p [] [ text "Lime" ] ]
    , Container.div [ Colors.pink, Container.panel ] [ Html.p [] [ text "Pink" ] ]
    , Container.div [ Colors.red, Container.panel ] [ Html.p [] [ text "Red" ] ]
    , Container.div [ Colors.teal, Container.panel ] [ Html.p [] [ text "Teal" ] ]
    ]


codeExample : String -> Html Msg
codeExample code =
    Container.div [ Container.panel, Utils.class "w3-card w3-light-grey" ]
        [ Html.h3 [] [ text "Example" ]
        , Container.div [ Utils.class "w3-code" ] [ showCode code ]
        ]


codeExampleExtendable : String -> Html Msg
codeExampleExtendable code =
    Container.div [ Container.panel, Utils.class "w3-card w3-light-grey" ]
        [ Html.h3 [] [ text "Example" ]
        , Container.div [ Utils.class "w3-code" ] [ showCode code ]
        , Button.btn [ Colors.green, Button.onClick NoOp, Margins.marginBottom ] [ text "Full Code ", i [ Html.Attributes.class "fa fa-arrow-circle-down" ] [] ]
        ]


borderModule : List (Html Msg)
borderModule =
    [ headerModule "Borders"
    , Container.div [ Container.panel, Borders.border, Borders.border ] [ Html.p [] [ text "I have borders" ] ]
    , codeExample """Container.div [ Container.panel, Borders.border, Borders.border ] [ Html.p [] [ text "I have borders" ] ]"""
    , Container.div [ Container.panel, Borders.borderTop ] [ Html.p [] [ text "I have Top border" ] ]
    , codeExample """Container.div [ Container.panel, Borders.borderTop ] [ Html.p [] [ text "I have Top border" ] ]"""
    , Container.div [ Container.panel, Borders.borderBottom ] [ Html.p [] [ text "I have Border bottom" ] ]
    , codeExample """Container.div [ Container.panel, Borders.borderBottom ] [ Html.p [] [ text "I have Border bottom" ] ]"""
    ]


headerModule : String -> Html msg
headerModule title =
    Container.div [ Utils.class "w3-allerta", Size.xLarge ] [ p [] [ text title ] ]


cardsModule : List (Html Msg)
cardsModule =
    [ headerModule "Cards"
    , Container.div [ Container.panel, Cards.card ] [ p [] [ text "w3-card" ] ]
    , Container.div [ Container.panel, Cards.card2 ] [ p [] [ text "w3-card-2" ] ]
    , Container.div [ Container.panel, Cards.card4 ]
        [ p [] [ text "w3-card-4" ] ]
    , codeExample
        """Container.div [ Container.panel, Cards.card ] [ p [] [ text "w3-card" ] ]
Container.div [ Container.panel, Cards.card2 ] [ p [] [ text "w3-card-2" ] ]
Container.div [ Container.panel, Cards.card4 ] [ p [] [ text "w3-card-4" ] ]
"""
    ]


sampleTable : Option msg -> Html msg
sampleTable option =
    Tables.table [ option ]
        [ tbody []
            [ tr []
                [ th [] [ text "First Name" ]
                , th [] [ text "Last Name" ]
                , th [] [ text "Points" ]
                ]
            , tr []
                [ td [] [ text "Jill" ]
                , td [] [ text "Smith" ]
                , td [] [ text "50" ]
                ]
            , tr []
                [ td [] [ text "Eve" ]
                , td [] [ text "Jackson" ]
                , td [] [ text "94" ]
                ]
            , tr []
                [ td [] [ text "Adam" ]
                , td [] [ text "Johnson" ]
                , td [] [ text "67" ]
                ]
            ]
        ]


simpleTable : String
simpleTable =
    """Tables.table [ option ]
    [ tbody []
        [ tr []
            [ th [] [ text "First Name" ]
            , th [] [ text "Last Name" ]
            , th [] [ text "Points" ]
            ]
        , tr []
            [ td [] [ text "Jill" ]
            , td [] [ text "Smith" ]
            , td [] [ text "50" ]
            ]
        , tr []
            [ td [] [ text "Eve" ]
            , td [] [ text "Jackson" ]
            , td [] [ text "94" ]
            ]
        , tr []
            [ td [] [ text "Adam" ]
            , td [] [ text "Johnson" ]
            , td [] [ text "67" ]
            ]
        ]
    ]
"""


tablesModule : List (Html Msg)
tablesModule =
    [ headerModule "Tables"
    , div [] [ sampleTable <| Utils.class "" ]
    , codeExampleExtendable simpleTable
    , div [] [ sampleTable Tables.striped ]
    , div [] [ sampleTable Tables.bordered ]
    ]


marginsModule : List (Html Msg)
marginsModule =
    [ headerModule "Margins"
    , Container.div [ Borders.border ]
        [ Container.div [ Container.container, Margins.marginTop, Colors.green ]
            [ p [] [ text "The w3-margin-top class adds a 16px top margin to an element." ]
            ]
        ]
    , codeExample """Container.div [ Borders.border ]
        [ Container.div [ Container.container Margins.marginTop Colors.green ]
            [ p [] [ text "The w3-margin-top class adds a 16px top margin to an element." ]
            ]
        ]"""
    ]


showMenu : Bool -> Option msg
showMenu value =
    if value then
        Utils.style [ ( "display", "block" ) ]
    else
        Utils.style [ ( "display", "none" ) ]


accordionModule : Bool -> List (Html Msg)
accordionModule showAccordion =
    let
        showAccordion_ =
            if showAccordion then
                Utils.class "w3-show"
            else
                Utils.class "w3-hide"
    in
    [ Button.btn [ Button.block, Colors.black, Button.onClick OpenAccordion ] [ text "Open Section" ]
    , Container.div [ Container.container, showAccordion_, Animations.animateLeft ]
        [ Html.h4 [] [ text "Section 1" ]
        , Html.p [] [ text "Some Text" ]
        ]
    , Container.div [ Borders.border ]
        [ Html.p [] [ text "Something after accordion" ]
        ]
    ]


showAnimations : Animation -> Option msg
showAnimations show =
    case show of
        Top ->
            Animations.animateTop

        Bottom ->
            Animations.animateBottom

        Left ->
            Animations.animateLeft

        Right ->
            Animations.animateRight

        Opacity ->
            Animations.animateOpacity

        Zoom ->
            Animations.animateZoom

        Fading ->
            Animations.animateFading

        Spin ->
            Animations.animateSpin

        None ->
            Utils.class ""


animationModule : Animation -> List (Html Msg)
animationModule show =
    [ headerModule "Animations"
    , Button.btn [ Button.onClick (StartAnimations Top), Colors.black ] [ text "Top" ]
    , text " "
    , Button.btn [ Button.onClick (StartAnimations Bottom), Colors.black ] [ text "Bottom" ]
    , text " "
    , Button.btn [ Button.onClick (StartAnimations Left), Colors.black ] [ text "Left" ]
    , text " "
    , Button.btn [ Button.onClick (StartAnimations Right), Colors.black ] [ text "Right" ]
    , text " "
    , Button.btn [ Button.onClick (StartAnimations Zoom), Colors.black ] [ text "Zoom" ]
    , text " "
    , Button.btn [ Button.onClick (StartAnimations Opacity), Colors.black ] [ text "Opacity" ]
    , text " "
    , Button.btn [ Button.onClick (StartAnimations Fading), Colors.black ] [ text "Fading" ]
    , text " "
    , Button.btn [ Button.onClick (StartAnimations Spin), Colors.black ] [ text "Spin" ]
    , Container.div [ Container.container ]
        [ Headers.h1 [ showAnimations show ] [ text "Animation is fun" ]
        ]
    ]


view : Model -> Html Msg
view model =
    Container.div [ Container.container ]
        [ Css.w3css
        , useTheme gitHub
        , Container.div [ showMenu model.showMenu, Bar.sideBar, Bar.barBlock, Utils.style [ ( "width", "15%" ) ], Utils.class "w3-collapse", Cards.card ]
            [ Button.button [ Bar.barItem, Utils.class "w3-hide-large", Button.onClick CloseMenu ] [ text "Close" ]
            , Navigation.a [ Utils.href "/colors", Bar.barItem, Button.onLinkClick ShowColors, Utils.class "w3-button" ] [ text "Colors" ]
            , Navigation.a [ Utils.href "/buttons", Bar.barItem, Button.onLinkClick ShowButton, Utils.class "w3-button" ] [ text "Button" ]
            , Button.button [ Bar.barItem, Button.onLinkClick ShowProgress ] [ text "Progress" ]
            , Button.button [ Bar.barItem, Button.onLinkClick ShowBorders ] [ text "Borders" ]
            , Button.button [ Bar.barItem, Button.onClick ShowCards ] [ text "Cards" ]
            , Button.button [ Bar.barItem, Button.onClick ShowTables ] [ text "Tables" ]
            , Button.button [ Bar.barItem, Button.onClick ShowMargins ] [ text "Margins" ]
            , Button.button [ Bar.barItem, Button.onClick ShowAccordion ] [ text "Accordion" ]
            , Button.button [ Bar.barItem, Button.onClick ShowAnimations ] [ text "Animations" ]
            ]
        , Button.button [ Button.onClick ShowMenu ] [ text "Menu" ]
        , Container.div [ Utils.style [ ( "margin-left", "15%" ) ] ]
            [ Container.div [ Container.container ]
                (case model.showModule of
                    Home ->
                        [ Container.div [ Container.container ]
                            [ headerModule "Elm for W3css"
                            ]
                        ]

                    ButtonModule ->
                        buttonModule

                    ProgressModule ->
                        [ Html.div [] [] ]

                    Colors ->
                        colorModule

                    BordersModule ->
                        borderModule

                    CardsModule ->
                        cardsModule

                    TablesModule ->
                        tablesModule

                    MarginsModule ->
                        marginsModule

                    AccordionModule ->
                        accordionModule model.showAccordion

                    AnimationsModule ->
                        animationModule model.animations
                )
            ]
        ]
