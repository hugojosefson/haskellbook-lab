module CorrectingSyntax where

x = (+)

f xs = w `x` 1
    where
        w = length xs

id = \x -> x

id' x = x

first :: [a] -> a
first (x : xs) = x

fst' (x : xs) = x

snd' (a, b) = a
