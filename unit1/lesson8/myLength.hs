-- Implement your own version of length

myLength [] = 0
myLength xs = 1 + length' (tail xs)
