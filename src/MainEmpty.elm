module Main exposing (Model)

import Browser
import Html exposing (Html, button, div, h1, img, text)
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)



-- MODEL


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = NoOp



-- VIEW


view : Model -> Html Msg
view model =
    text "hei"



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    model



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
