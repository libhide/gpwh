-- Assume that Creator is an instance of Show. Write a madeBy function that has the
-- type StoreItem -> String and does its best to determine who made the StoreItem. 

madeBy :: StoreItem -> String
madeBy (BookItem book) = show (author book)
madeBy (RecordItem record) = show (artist record)
madeBy _ = "unknown"
