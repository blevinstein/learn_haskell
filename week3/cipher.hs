import Data.List

cipher :: [Char] -> Int -> [Char]
cipher str n = map (cipherOne n) str

cipherOne :: Int -> Char -> Char
cipherOne n c = case (Data.List.findIndex (== c) rotMat) of
  Nothing -> '_'
  Just x -> rotMat !! ((n + x) `mod` (length rotMat))
  where rotMat = "abcdefghijklmnopqrstuvwxyz"
