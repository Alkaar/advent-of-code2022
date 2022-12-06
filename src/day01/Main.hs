module Main (main) where

import qualified Data.List as List

main :: IO ()
main = do
       contents <- readFile "resources/day01.txt"
       let calories = foldl (\acc x -> case x of
                                     "" -> acc ++ [0]
                                     _ -> init acc ++ [last acc + (read x :: Int)]) [0] . lines $ contents

       let solution1 = maximum calories
       let solution2 = topCalories 3 calories

       print solution1
       print solution2

topCalories :: (Num n, Ord n, Num l, Ord l) => n -> [l] -> l
topCalories n l
    | n == 0    = 0
    | otherwise = do
                  let maxNum = maximum l
                  maxNum + topCalories (n-1) (List.delete maxNum l)
