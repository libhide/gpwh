-- Write a function similar to canDonateTo that takes two patients as arguments rather than two BloodTypes.

type FirstName = String
type MiddleName = String
type LastName = String

data Name = Name FirstName LastName 
            | NameWithMiddle FirstName MiddleName LastName
data Sex = Male | Female
data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType

data Patient = Patient { name :: Name
                       , sex :: Sex
                       , age :: Int
                       , height :: Int
                       , weight :: Int
                       , bloodType :: BloodType }

canDonateTo :: BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _ = True                     
canDonateTo _ (BloodType AB _) = True
canDonateTo (BloodType A _) (BloodType A _) = True
canDonateTo (BloodType B _) (BloodType B _) = True
canDonateTo _ _ = False -- otherwise

donateFor :: Patient -> Patient -> Bool
donateFor p1 p2 = canDonateTo (bloodType p1) (bloodType p2)
