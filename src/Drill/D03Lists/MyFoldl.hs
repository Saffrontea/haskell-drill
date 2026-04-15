module Drill.D03Lists.MyFoldl where

-- | 左畳み込み（foldl を使わずに実装すること）
-- 例:
--   myFoldl (+) 0 [1,2,3]      == 6
--   myFoldl (*) 1 [1,2,3,4]    == 24
--   myFoldl (flip (:)) [] [1,2,3] == [3,2,1]
myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl _ a [] = a
myFoldl f a (x:xs) =  myFoldl f (f a x) xs
-- myFoldl f a (x:xs) = let a' = f a x in a' `seq` myFoldl f a' xs
-- foldlはこれで実装できるが遅延評価のサンクの問題でseqを用いたfoldl'を使用することが推奨されている
-- foldlをfoldl'より使用するべきパターンはfが正格評価できない場合だが、その場合はfoldrを使用した方が
-- リスト全てを操作せずに短絡できる
