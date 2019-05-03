-- Implement your own version of cycle

finiteCycle (first:rest) = first:rest ++ [first]

