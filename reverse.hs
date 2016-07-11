module Reverse where


rvrs :: String -> String
rvrs s =
    drop 9 s ++
    " " ++
    drop 6 (take 8 s) ++
    " " ++
    take 5 s

main :: IO ()
main = print $ rvrs "Curry is awesome."
