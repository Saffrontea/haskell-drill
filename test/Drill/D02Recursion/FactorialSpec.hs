module Drill.D02Recursion.FactorialSpec (spec) where

import Test.Hspec
import Drill.D02Recursion.Factorial

spec :: Spec
spec = do
  describe "factorial" $ do
    it "0! == 1" $
      factorial 0 `shouldBe` 1
    it "1! == 1" $
      factorial 1 `shouldBe` 1
    it "5! == 120" $
      factorial 5 `shouldBe` 120
    it "10! == 3628800" $
      factorial 10 `shouldBe` 3628800
