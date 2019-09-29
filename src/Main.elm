module Main exposing (Model, Msg(..), init, main, update, view, viewWaffles)

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



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            if model == 0 then
                model

            else
                model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text ("Ragnhilds vaffelbutikk: " ++ String.fromInt model ++ " vafler") ]
        , button [ onClick Increment ] [ text "Lag vaffel" ]
        , button [ onClick Decrement ] [ text "Spis vaffel" ]
        , viewWaffles model
        ]


viewWaffles : Model -> Html Msg
viewWaffles model =
    div []
        (List.repeat model (img [ class "img", src "/static/img/waffle.png" ] []))



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.sandbox
        { view = view
        , init = init
        , update = update
        }
