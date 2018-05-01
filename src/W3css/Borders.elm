module W3css.Borders
    exposing
        ( border
        , borderBottom
        , borderLeft
        , borderRed
        , borderRight
        , borderTop
        , borderWithRed
        , noBorder
        )

import W3css.Types exposing (Option(..))


border : Option msg
border =
    ClassList ( "w3-border", True )


borderTop : Option msg
borderTop =
    ClassList ( "w3-border-top", True )


borderBottom : Option msg
borderBottom =
    ClassList ( "w3-border-bottom", True )


borderLeft : Option msg
borderLeft =
    ClassList ( "w3-border-left", True )


borderRight : Option msg
borderRight =
    ClassList ( "w3-border-right", True )


noBorder : Option msg
noBorder =
    ClassList ( "w3-border-0", True )


borderRed : Option msg
borderRed =
    ClassList ( "w3-border-red", True )


borderWithRed : Option msg
borderWithRed =
    Class "w3-border w3-border-red"
