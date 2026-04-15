module Drill.D04Maybe.SafeHead where

-- | リストの先頭要素を安全に取り出す。空リストの場合は Nothing を返す。
-- （head を使わずに実装すること）
-- 例:
--   safeHead [1,2,3]  == Just 1
--   safeHead "hello"  == Just 'h'
--   safeHead []       == Nothing
safeHead :: [a] -> Maybe a
safeHead = undefined
