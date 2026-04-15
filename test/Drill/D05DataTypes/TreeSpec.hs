module Drill.D05DataTypes.TreeSpec (spec) where

import Test.Hspec
import Drill.D05DataTypes.Tree

spec :: Spec
spec = do
  describe "treeDepth" $ do
    it "空の木の深さは 0" $
      treeDepth (Leaf :: Tree Int) `shouldBe` 0
    it "1 段の木の深さは 1" $
      treeDepth (Node Leaf (1 :: Int) Leaf) `shouldBe` 1
    it "左に 2 段の木" $
      treeDepth (Node (Node Leaf (2 :: Int) Leaf) 1 Leaf) `shouldBe` 2
    it "左右均等な 2 段の木" $
      treeDepth (Node (Node Leaf (2 :: Int) Leaf) 1 (Node Leaf 3 Leaf)) `shouldBe` 2
