module OTP where
  import XOR

  myPad :: String
  myPad = "Shhhhhh"

  myPlainText :: String
  myPlainText = "Haskell"

  applyOTP' :: String -> String -> [Bits]
  applyOTP' pad plaintext = map (\pair -> (fst pair) `xor` (snd pair)) 
                                (zip padBits plaintextBits)
    where padBits = map charToBits pad
          plaintextBits = map charToBits plaintext

  applyOTP :: String -> String -> String
  applyOTP pad plaintext = map bitsToChar bitList
    where bitList = applyOTP' pad plaintext

  encoderDecoder :: String -> String
  encoderDecoder = applyOTP myPad

-- Usage:
-- encoderDecoder "Hello World"
