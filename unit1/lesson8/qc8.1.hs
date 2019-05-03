-- Use pattern matching to rewrite myLength without needing to explicitly call tail. 

myLength [] = 0
myLength (x:xs) = 1 + myLength xs
