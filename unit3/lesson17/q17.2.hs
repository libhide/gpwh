{-

If your Events and Probs types were data types and not just synonyms, you could
make them instances of Semigroup and Monoid, where combineEvents and combineProbs
were the <> operator in each case. Refactor these types and make instances of
Semigroup and Monoid. 

-}

data Events = Events [String]
data Probs = Probs [Double]

combineEvents :: Events -> Events -> Events
combineEvents (Events e1) (Events e2) = Events (cartCombine combiner e1 e2)
  where combiner = (\x y -> mconcat [x,"-",y])

instance Semigroup Events where
  (<>) = combineEvents

instance Monoid Events where
  mempty = Events []
  mappend = (<>)

combineProbs :: Probs -> Probs -> Probs
combineProbs (Probs p1) (Probs p2) = Probs (cartCombine (*) p1 p2)

instance Semigroup Probs where
  (<>) = combineProbs

instance Monoid Probs where
  mempty = Probs []
  mappend = (<>)
