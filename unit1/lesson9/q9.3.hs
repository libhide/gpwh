{-

In mathematics, the harmonic series is the sum of 1/1 + 1/2 + 1/3 + 1/4 .... 
Write a function harmonic that takes an argument n and calculates the sum
of the series to n. Make sure to use lazy evaluation. 

-}

harmonic n = sum (take n seriesValues)
  where seriesPairs = zip (cycle [1.0]) [1.0, 2.0..]
        seriesValues = map (\pair -> (fst pair) / (snd pair)) seriesPairs
