{-

Rewrite myGCD by using pattern matching. 

-}

myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)
