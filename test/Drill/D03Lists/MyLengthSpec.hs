module Drill.D03Lists.MyLengthSpec (spec) where

import Test.Hspec
import Drill.D03Lists.MyLength

spec :: Spec
spec = do
  describe "myLength" $ do
    it "空リストは 0" $
      myLength ([] :: [Int]) `shouldBe` 0
    it "[1,2,3] は 3" $
      myLength [1, 2, 3 :: Int] `shouldBe` 3
    it "文字列 \"hello\" は 5" $
      myLength "hello" `shouldBe` 5
