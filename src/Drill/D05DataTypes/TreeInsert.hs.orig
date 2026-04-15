module Drill.D05DataTypes.TreeInsert where

import Drill.D05DataTypes.Tree (Tree (..))

-- | 二分探索木に値を挿入する。
-- 既に同じ値が存在する場合は変更なし。
-- 例:
--   treeInsert 3 Leaf                      == Node Leaf 3 Leaf
--   treeInsert 2 (Node Leaf 3 Leaf)        == Node (Node Leaf 2 Leaf) 3 Leaf
--   treeInsert 5 (Node Leaf 3 Leaf)        == Node Leaf 3 (Node Leaf 5 Leaf)
--   treeInsert 3 (Node Leaf 3 Leaf)        == Node Leaf 3 Leaf  -- 重複は無視
treeInsert :: Ord a => a -> Tree a -> Tree a
treeInsert = undefined
