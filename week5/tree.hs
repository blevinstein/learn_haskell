data Tree = Branch { left::Tree, right::Tree }
          | Leaf Int deriving (Show)

add :: Tree -> Int
add (Leaf i) = i
add (Branch l r) = (add l) + (add r)
