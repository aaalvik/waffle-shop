module MainDone exposing (Model)

import Browser
import Html exposing (Html, button, div, h1, h2, img, p, text)
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)



-- MODEL


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = CreateWaffle
    | EatWaffle



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Velkommen til Ragnhilds vaffelbutikk!" ]
        , p [] [ text ("Det er " ++ String.fromInt model ++ " vafler i butikken.") ]
        , button [ onClick CreateWaffle ] [ text "Lag vaffel" ]
        , button [ onClick EatWaffle ] [ text "Spis vaffel" ]
        , viewWaffles model
        ]


viewWaffles : Model -> Html Msg
viewWaffles model =
    div [ class "waffles" ]
        (List.repeat model (img [ class "img", src "/static/img/waffle.png" ] []))



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    case msg of
        CreateWaffle ->
            model + 1

        EatWaffle ->
            if model == 0 then
                0

            else
                model - 1



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox
        { view = view
        , init = init
        , update = update
        }
