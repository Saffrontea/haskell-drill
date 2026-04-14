module Drill.D02Recursion.PowerSpec (spec) where

import Test.Hspec
import Drill.D02Recursion.Power

spec :: Spec
spec = do
  describe "myPower" $ do
    it "2^0 == 1" $
      myPower 2 0 `shouldBe` 1
    it "2^3 == 8" $
      myPower 2 3 `shouldBe` 8
    it "3^4 == 81" $
      myPower 3 4 `shouldBe` 81
    it "1^100 == 1" $
      myPower 1 100 `shouldBe` 1
