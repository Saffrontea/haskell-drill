module Drill.D04Maybe.SafeDiv where

-- | 安全な整数除算。除数が 0 の場合は Nothing を返す。
-- （div を使っても構いませんが、0 除算のガードを自分で書くこと）
-- 例:
--   safeDiv 10 2  == Just 5
--   safeDiv 7  3  == Just 2
--   safeDiv 10 0  == Nothing
safeDiv :: Int -> Int -> Maybe Int
safeDiv = undefined
