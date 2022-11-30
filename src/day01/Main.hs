module Main (main) where

main :: IO ()
main =
  do
    contents <- readFile "resources/day01.txt"
    print contents
