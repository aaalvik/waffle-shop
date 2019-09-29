module MainWIP exposing (Model)

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



-- VIEW


view : Model -> Html msg
view model =
    div []
        [ text "Ragnhilds vaffelbutikk"
        , viewWaffles model
        ]


viewWaffles : Model -> Html msg
viewWaffles model =
    div []
        [ text <| "Det er " ++ String.fromInt model ++ " vafler i butikken." ]



-- UPDATE


update : msg -> Model -> Model
update msg model =
    model



-- MAIN


main : Program () Model msg
main =
    Browser.sandbox
        { view = view
        , update = update
        , init = init
        }
