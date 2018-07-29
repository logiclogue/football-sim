module Seed(Seed) where

newtype Seed = Seed String

instance Semigroup Seed where
    (Seed x) <> (Seed y) = Seed (x ++ y)
