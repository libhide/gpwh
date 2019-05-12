{-

One type class we didn’t discuss is Enum. Use :info to look at the definition of this type class, as well as example members.
Now consider Int, which is an instance of both Enum and Bounded. Given the following definition of inc: 

inc :: Int -> Int
inc x = x + 1

and the succ function required by Enum, what’s the difference between inc and succ for Int? 

-}

