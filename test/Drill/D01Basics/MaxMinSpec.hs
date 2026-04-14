module Drill.D01Basics.MaxMinSpec (spec) where

import Test.Hspec
import Drill.D01Basics.MaxMin

spec :: Spec
spec = do
  describe "myMax" $ do
    it "2つ目が大きい場合" $
      myMax 3 5 `shouldBe` 5
    it "1つ目が大きい場合" $
      myMax 7 2 `shouldBe` 7
    it "同じ値の場合" $
      myMax 4 4 `shouldBe` 4

  describe "myMin" $ do
    it "1つ目が小さい場合" $
      myMin 3 5 `shouldBe` 3
    it "2つ目が小さい場合" $
      myMin 7 2 `shouldBe` 2
    it "同じ値の場合" $
      myMin 4 4 `shouldBe` 4
