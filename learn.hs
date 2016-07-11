module Learn where

triple x = 3 * x
half x = x / 2
square x = x * x

circleArea r = 3.14 * (square r)

bigPlus :: Int -> Integer -> Integer
bigPlus x y = (toInteger x) + y

x :: Int
x = 10 * 5 + y

myResult :: Int
myResult = x * 5

y :: Int
y = 10


foo x =
    let y = x * 2
        z = x ^ 2
    in (-2) * y * z

mult1     = x * y
  where x = 5
        y = 6

