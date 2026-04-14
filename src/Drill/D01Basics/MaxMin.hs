module Drill.D01Basics.MaxMin where

-- | 2つの整数のうち大きい方を返す（max を使わずに実装すること）
-- 例:
--   myMax 3 5 == 5
--   myMax 7 2 == 7
--   myMax 4 4 == 4
myMax :: Int -> Int -> Int
myMax x y | x>y = x
 | otherwise = y
 -- Ord type classが比較を提供する。IntはOrdを実装しているから大小を比較可能
 -- OrdはEqのsubclassであり、Eqが示せることを前提とする

-- | 2つの整数のうち小さい方を返す（min を使わずに実装すること）
-- 例:
--   myMin 3 5 == 3
--   myMin 7 2 == 2
--   myMin 4 4 == 4
myMin :: Int -> Int -> Int
myMin x y | compare x y == GT = y
 | otherwise = x
 -- compareはOrd classのmethodであり、Ordering = LT|GT|EQを返すdata(代数的データ型)
 -- 他の言語で言うEnumはTermとして取りえるデータ型を示すことで表せる
