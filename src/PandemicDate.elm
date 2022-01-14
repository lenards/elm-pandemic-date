module PandemicDate exposing (toPandemicDate)

{-| When you feel like time stopped and we're still in March 2020 ...


# Function(s)

@docs toPandemicDate

-}

import Date exposing (Date, Unit(..))
import Time exposing (Month(..))


{-| Returns the date in March 2020 that the
date feels like it is.

    import Time exposing (Month(..))
    import Date exposing (Unit(..))
    import PandemicDate
    PandemicDate.toPandemicDate (Date.fromCalendarDate 2022 Jan 13)

This will return "March 683rd, 2020"

-}
toPandemicDate : Date -> String
toPandemicDate now =
    let
        days =
            Date.diff
                Days
                (Date.fromCalendarDate 2020 Mar 1)
                now

        ordinality =
            case modBy 10 days of
                1 ->
                    "st"
                2 ->
                    "nd"
                3 ->
                    "rd"
                _ ->
                    "th"
    in
    "March " ++ String.fromInt days ++ ordinality ++ ", 2020"
