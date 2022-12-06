module Main (main) where

main :: IO ()
main = do
       contents <- readFile "resources/day02.txt"
       let strategyGuide = map words . lines $ contents
       let solution1 = foldl (\acc y -> case y of
                                     ["A", "X"] -> acc + 1 + 3
                                     ["A", "Y"] -> acc + 2 + 6
                                     ["A", "Z"] -> acc + 3 + 0
                                     ["B", "X"] -> acc + 1 + 0
                                     ["B", "Y"] -> acc + 2 + 3
                                     ["B", "Z"] -> acc + 3 + 6
                                     ["C", "X"] -> acc + 1 + 6
                                     ["C", "Y"] -> acc + 2 + 0
                                     ["C", "Z"] -> acc + 3 + 3
                                     _ -> acc) 0 strategyGuide
       print solution1

       let solution2 = foldl (\acc y -> case y of
                                     ["A", "X"] -> acc + 3 + 0
                                     ["A", "Y"] -> acc + 1 + 3
                                     ["A", "Z"] -> acc + 2 + 6
                                     ["B", "X"] -> acc + 1 + 0
                                     ["B", "Y"] -> acc + 2 + 3
                                     ["B", "Z"] -> acc + 3 + 6
                                     ["C", "X"] -> acc + 2 + 0
                                     ["C", "Y"] -> acc + 3 + 3
                                     ["C", "Z"] -> acc + 1 + 6
                                     _ -> acc) 0 strategyGuide
       print solution2