{-

Now that you know about partial application, you no longer need to use genIfEvenX.
Redefine ifEvenInc, ifEvenDouble, and ifEvenSquare by using ifEven and partial application. 

-}

ifEven f x = if even x
             then f x
             else x

ifEvenInc = ifEven (\n -> n + 1)
ifEvenDouble = ifEven (\n -> n * 2)
ifEvenSquare = ifEven (\n -> n * n)
