module Main (main) where

import qualified Data.List as List

main :: IO ()
main = do
       contents <- readFile "resources/day01.txt"
       let calories = foldl (\x y -> case y of
                                     "" -> x ++ [0]
                                     _ -> init x ++ [last x + (read y :: Int)]) [0] . lines $ contents

       print $ maximum calories
       print $ topCalories 3 calories

topCalories :: (Num n, Ord n, Num l, Ord l) => n -> [l] -> l
topCalories n l
    | n == 0    = 0
    | otherwise = do
                  let maxNum = maximum l
                  maxNum + topCalories (n-1) (List.delete maxNum l)
