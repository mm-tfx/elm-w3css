module W3css.Button
    exposing
        ( block
        , btn
        , button
        , circle
        , disabled
        , onClick
        , onLinkClick
        , ripple
        )

{-| Button


# Functions

@docs button , block, onClick, disabled, ripple, circle, btn, onLinkClick

-}

import Html exposing (Attribute, Html, button)
import Html.Events exposing (onClick, onWithOptions)
import Json.Decode as Decode
import List exposing (map)
import W3css.Types exposing (..)
import W3css.Utils exposing (applyOptions)


{-| -}
onClick : a -> Option a
onClick msg =
    Attribute (Html.Events.onClick msg)


{-| -}
onLinkClick : msg -> Option msg
onLinkClick msg =
    Attribute
        (onWithOptions "click"
            { stopPropagation = True
            , preventDefault = True
            }
            (Decode.succeed msg)
        )


{-| -}
block : Option msg
block =
    ClassList ( "w3-block", True )


{-| Creates w3Css button.
A rectangular button with a gray hover effect.
Default color is light-gray in W3.CSS version 3.
Default color is inherited from parent element in version 4.

    button [][ text "Button" ]

-}
button : List (Option msg) -> List (Html msg) -> Html msg
button options children =
    Html.button (applyOptions (initialClass :: options)) children


{-| Creates w3Css button.
A rectangular button with a shadow hover effect.
Default color is black.

    btn [][ text "Button" ]

-}
btn : List (Option msg) -> List (Html msg) -> Html msg
btn options children =
    Html.button (applyOptions (ClassList ( "w3-btn", True ) :: options)) children


{-| When your `button` shall be disabled
-}
disabled : Option msg
disabled =
    ClassList ( "w3-disabled", True )


initialClass : Option msg
initialClass =
    ClassList ( "w3-button", True )


{-| -}
ripple : Option msg
ripple =
    ClassList ( "w3-ripple", True )


{-| -}
circle : Option msg
circle =
    ClassList ( "w3-circle", True )
