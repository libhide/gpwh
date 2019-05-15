module Rot where
  rotN :: (Bounded a, Enum a) => Int -> a -> a
  rotN n c = toEnum rotation
    where halfAlphabet = n `div` 2
          offset = fromEnum c + halfAlphabet
          rotation =  offset `mod` n

  rotNdecoder :: (Bounded a, Enum a) => Int -> a -> a
  rotNdecoder n c = toEnum rotation
    where halfN = n `div` 2
          offset = if even n
                   then fromEnum c + halfN
                   else 1 + fromEnum c + halfN
          rotation =  offset `mod` n

  rotEncoder :: String -> String
  rotEncoder text = map rotChar text
    where alphaSize = 1 + fromEnum (maxBound :: Char)
          rotChar = rotN alphaSize  -- partial application!

  rotDecoder :: String -> String
  rotDecoder text =  map rotCharDecoder text
    where alphaSize = 1 + fromEnum (maxBound :: Char)
          rotCharDecoder = rotNdecoder alphaSize  -- partial application!

-- Usage
-- rotEncoder "Jean-Paul likes Simone"
