module Drill.D05DataTypes.TreeToListSpec (spec) where

import Test.Hspec
import Drill.D05DataTypes.Tree (Tree (..))
import Drill.D05DataTypes.TreeToList

spec :: Spec
spec = do
  describe "treeToList" $ do
    it "空の木は空リスト" $
      treeToList (Leaf :: Tree Int) `shouldBe` []
    it "単一要素の木" $
      treeToList (Node Leaf (1 :: Int) Leaf) `shouldBe` [1]
    it "中順走査（左→根→右）" $
      treeToList (Node (Node Leaf (1 :: Int) Leaf) 2 (Node Leaf 3 Leaf))
        `shouldBe` [1, 2, 3]
    it "BST は昇順になる" $
      treeToList
        (Node
          (Node Leaf (1 :: Int) Leaf)
          3
          (Node (Node Leaf 4 Leaf) 5 Leaf))
        `shouldBe` [1, 3, 4, 5]
