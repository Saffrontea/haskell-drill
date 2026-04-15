module Drill.D05DataTypes.Tree where

-- | 二分木を表す再帰的データ型
--   Leaf       : 空の節
--   Node l x r : 左部分木 l 、値 x 、右部分木 r
data Tree a
  = Leaf
  | Node (Tree a) a (Tree a)
  deriving (Show, Eq)

-- | 木の深さ（高さ）を返す。空の木は 0。
-- 例:
--   treeDepth Leaf                            == 0
--   treeDepth (Node Leaf 1 Leaf)              == 1
--   treeDepth (Node (Node Leaf 2 Leaf) 1 Leaf) == 2
treeDepth :: Tree a -> Int
treeDepth = undefined
