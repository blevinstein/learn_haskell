convert :: (Double, [Char]) -> (Double, [Char])

convert (x, "m")   = (x*1.09361,  "yd")
convert (x, "yd")  = (x/1.09361,  "m")

convert (x, "L")   = (x*0.264172, "gal")
convert (x, "gal") = (x/0.264172, "L")

convert (x, "kg")  = (x*2.20462,  "lb")
convert (x, "lb")  = (x/2.20462,  "kg")

convert (_, _)     = error "Invalid unit type"
