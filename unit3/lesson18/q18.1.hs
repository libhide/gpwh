-- For the types Triple and Box, implement a function similar to map, tripleMap, and boxMap.

data Box a = Box a deriving Show
data Triple a = Triple a a a deriving Show

boxMap :: (a -> b) -> Box a -> Box b
boxMap func (Box val) = Box (func val)

boxTriple :: (a -> b) -> Triple a -> Triple b
boxTriple func (Triple v1 v2 v2) = Triple (func v1) (func v2) (func v3)
