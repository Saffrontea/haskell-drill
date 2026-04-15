module Drill.D03Lists.MyMap where

-- | リストの各要素に関数を適用する（map を使わずに実装すること）
-- 例:
--   myMap (+1) [1,2,3]    == [2,3,4]
--   myMap (*2) [1,2,3]    == [2,4,6]
--   myMap even [1,2,3,4]  == [False,True,False,True]
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs
-- 特にコメントすることはないが、mapは基本形の操作なので、簡単に実装できる
