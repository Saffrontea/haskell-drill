module Drill.D01Basics.Abs where

-- | 絶対値を返す（abs を使わずに実装すること）
-- 例:
--   myAbs 5    == 5
--   myAbs (-3) == 3
--   myAbs 0    == 0
myAbs :: Int -> Int
myAbs
 x | x<0 = -x
 | otherwise = x
-- otherwiseを用いると関数のマッチパターン以外のデフォルトの式を定められる
