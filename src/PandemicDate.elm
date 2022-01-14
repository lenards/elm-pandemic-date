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

This will return "March 683th, 2020"

-}
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
