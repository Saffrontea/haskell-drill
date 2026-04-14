module Drill.D03Lists.MyMapSpec (spec) where

import Test.Hspec
import Drill.D03Lists.MyMap

spec :: Spec
spec = do
  describe "myMap" $ do
    it "空リストは空リスト" $
      myMap (+1) ([] :: [Int]) `shouldBe` []
    it "各要素に (+1) を適用" $
      myMap (+1) [1, 2, 3] `shouldBe` [2, 3, 4]
    it "各要素に (*2) を適用" $
      myMap (*2) [1, 2, 3] `shouldBe` [2, 4, 6]
    it "Bool へ変換" $
      myMap even [1, 2, 3, 4] `shouldBe` [False, True, False, True]
