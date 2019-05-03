-- Write a version of genApiRequestBuilder that also takes the resource as an argument.

getRequestURL host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

genApiRequestBuilder hostBuilder apiKey = (\resource id -> 
                                           hostBuilder apiKey resource id)

genApiWithResourceRequestBuilder hostBuilder apiKey resource = (\id ->
                                                    hostBuilder apiKey
                                                    resource id)

{- 

Usage: 

exampleUrlBuilder = genHostRequestBuilder "http://example.com"
exampleUrlBuilder "1337hAsk3ll" "book" "1234"

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk3ll"
myExampleUrlBuilder "book" "1234"


-}
