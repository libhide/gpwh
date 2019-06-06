-- Write a function emptyDrawers that takes the output of getDrawerContents
-- and tells you the number of drawers that are empty. 

data Organ = Heart | Brain | Kidney | Spleen deriving (Show, Eq)

sampleResults :: [Maybe Organ]
sampleResults = [(Just Brain), Nothing, Nothing, (Just Spleen)]

emptyDrawers :: [Maybe Organ] -> Int
emptyDrawers contents = (length . filter isNothing) contents
