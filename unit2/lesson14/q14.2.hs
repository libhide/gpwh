{-

Define a five-sided die (FiveSidedDie type). Then define a type class named
Die and at least one method that would be useful to have for a die. Also
include superclasses you think make sense for a die. Finally, make your
FiveSidedDie an instance of Die. 

-}

data FiveSidedDie = S1 | S2 | S3 | S4 | S5 deriving (Enum, Eq, Show)

class (Eq a, Enum a) => Die a where
  roll :: Int -> a

instance Die FiveSidedDie where
  roll n = toEnum (n 'mod' 5)
