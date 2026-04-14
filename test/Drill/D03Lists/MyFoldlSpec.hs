module Drill.D03Lists.MyFoldlSpec (spec) where

import Test.Hspec
import Drill.D03Lists.MyFoldl

spec :: Spec
spec = do
  describe "myFoldl" $ do
    it "空リストは初期値を返す" $
      myFoldl (+) 0 ([] :: [Int]) `shouldBe` 0
    it "合計を求める" $
      myFoldl (+) 0 [1, 2, 3] `shouldBe` 6
    it "積を求める" $
      myFoldl (*) 1 [1, 2, 3, 4] `shouldBe` 24
    it "リストを逆順にする" $
      myFoldl (flip (:)) ([] :: [Int]) [1, 2, 3] `shouldBe` [3, 2, 1]
