data FourLetterAlphabet = L1 | L2 | L3 | L4 deriving (Show, Enum, Bounded)
data ThreeLetterAlphabet = Alpha | Beta | Kappa deriving (Show, Enum, Bounded)

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

threeLetterEncoder :: [ThreeLetterAlphabet] -> [ThreeLetterAlphabet]
threeLetterEncoder vals =  map rot3l vals
 where alphaSize = 1 + fromEnum (maxBound :: ThreeLetterAlphabet)
       rot3l = rotN alphaSize

threeLetterDecoder :: [ThreeLetterAlphabet] -> [ThreeLetterAlphabet]
threeLetterDecoder vals =  map rot3ldecoder vals
 where alphaSize = 1 + fromEnum (maxBound :: ThreeLetterAlphabet)
       rot3ldecoder = rotNdecoder alphaSize

fourLetterAlphabetEncoder :: [FourLetterAlphabet] -> [FourLetterAlphabet]
fourLetterAlphabetEncoder vals = map rot4l vals
 where alphaSize = 1 + fromEnum (maxBound :: FourLetterAlphabet)
       rot4l = rotN alphaSize

fourLetterDecoder :: [FourLetterAlphabet] -> [FourLetterAlphabet]
fourLetterDecoder vals =  map rot4ldecoder vals
 where alphaSize = 1 + fromEnum (maxBound :: ThreeLetterAlphabet)
       rot4ldecoder = rotNdecoder alphaSize
