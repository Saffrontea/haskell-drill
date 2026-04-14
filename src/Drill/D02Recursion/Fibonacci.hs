module Drill.D02Recursion.Fibonacci where

-- | フィボナッチ数列の第n項を返す（0始まり）
-- 例:
--   fibonacci 0 == 0
--   fibonacci 1 == 1
--   fibonacci 2 == 1
--   fibonacci 7 == 13
fibonacci :: Int -> Int
fibonacci x
 | x == 0 = 0
 | x == 1 || x == 2 = 1
 | otherwise = fibonacci (x-1) + fibonacci (x-2)
 --これで正解だが、遅い
 -- Listを参照するfuctionと組み合わせてmemo化したり、
 -- 以下のように書いて正格評価にすると高速になる
 -- fibonacci x = loop x 0 1
 --   where
 --     loop 0 a !b = a
 --     loop x a b = loop (x - 1) b (a + b)
