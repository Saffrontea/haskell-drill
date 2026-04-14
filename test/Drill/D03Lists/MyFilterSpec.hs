module Drill.D03Lists.MyFilterSpec (spec) where

import Test.Hspec
import Drill.D03Lists.MyFilter

spec :: Spec
spec = do
  describe "myFilter" $ do
    it "空リストは空リスト" $
      myFilter even ([] :: [Int]) `shouldBe` []
    it "偶数のみ抽出" $
      myFilter even [1 .. 6] `shouldBe` [2, 4, 6]
    it "3より大きい要素のみ抽出" $
      myFilter (> 3) [1 .. 5] `shouldBe` [4, 5]
    it "条件を全て満たさない場合は空リスト" $
      myFilter (> 10) [1 .. 5] `shouldBe` []
