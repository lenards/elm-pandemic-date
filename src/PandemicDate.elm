module PandemicDate exposing (..)

import Date exposing (Date, Unit(..))
import Time exposing (Month(..))


toPandemicDate : Date -> String
toPandemicDate now =
    let
        days =
            Date.diff
                Days
                (Date.fromCalendarDate 2020 Mar 1)
                now
    in
    "March " ++ String.fromInt days ++ "th, 2020"
