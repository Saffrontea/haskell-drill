module Drill.D05DataTypes.Perimeter where

import Drill.D05DataTypes.Shape (Shape (..))

-- | 図形の周の長さを返す。
-- 例:
--   perimeter (Circle 1.0)         ≒ 6.283185...  (= 2*pi*r)
--   perimeter (Rectangle 3.0 4.0) == 14.0          (= 2*(w+h))
perimeter :: Shape -> Double
perimeter = undefined
