module EqInstances where

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn a') = a == a'

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') = a == a' && b == b'

data StringOrInt =
    TisAnInt   Int
  | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt a') = a == a'
  (==) (TisAString a) (TisAString a') = a == a'
  (==) _ _ = False

data Pair a =
  Pair (Eq a => a) a deriving Show

instance Eq Pair where
--  (==) (Eq (a, b) => Pair a b) (Eq (a', b') => Pair a' b') = a == a' && b == b'
  (==) (Pair a b) (Pair a' b') = a == a' && b == b'
--  (==) (Pair a b) (Pair a b) = True
  (==) _ _ = False
