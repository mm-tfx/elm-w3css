module W3css.Bar
    exposing
        ( bar
        , barBlock
        , barItem
        , sideBar
        )

import W3css.Types exposing (Option(..))
import W3css.Utils exposing (applyOptions)


bar : Option msg
bar =
    ClassList ( "w3-bar", True )


sideBar : Option msg
sideBar =
    ClassList ( "w3-sidebar", True )


barBlock : Option msg
barBlock =
    ClassList ( "w3-bar-block", True )


barItem : Option msg
barItem =
    ClassList ( "w3-bar-item", True )
