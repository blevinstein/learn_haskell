isPal :: Eq a => [a] -> Bool
isPal [] = True
isPal [x] = True
isPal (hd:tl) = ((hd == (last tl)) && (isPal (init tl)))
