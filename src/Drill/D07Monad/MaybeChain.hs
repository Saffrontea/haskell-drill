module Drill.D07Monad.MaybeChain where

import Drill.D04Maybe.SafeDiv (safeDiv)

-- | safeDiv を do 記法で 2 回連鎖させる。
-- a `safeDiv` b の結果を、さらに c で割る。
-- いずれかの除算が失敗（0 除算）したら Nothing を返す。
--
-- ヒント: do 記法（または >>= ）を使って Maybe を連鎖させる
--
-- 例:
--   safeDivTwice 100 5 2   == Just 10   -- 100/5=20, 20/2=10
--   safeDivTwice 100 0 2   == Nothing   -- 0 除算
--   safeDivTwice 100 5 0   == Nothing   -- 0 除算
safeDivTwice :: Int -> Int -> Int -> Maybe Int
safeDivTwice = undefined
