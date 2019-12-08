module Fuel
    ( fromMass
    ) where

fromMass :: Integer -> Integer
fromMass mass
  | mass < 6 = 0
  | otherwise = floor(fromIntegral(mass) / 3) - 2
