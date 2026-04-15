module Drill.D06TypeClasses.MyEq where

-- | 色を表すデータ型（deriving Eq を使わないこと）
data Color = Red | Green | Blue
  deriving (Show)

-- | Color の Eq インスタンスを手動で実装する。
-- 例:
--   Red == Red      == True
--   Red == Green    == False
--   Blue /= Green   == True
instance Eq Color where
  (==) = undefined
