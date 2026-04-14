module Drill.D03Lists.MyReverseSpec (spec) where

import Test.Hspec
import Drill.D03Lists.MyReverse

spec :: Spec
spec = do
  describe "myReverse" $ do
    it "空リストは空リスト" $
      myReverse ([] :: [Int]) `shouldBe` []
    it "[1,2,3] -> [3,2,1]" $
      myReverse [1, 2, 3 :: Int] `shouldBe` [3, 2, 1]
    it "\"hello\" -> \"olleh\"" $
      myReverse "hello" `shouldBe` "olleh"
