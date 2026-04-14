module Drill.D02Recursion.MySum where

-- | リストの合計を再帰で求める（sum を使わずに実装すること）
-- 例:
--   mySum []        == 0
--   mySum [1,2,3]   == 6
--   mySum [1..100]  == 5050
mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs
-- (x:xs)でx=先頭の要素,xs=それ以外のListにできる
-- (x:y:xs)のようにすることで複数値もできる
-- sumは実際にはfoldlの畳み込みで実装できる
-- mySum list = foldl (+) 0 list
