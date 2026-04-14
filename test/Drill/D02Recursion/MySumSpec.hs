module Drill.D02Recursion.MySumSpec (spec) where

import Test.Hspec
import Drill.D02Recursion.MySum

spec :: Spec
spec = do
  describe "mySum" $ do
    it "空リストは 0" $
      mySum [] `shouldBe` 0
    it "[1,2,3] == 6" $
      mySum [1, 2, 3] `shouldBe` 6
    it "[1..100] == 5050" $
      mySum [1 .. 100] `shouldBe` 5050
