module Drill.D02Recursion.FibonacciSpec (spec) where

import Test.Hspec
import Drill.D02Recursion.Fibonacci

spec :: Spec
spec = do
  describe "fibonacci" $ do
    it "fibonacci 0 == 0" $
      fibonacci 0 `shouldBe` 0
    it "fibonacci 1 == 1" $
      fibonacci 1 `shouldBe` 1
    it "fibonacci 2 == 1" $
      fibonacci 2 `shouldBe` 1
    it "fibonacci 7 == 13" $
      fibonacci 7 `shouldBe` 13
    it "fibonacci 10 == 55" $
      fibonacci 10 `shouldBe` 55
