module Main where

import Data.List
import Fuel
import System.IO

totalFuel :: [Integer] -> Integer
totalFuel [] = 0
totalFuel x = sum [fromMass mass | mass <- x ] :: Integer

main = do
    handle <- openFile "data/inputs.txt" ReadMode
    contents <- hGetContents handle
    let linesFromFile = lines contents
    let fuel = totalFuel(map (read::String->Integer) linesFromFile)
    print fuel
    hClose handle
