{-

Note that Enum doesn’t require either Ord or Eq, even though it maps types to
Int values (which implement both Ord and Eq). Ignoring the fact that you can
easily use deriving for Eq and Ord, use the derived implementation of Enum to
make manually defining Eq and Ord much easier. 

-}

data Number = One | Two | Three deriving Enum

implement Eq Number where
  (==) num1 num2 = (fromEnum num1) == (fromEnum num2)

implement Ord Number where
  compare num1 num2 = compare (fromEnum num1) (fromEnum num2)
