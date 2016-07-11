module Where where


f =
    let
        x = 3
        y = 1000
    in
        x * 3 + y

f' = x * 3 + y
    where
        x = 3
        y = 1000

g =
    let
        y = 10
        x = 10 * 5 + y
    in
        x * 5

g' = x * 5
    where
        y = 10
        x = 10 * 5 + y


h =
    let
        x = 7
        y = negate x
        z = y * 10
    in
        z / x + y

h' = z / x + y
    where
        x = 7
        y = negate x
        z = y * 10


