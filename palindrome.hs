module Palindrome where

palindrome :: (Eq a) => [a] -> Bool
palindrome x = x == revX
    where
        revX = reverse x
