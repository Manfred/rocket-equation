import Test.Hspec
import Control.Exception (evaluate)

import Fuel

main :: IO ()
main = hspec $ do
  describe "Fuel.fromMass" $ do
    it "computes the proper fuel for zero mass" $ do
      Fuel.fromMass 0 `shouldBe` (0 :: Integer)

    it "computes the proper fuel for mass under 6" $ do
      Fuel.fromMass 4 `shouldBe` (0 :: Integer)

    it "computes fuel" $ do
      Fuel.fromMass 12 `shouldBe` (2 :: Integer)
      Fuel.fromMass 14 `shouldBe` (2 :: Integer)
      Fuel.fromMass 1969 `shouldBe` (654 :: Integer)
      Fuel.fromMass 100756 `shouldBe` (33583 :: Integer)
