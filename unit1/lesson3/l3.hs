overwrite x = (\x ->
  (\x ->
   (\x -> x) 4
  )3
 )2

counterLet x = let x = x + 1
 in
  let x = x + 1
  in
   x

counterLambda x = (\x -> 
  (\x ->
    (\x -> (x + 1)) x
  ) x
 ) x  
  
counter x = (\x -> (x + 2)) x
