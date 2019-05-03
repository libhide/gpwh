{-

Even if Haskell didn’t have partial application, you could hack together some approximations.
Following a similar pattern to flipBinaryArgs (figure 5.6), write a function binaryPartialApplication
that takes a binary function and one argument and returns a new function waiting for the missing argument. 

-}

binaryPartialApplication binaryFunction arg = (\x -> binaryFunction arg x)

-- Usage: takeFromFour = binaryPartialApplication (-) 4
