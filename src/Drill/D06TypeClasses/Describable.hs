module Drill.D06TypeClasses.Describable where

import Drill.D05DataTypes.Shape (Shape (..))

-- | 値を文字列で説明できることを表す型クラス
class Describable a where
  describe :: a -> String

-- | Shape に対して Describable インスタンスを実装する。
-- 例:
--   describe (Circle 3.0)          == "Circle with radius 3.0"
--   describe (Rectangle 4.0 5.0)   == "Rectangle with width 4.0 and height 5.0"
instance Describable Shape where
  describe = undefined
