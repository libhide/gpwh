{-

Write a function inFirstHalf that returns True if an element is in the first
half of a list, and otherwise returns False. 

-}

inFirstHalf value aList = value `elem` firstHalf
  where firstHalf = take midPoint aList
        midPoint = (length aList) `div` 2
