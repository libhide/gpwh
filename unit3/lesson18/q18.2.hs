{-

Modify the Organ type so that it can be used as a key.
Then build a Map, organ-Inventory, of each organ to its count in the organCatalog. 

-}

import qualified Data.Map as Map

data Organ = Heart | Brain | Kidney | Spleen deriving (Show, Eq, Ord, Enum)

organs :: [Organ]
organs = [Heart, Heart, Brain, Spleen, Spleen, Kidney]

ids :: [Int]
ids = [2, 7, 13, 14, 21, 24]

organPairs :: [(Int, Organ)]
organPairs = zip ids organs

organCatalog :: Map.Map Int Organ
organCatalog = Map.fromList organPairs

values :: [Organ]
values = map snd (Map.toList organCatalog)

allOrgans :: [Organ]
allOrgans = [Heart .. Spleen]

organCounts :: [Int]
organCounts = map countOrgan allOrgans
  where countOrgan = (\organ -> (length . filter (== organ)) values)

organInventory :: Map.Map Organ Int
organInventory = Map.fromList (zip allOrgans organCounts)
