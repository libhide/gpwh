{-

The tail function in Haskell returns an error when called on an empty list.
Modify myTail so that it does handle the case of an empty list by returning the empty list. 

-}

myTail (_:xs) = xs
myTail [] = []
