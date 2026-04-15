module Drill.D06TypeClasses.MyOrd where

import Drill.D06TypeClasses.MyEq (Color (..))

-- | Color の Ord インスタンスを手動で実装する（Red < Green < Blue）。
-- Ord を実装するには Eq も必要なので MyEq の instance を再利用する。
-- （deriving Ord を使わないこと）
-- 例:
--   compare Red Green   == LT
--   compare Blue Blue   == EQ
--   compare Blue Red    == GT
--   Red < Green         == True
instance Ord Color where
  compare = undefined
