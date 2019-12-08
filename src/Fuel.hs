module Fuel
    ( fromMass
    ) where

fromMass :: Integer -> Integer
fromMass mass
  | mass < 6 = 0
  | otherwise = do
      let fuel = floor(fromIntegral(mass) / 3) - 2
      fuel + fromMass(fuel)
