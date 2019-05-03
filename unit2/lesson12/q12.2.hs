{-

Implement a patientSummary function that uses your final Patient type.
patientSummary should output a string that looks like this: 

**************
Patient Name: Smith, John
Sex: Male
Age: 46
Height: 72 in.
Weight: 210 lbs.
Blood Type: AB+
**************

If you need to, feel free to create useful helper functions.

-}

type FirstName = String
type MiddleName = String
type LastName = String

data Name = Name FirstName LastName 
            | NameWithMiddle FirstName MiddleName LastName
data Sex = Male | Female
data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType

showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType :: BloodType -> String
showBloodType (BloodType abo rh)  = showABO abo ++ showRh rh

data Patient = Patient { name :: Name
                       , sex :: Sex
                       , age :: Int
                       , height :: Int
                       , weight :: Int
                       , bloodType :: BloodType }

showSex Male = "Male"
showSex Female = "Female"

patientSummary :: Patient -> String
patientSummary patient = "**************\n" ++
                        "Sex: " ++ showSex (sex patient) ++ "\n" ++
                        "Age: " ++ show (age patient) ++ "\n" ++
                        "Height: " ++ show (height patient) ++ " in.\n" ++
                        "Weight: " ++ show (weight patient) ++ " lbs.\n" ++
                        "Blood Type: " ++ showBloodType (bloodType patient) ++
                        "\n**************\n"
