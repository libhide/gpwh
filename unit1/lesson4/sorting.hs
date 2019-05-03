import Data.List

names = [("Ian", "Curtis"),
         ("Bernard","Sumner"),
         ("Peter", "Hook"),
         ("Stephen","Morris")]

compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2
                                    then LT
                                    else EQ
  where lastName1 = snd name1
        lastName2 = snd name2                                

compareLastNames2 name1 name2 = if lastName1 > lastName2
                                then GT
                                else if lastName1 < lastName2
                                     then LT
                                     else if firstName1 > firstName2
                                          then GT
                                          else if firstName1 < firstName2
                                               then LT
                                               else EQ
                                               
  where lastName1 = snd name1
        lastName2 = snd name2
        firstName1 = fst name1
        firstName2 = fst name2


compareLastNamesCompare name1 name2 = if lastNameComparision == EQ
                                      then compare firstName1 firstName2
                                      else lastNameComparision
  where lastName1 = snd name1
        lastName2 = snd name2
        lastNameComparision = compare lastName1 lastName2
        firstName1 = fst name1
        firstName2 = fst name2


-- sortBy <compare-func> names
