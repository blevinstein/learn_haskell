rev [] = []
rev lst = (last lst) : (rev (init lst))
