module TypeArguments where

f :: a -> a -> a -> a
f = undefined

x :: Char
x = undefined

g :: a -> b -> c -> b
g = undefined

h :: (Num a, Num b) => a -> b -> b
h = undefined

h' :: (Num a, Integral b) => a -> b -> b
h' = undefined

jackal :: (Ord a, Eq b) => a -> b -> a
jackal = undefined

kessel :: (Ord a, Num b) => a -> b -> a
kessel = undefined

kessel' :: (Ord a) => a -> a
kessel' = undefined

