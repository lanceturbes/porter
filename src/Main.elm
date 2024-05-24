module Main exposing (main)

import Canvas exposing (..)
import Canvas.Settings exposing (..)
import Color
import Html exposing (Html)


view : Html msg
view =
    let
        width =
            500

        height =
            300
    in
    Canvas.toHtml ( width, height )
        []
        [ shapes [ fill Color.white ] [ rect ( 0, 0 ) width height ]
        , renderSquare
        ]


renderSquare : Renderable
renderSquare =
    shapes [ fill (Color.rgba 0 0 0 1) ]
        [ rect ( 0, 0 ) 100 50 ]


main : Html msg
main =
    view
