zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether a b = [(a !! i,b !! i) | i <- [0..((length a)-1)]]
