{-

Create a Shape type that includes the following shapes: Circle, Square, and Rectangle.
Then write a function to compute the perimeter of a Shape as well as its area. 

-}

type Radius = Double
type Height = Double
type Width = Double

data Shape = Circle Radius | Square Height | Rectangle Height Width deriving Show

perimeter :: Shape -> Double
perimeter (Circle r) = 2 * pi * r
perimeter (Square h) = 4 * h
perimeter (Rectangle h w) = 2 * (h + w)

area :: Shape -> Double
area (Circle r) = pi * r^2
area (Square h) = h^2
area (Rectangle h w) = h * w
