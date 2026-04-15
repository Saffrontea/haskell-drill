module Drill.D04Maybe.FromMaybe where

-- | Maybe 値からデフォルト値付きで取り出す。
-- Nothing の場合は第1引数のデフォルト値を返す。
-- （Data.Maybe.fromMaybe を使わずに実装すること）
-- 例:
--   fromMaybe 0 (Just 42)  == 42
--   fromMaybe 0 Nothing    == 0
--   fromMaybe "?" (Just "hi")  == "hi"
fromMaybe :: a -> Maybe a -> a
fromMaybe = undefined
