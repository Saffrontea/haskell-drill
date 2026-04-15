module Drill.D04Maybe.CatMaybes where

-- | Maybe のリストから Nothing を除き、Just の中身だけを集めたリストを返す。
-- （Data.Maybe.catMaybes を使わずに実装すること）
-- 例:
--   catMaybes [Just 1, Nothing, Just 3]        == [1, 3]
--   catMaybes [Nothing, Nothing]               == []
--   catMaybes [Just "a", Just "b", Nothing]    == ["a", "b"]
catMaybes :: [Maybe a] -> [a]
catMaybes = undefined
