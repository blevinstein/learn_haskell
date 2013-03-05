import Data.Char
import Data.List

strong :: String -> Bool
strong s
	| (length s) < 15 = False
	| all (not.isUpper) s = False
	| all (not.isLower) s = False
	| all (not.isNumber) s = False
	| otherwise = True