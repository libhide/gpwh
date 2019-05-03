-- Write a function genIfXEven that creates a closure with x and returns
-- a new function that allows the user to pass in a function to apply to
-- x if x is even.

ifEven f x = if even x
             then f x
             else x

genIfXEven x = (\f -> ifEven f x)

-- Usage: genIfXEven 4 (\n -> n + 1)
