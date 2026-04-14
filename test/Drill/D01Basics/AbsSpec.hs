module Drill.D01Basics.AbsSpec (spec) where

import Test.Hspec
import Drill.D01Basics.Abs

spec :: Spec
spec = do
  describe "myAbs" $ do
    it "正の数はそのまま返す" $
      myAbs 5 `shouldBe` 5
    it "負の数は正にする" $
      myAbs (-3) `shouldBe` 3
    it "0 は 0 を返す" $
      myAbs 0 `shouldBe` 0
