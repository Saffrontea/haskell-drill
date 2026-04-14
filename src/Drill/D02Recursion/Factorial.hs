module Drill.D02Recursion.Factorial where

-- | 階乗を再帰で実装する（product を使わずに実装すること）
-- 例:
--   factorial 0 == 1
--   factorial 1 == 1
--   factorial 5 == 120
factorial :: Int -> Int
factorial fact
 | fact == 0 || fact == 1 = 1
 | otherwise = fact * factorial(fact - 1)
 -- Haskellのブール代数演算子は&&,||
 -- booleanに対するfunctionとしてnot,or,and,all,anyが実装されている
 -- 再帰の実装方法自体は単純
