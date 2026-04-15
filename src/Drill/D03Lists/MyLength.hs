module Drill.D03Lists.MyLength where

-- | リストの長さを返す（length を使わずに実装すること）
-- 例:
--   myLength []        == 0
--   myLength [1,2,3]   == 3
--   myLength "hello"   == 5
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
-- 使わない値は_で暗黙化できる
-- []のlengthは0なので、xsが存在せず、Pattern Matchがfailする
-- StringはCharのListであるため、Listのlengthの実装で長さを測ることができる
