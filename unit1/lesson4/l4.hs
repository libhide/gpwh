ifEvenDoOperation operationFunction n = if even n
                                        then operationFunction n
                                        else n

ifEvenCube n = ifEvenDoOperation (\x -> x^3) n
