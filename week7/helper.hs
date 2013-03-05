module Helper where
import Text.Regex

strToPt :: String -> (Float, Float)
strToPt str =
  let strs = splitRegex (mkRegex ",") str in
  let nums = map (\s -> read s :: Float) strs in
  (nums !! 0, nums !! 1)
