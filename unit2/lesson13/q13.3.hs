{-

Write the following function that works just like succ on Bounded types but can be called
an unlimited number of times without error. The function will work like inc in the preceding
example but works on a wider range of types, including types that aren’t members of Num: 

cycleSucc :: (Bounded a, Enum a, ? a) => a -> a
cycleSucc n = ?

Your definition will include functions/values from Bounded, Enum, and the mystery type class.
Make a note of where each of these three (or more) functions/values comes from. 

-}

cycleSucc :: (Bounded a, Enum a, Eq a) => a -> a
cycleSucc n = if n == maxBound
              then minBound
              else succ n
