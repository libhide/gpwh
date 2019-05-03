-- Implement your own version of reverse, which reverses a list. 

myReverse [] = []
myReverse (x:[]) = [x]
myReverse (x:xs) = (myReverse xs) ++ [x]
