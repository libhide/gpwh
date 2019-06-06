-- Create a program that asks the user to input a number and then returns the
-- nth Fibonacci numbers (see lesson 8 for an example of computing Fibonacci numbers).

fib 0 = 0
fib 1 = 1
fib 2 = 1
fib n = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
  putStrLn "Enter a number"
  number <- getLine
  let value = fib (read number)
  putStrLn (show value)
