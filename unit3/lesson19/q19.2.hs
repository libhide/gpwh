-- Write a version of map that works for Maybe types, called maybeMap. 

maybeMap :: (a -> b) -> Maybe a -> Maybe b
maybeMap func Nothing = Nothing
maybeMap func (Just val) = Just (func val)
