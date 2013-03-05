head :: [a] -> a
head [] = error "empty list"
head [x] = x
head (x:xs) = x
