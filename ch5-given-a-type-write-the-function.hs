module GivenATypeWriteTheFunction where

i :: a -> a
i x = x

c :: a -> b -> a
c x _ = x

c'' :: b -> a -> b
c'' x _ = x -- yes, equivalent to c

c' :: a -> b -> b
c' _ x = x

r :: [a] -> [a]
r = id

r' :: [a] -> [a]
r' [] = []
r' (_:xs) = xs

co :: (b -> c) -> (a -> b) -> (a -> c)
co f g = f . g

a :: (a -> c) -> a -> a
a _ x = x

a' :: (a -> b) -> a -> b
a' f x = f x
