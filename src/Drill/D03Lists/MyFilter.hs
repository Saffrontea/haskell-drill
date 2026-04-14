module Drill.D03Lists.MyFilter where

-- | 条件を満たす要素だけを残す（filter を使わずに実装すること）
-- 例:
--   myFilter even [1..6]    == [2,4,6]
--   myFilter (>3) [1..5]    == [4,5]
--   myFilter null [[],[1]]  == [[]]
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter = undefined
