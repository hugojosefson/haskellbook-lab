module Strings where

exclaim :: String -> String
exclaim x = x ++ "!"

pickLetter :: Int -> String -> Char
pickLetter i s = s !! (i - 1)

pickFourth :: String -> Char
pickFourth = pickLetter 4

pickThird :: String -> Char
pickThird = pickLetter 3

dropNine :: String -> String
dropNine = drop 9

curry :: String
curry = exclaim "Curry is awesome"
