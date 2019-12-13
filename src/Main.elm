module Main exposing (main)

import Browser
import Html exposing (br, button, div, p, text)
import Html.Events exposing (onClick)


main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


type alias Model =
    { displayName : String
    }


type alias Flags =
    { displayName : String
    }


init : Flags -> ( Model, Cmd msg )
init flags =
    ( { displayName = flags.displayName }, Cmd.none )


update _ model =
    (model, Cmd.none)


subscriptions _ =
    Sub.none


view model =
    div []
        [ p [] [ text ("Hello, " ++ model.displayName) ]
        ]
