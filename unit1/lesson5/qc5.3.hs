{-

Make a builder function that’s specifically for "http://example.com", the "1337hAsk3ll"
API key, and the book resource. That’s a function that requires only the ID of a specific
book and then generates the full URL. 

-}

getRequestURL host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

exampleBuilder = getRequestURL "http://example.com" "1337hAsk3ll" "books"

-- Usage: exampleBuilder "1234"
