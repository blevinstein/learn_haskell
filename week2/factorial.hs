facA 0 = 1
facA n = n * (facA (n-1))

facB n = facC 1 n
facC x 0 = x
facC x n = facC (x*n) (n-1)
