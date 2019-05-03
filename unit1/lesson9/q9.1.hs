-- Use filter and length to re-create the elem function. 

myElem _ [] = False
myElem val aList = if length filteredList >= 1
                   then True
                   else False
  where filteredList = filter (\x -> x == val) aList

{-

Book's solution:

myElem val myList = (length filteredList) /= 0
  where filteredList = filter (== val) myList

-}
