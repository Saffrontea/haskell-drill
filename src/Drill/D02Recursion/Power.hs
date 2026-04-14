module Drill.D02Recursion.Power where

-- | 累乗を再帰で実装する（^ を使わずに実装すること）
-- 例:
--   myPower 2 0 == 1
--   myPower 2 3 == 8
--   myPower 3 4 == 81
myPower :: Int -> Int -> Int
myPower x y
 | x == 0 && y == 0 = 1
 | x == 0 = 0
 | y == 0 = 1
 | otherwise = x * myPower x (y-1)
 -- そもそものtestが良くないけど0^y=0 (y>0)なのでx==0のガードは必要
 -- 同様に0^0は数学的には1とされることが一般的なので先にガードする
 -- 最後にy==0になれば*1になるので、y=1のガードは不要
