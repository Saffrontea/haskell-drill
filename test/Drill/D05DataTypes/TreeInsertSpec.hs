module Drill.D05DataTypes.TreeInsertSpec (spec) where

import Test.Hspec
import Drill.D05DataTypes.Tree (Tree (..))
import Drill.D05DataTypes.TreeInsert

spec :: Spec
spec = do
  describe "treeInsert" $ do
    it "空の木への挿入" $
      treeInsert (3 :: Int) Leaf `shouldBe` Node Leaf 3 Leaf
    it "小さい値は左に挿入" $
      treeInsert (2 :: Int) (Node Leaf 3 Leaf)
        `shouldBe` Node (Node Leaf 2 Leaf) 3 Leaf
    it "大きい値は右に挿入" $
      treeInsert (5 :: Int) (Node Leaf 3 Leaf)
        `shouldBe` Node Leaf 3 (Node Leaf 5 Leaf)
    it "重複した値は変化なし" $
      treeInsert (3 :: Int) (Node Leaf 3 Leaf)
        `shouldBe` Node Leaf 3 Leaf
