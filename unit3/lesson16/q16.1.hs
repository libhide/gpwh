{-

To further complicate the items in your store, you eventually keep an inventory
of free pamphlets. Pamphlets have a title, a description, and a contact field
for the organization that provides the pamphlet. Create the Pamphlet type and
add it to StoreItem. Additionally, modify the price so that it works with Pamphlet. 

-}

data Pamphlet = Pamphlet {
  pamphletTitle :: String,
  description :: String,
  contact :: String
}

data StoreItem = BookItem Book
 | RecordItem VinylRecord
 | ToyItem CollectibleToy
 | PamphletItem Pamphlet

price :: StoreItem -> Double
price (BookItem book) = bookPrice book
price (RecordItem record) = recordPrice record
price (ToyItem toy) = toyPrice toy
price (PamphletItem _) = 0.0
